import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:developer';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pikit/application/NearMeHotelList/promoslider/promoslider_bloc.dart';
import 'package:pikit/application/NearMeHotelList/restaraunt/allrestaraunts_bloc.dart';
import 'package:pikit/application/search/bloc/search_bloc.dart';
import 'package:pikit/constants/constants.dart';
import 'package:pikit/core/debounce.dart';
import 'package:pikit/domain/apiEndPoints/apis.dart';
import 'package:pikit/presentation/NearMe/hotel_list_card.dart';
import 'package:pikit/presentation/NearMe/near_hotel_dishes_screen.dart';
import 'package:pikit/presentation/NearMe/widgets/productdetails_screen.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class NearMeScreen extends StatelessWidget {
  NearMeScreen({super.key});
  final _debouncer = Debouncer(milliseconds: 500);
  ValueNotifier searchNotifier = ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    final _dimension = MediaQuery.of(context).size;
    return Scaffold(
      // backgroundColor: pikitGrey,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0.5,
        //backgroundColor: pikitWhite,
        actions: [
          IconButton(
              // padding: EdgeInsets.only(left: 20),
              onPressed: () {},
              icon: Icon(
                pikitChervonRightAppBarRight,
                color: pikitGreen,
              ))
        ],
        leadingWidth: 500,

        leading: Padding(
          padding: EdgeInsets.symmetric(vertical: 30),
          child: Container(
            // height: 5,
            child: Image(
              //height: 4,
              fit: BoxFit.cover,
              image: NetworkImage(
                  "https://pikit.in/assets/img/logos/logo.png?v=1660055094XYXWI"),
            ),
            // ),
          ),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PromoSliderWidget(dimension: _dimension),
              Padding(
                padding: EdgeInsets.all(8),
                child: CupertinoSearchTextField(
                  onChanged: (value) {
                    if (value.isEmpty) {
                      return;
                    }
                    // BlocProvider.of<SearchBloc>(context)
                    //     .add(SearchMovie(movieQuery: value));
                    _debouncer.run(() {
                      BlocProvider.of<AllrestarauntsBloc>(context).add(
                          AllrestarauntsEvent.filterRestraunts(query: value));
                    });
                    searchNotifier.value = 1;
                  },
                  backgroundColor: pikitWhite,
                  placeholder: "Search for stories or items...",
                ),
              ),
              RestaurantsList(),
            ],
          ),
        ),
      )),
    );
  }
}

class RestaurantsList extends StatelessWidget {
  const RestaurantsList({Key? key, this.searchKey}) : super(key: key);

  final String? searchKey;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<AllrestarauntsBloc>(context)
          .add(const AllrestarauntsEvent.loadRestaraunts());
    });
    return BlocBuilder<AllrestarauntsBloc, AllrestarauntsState>(
        builder: (context, state) {
      print("state in presentation $state");

      return state.searchRestraunt.isEmpty
          ? Container(
              //width: double.infinity,
              color: pikitWhite,
              child: SizedBox(
                // width: double.infinity,
                child: ListView.separated(
                  // padding: EdgeInsets.all(10),
                  separatorBuilder: (context, index) => SizedBox(
                    height: 0,
                  ),
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemBuilder: (context, index) {
                    final restraunt = state.restaurantList[index];
                    print(restraunt.name);
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => NearHotelDishesScreen(
                            restId: restraunt.id!,
                            restrauntImage: restraunt.image!,
                            restrauntName: restraunt.name!,
                            rate: restraunt.priceRange!,
                            rating: restraunt.rating!,
                            time: restraunt.deliveryTime!,
                            isActive: restraunt.isActive!,
                            slug: restraunt.slug!,
                            description: restraunt.description!,
                          ),
                        ));
                      },
                      child: ColorFiltered(
                        colorFilter: restraunt.isActive == 1
                            ? ColorFilter.mode(
                                Colors.transparent, BlendMode.multiply)
                            : ColorFilter.mode(
                                Colors.grey, BlendMode.saturation),
                        child: HotelListCard(
                          hotelName: restraunt.name == null
                              ? "not defined"
                              : restraunt.name!,
                          hotelDishesList: restraunt.description!,
                          Rating: restraunt.priceRange!,
                          time: restraunt.deliveryTime!,
                          rate: restraunt.rating!,
                          imageUrl: restraunt.image!,
                          isActive: restraunt.isActive!,
                        ),
                      ),
                    );
                  },
                  itemCount: state.restaurantList.length,
                ),
              ),
            )
          : RestrauntSearch();
    });
  }
}

