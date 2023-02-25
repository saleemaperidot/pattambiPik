import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pikit/application/NearMeHotelList/promoslider/promoslider_bloc.dart';
import 'package:pikit/constants/constants.dart';
import 'package:pikit/domain/apiEndPoints/apis.dart';
import 'package:pikit/presentation/NearMe/hotel_list_card.dart';
import 'package:pikit/presentation/NearMe/near_hotel_dishes_screen.dart';

class NearMeScreen extends StatelessWidget {
  const NearMeScreen({super.key});

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PromoSliderWidget(dimension: _dimension),
            const Padding(
              padding: EdgeInsets.all(8),
              child: CupertinoSearchTextField(
                backgroundColor: pikitWhite,
                placeholder: "Search for stories or items...",
              ),
            ),
            Container(
              color: pikitWhite,
              child: SizedBox(
                child: ListView.separated(
                  // padding: EdgeInsets.all(10),
                  separatorBuilder: (context, index) => SizedBox(
                    height: 0,
                  ),
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => NearHotelDishesScreen(),
                        ));
                      },
                      child: HotelListCard(
                        hotelName: "hotelName",
                        hotelDishesList: [],
                        Rating: 5,
                        time: 30,
                        rate: 200.50,
                      ),
                    );
                  },
                  itemCount: 100,
                ),
              ),
            ),
          ],
        ),
      )),
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
          print("presentation");
          print(state);
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
                      print("state$state");
                      final slider = state.promoSlide[index];
                      print("slider$slider");
                      if (slider == null) {
                        return SizedBox();
                      }
                      final sliderImage = slider.toJson();
                      final imageUrl = slider.data!.image;
                      print("image$sliderImage");
                      print("umageUrl$imageUrl");
                      return Card(
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
                                image: NetworkImage(Apis.BASE_URL + imageUrl!),
                                // AssetImage("assets/images/offer1.jpg"),
                              ),
                            ),
                          ));
                    },
                  ),
          );
        },
      ),
    );
  }
}