class RestrauntSearch extends StatelessWidget {
  const RestrauntSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AllrestarauntsBloc, AllrestarauntsState>(
      builder: (context, state) {
        return state.searchRestraunt.isNotEmpty
            ? Container(
                //width: double.infinity,
                color: pikitWhite,
                child: SizedBox(
                  // width: double.infinity,
                  child: ListView.separated(
                    // padding: EdgeInsets.all(10),
                    separatorBuilder: (context, index) => SizedBox(
                      height: 0,
                    ),
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    itemBuilder: (context, index) {
                      final restraunt = state.searchRestraunt[index];
                      print(restraunt.name);
                      return GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => NearHotelDishesScreen(
                              restrauntImage: restraunt.image!,
                              restrauntName: restraunt.name!,
                              rate: restraunt.priceRange!,
                              rating: restraunt.rating!,
                              time: restraunt.deliveryTime!,
                              isActive: restraunt.isActive!,
                              slug: restraunt.slug!,
                              description: restraunt.description!,
                              restId: restraunt.id!,
                            ),
                          ));
                        },
                        child: ColorFiltered(
                          colorFilter: restraunt.isActive == 1
                              ? ColorFilter.mode(
                                  Colors.transparent, BlendMode.multiply)
                              : ColorFilter.mode(
                                  Colors.grey, BlendMode.saturation),
                          child: HotelListCard(
                            hotelName: restraunt.name == null
                                ? "not defined"
                                : restraunt.name!,
                            hotelDishesList: restraunt.description!,
                            Rating: restraunt.priceRange!,
                            time: restraunt.deliveryTime!,
                            rate: restraunt.rating!,
                            imageUrl: restraunt.image!,
                            isActive: restraunt.isActive!,
                          ),
                        ),
                      );
                    },
                    itemCount: state.searchRestraunt.length,
                  ),
                ),
              )
            : RestaurantsList();
      },
    );
  }
}

class PromoSliderWidget extends StatelessWidget {
  const PromoSliderWidget({
    Key? key,
    required Size dimension,
  })  : _dimension = dimension,
        super(key: key);

  final Size _dimension;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<PromosliderBloc>(context).add(const LoadPromoslider());
    });

    return Padding(
      padding: EdgeInsets.all(8),
      child: BlocBuilder<PromosliderBloc, PromosliderState>(
        builder: (context, state) {
          // print("presentation");
          // log("promo-state${state.promoSlide[1].url}");
          return Container(
            // color: pikitGreen,

            height: _dimension.height * 0.20,
            child: state.isloading
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: state.promoSlide.length,
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 5,
                      );
                    },
                    itemBuilder: (context, index) {
                      //  print("state$state");
                      final slider = state.promoSlide[index];
                      // print("slider$slider");
                      // if (slider == null) {
                      //   return const SizedBox();
                      // }
                      final sliderImage = slider.toJson();
                      final imageUrl = slider.data!.image;
                      // print("image$sliderImage");
                      // print("umageUrl$imageUrl");
                      return GestureDetector(
                        onTap: () {
                          index == 0
                              ? openWatsApp(slider.url!, context)
                              : Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => ProductDetailsScreen(
                                    isActive: 1,
                                    productImage: "image",
                                    productName: "name",
                                    restrauntImage: imageUrl,
                                    restrauntName: "hotelName",
                                    description: "hotelDishesList",
                                    rating: "Rating",
                                    time: "time",
                                    rate: "rate",
                                    slug: "slug",
                                  ),
                                ));
                        },
                        child: Card(
                            elevation: 10,
                            shadowColor: pikitBlack,
                            //  color: Colors.amber,
                            child: Container(
                              //  color: Colors.blueAccent,
                              width: _dimension.width * 0.40,
                              height: _dimension.height * 0.20,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image:
                                      NetworkImage(Apis.BASE_URL + imageUrl!),
                                  // AssetImage("assets/images/offer1.jpg"),
                                ),
                              ),
                            )),
                      );
                    },
                  ),
          );
        },
      ),
    );
  }
}

void openWatsApp(String url, BuildContext ctx) async {
  String whatsappURl_android = url;
  final String rrlmess = url;
  print(whatsappURl_android);
  var encoded = Uri.encodeFull(url);
  final uri = Uri.parse(encoded);
  await launchUrl(uri);
}
