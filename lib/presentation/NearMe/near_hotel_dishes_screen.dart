import 'dart:developer';
import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pikit/application/Items/items_bloc.dart';
import 'package:pikit/application/NearMeHotelList/restaraunt/allrestaraunts_bloc.dart';
import 'package:pikit/application/place_order/place_order_bloc.dart';

import 'package:pikit/constants/constants.dart';
import 'package:pikit/domain/apiEndPoints/apis.dart';
import 'package:pikit/domain/data/order_place/order.dart';

import 'package:pikit/domain/data/products/Model/item_model/item_model.dart';
import 'package:pikit/presentation/Explore/explore_screen.dart';

import 'package:pikit/presentation/NearMe/hotel_list_card.dart';
import 'package:pikit/presentation/NearMe/widgets/productdetails_screen.dart';
import 'package:pikit/presentation/bottom_navigation_widget.dart';
import 'package:pikit/presentation/cart_screen/cart_screen.dart';

import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

int selectIndex = 0;
int index_range_builder = 0;
final ItemScrollController itemScrollController = ItemScrollController();

class NearHotelDishesScreen extends StatefulWidget {
  const NearHotelDishesScreen(
      {super.key,
      required this.restrauntImage,
      required this.restrauntName,
      required this.rate,
      required this.rating,
      required this.time,
      required this.isActive,
      required this.slug,
      required this.description,
      required this.restId});
  final int restId;
  final String restrauntImage;
  final String restrauntName;
  final String rating;
  final String rate;
  final String time;
  final int isActive;
  final String slug;
  final String description;
  @override
  State<NearHotelDishesScreen> createState() => _NearHotelDishesScreenState();
}

class _NearHotelDishesScreenState extends State<NearHotelDishesScreen> {
  ValueNotifier scrollNotifier = ValueNotifier(true);

  //ValueNotifier categoryNotifier = ValueNotifier("");
  // ValueNotifier _listOfItemsNotifier = ValueNotifier([]);
  final AutoScrollController autoScrollController = AutoScrollController();

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<ItemsBloc>(context)
          .add(ItemsEvent.loadRestrauntcategoryItems(slug: widget.slug));
    });

    //  WidgetsBinding.instance.addPostFrameCallback((_) {
    //    BlocProvider.of<ItemsBloc>(context)
    //        .add(ItemsEvent.categorySubCategoryItems(slug: widget.slug));
    //  });

    print(widget.restrauntImage + widget.restrauntName);
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        label: Text("Menu"),
        onPressed: () {
          alertDialogue(context);
        },
        icon: Icon(pikitMenuIcon),
      ),
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.green,
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
            navigationNotifier.value = 0;
          },
          icon: Icon(Icons.arrow_back_ios),
          color: pikitBlue,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(5),
            child: IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => CartScreen(),
                  ));
                },
                icon: Stack(children: [
                  Icon(
                    Icons.shopping_bag_outlined,
                    size: 40,
                  ),
                  BlocBuilder<PlaceOrderBloc, PlaceOrderState>(
                    builder: (context, state) {
                      return Badge(
                        badgeContent: Text(state.quantity.toString()),
                      );
                    },
                  )
                ])),
          )
          // IconButton(onPressed: () {}, icon: Icon(Icons.home_outlined))
        ],
      ),
      // backgroundColor: pikitWhite,
      body: SafeArea(
          child: ValueListenableBuilder(
              valueListenable: scrollNotifier,
              builder: (context, value, _) {
                return NotificationListener<UserScrollNotification>(
                  onNotification: ((notification) {
                    final ScrollDirection direction = notification.direction;
                    print(direction);
                    if (direction == ScrollDirection.reverse) {
                      scrollNotifier.value = true;
                    } else {
                      scrollNotifier.value = false;
                    }
                    return true;
                  }),
                  child: CustomScrollView(
                    controller: autoScrollController,
                    slivers: [
                      SliverList(
                        delegate: SliverChildListDelegate([
                          HotelListCard(
                            isActive: widget.isActive,
                            imageUrl: widget.restrauntImage,
                            hotelName: widget.restrauntName,
                            hotelDishesList: widget.description,
                            Rating: widget.rating,
                            time: widget.time,
                            rate: widget.rate,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CupertinoSearchTextField(
                              placeholder: "Search for items...",
                              decoration: BoxDecoration(
                                  color: pikitWhite,
                                  border: Border.all(color: pikitBaseGrey),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          //recommentation widget
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("RECOMENTATION"),
                          ),
                          RecomendedFoodMenu(
                            isActive: widget.isActive,
                            imageUrl: widget.restrauntImage,
                            hotelName: widget.restrauntName,
                            hotelDishesList: widget.description,
                            Rating: widget.rating,
                            time: widget.time,
                            rate: widget.rate,
                            slug: widget.slug,
                          ),
                        ]),
                      ),
                      BlocBuilder<ItemsBloc, ItemsState>(
                        builder: (context, state) {
                          return SliverList(
                            delegate: SliverChildBuilderDelegate(
                              childCount: state.items.length,
                              // addAutomaticKeepAlives: false,
                              (context, index) {
                                final productofrestraunts = state.items;
                                final no_of_items = state.items.length;
                                index_range_builder = no_of_items;
                                final fistRest =
                                    productofrestraunts[index] ?? [];

                                List<ItemModel> items_in_single_restraunt = [];

                                fistRest.forEach((e) {
                                  ItemModel item = ItemModel.fromJson(e);

                                  items_in_single_restraunt.add(item);
                                });

                                return AutoScrollTag(
                                  key: ValueKey(index),
                                  controller: autoScrollController,
                                  index: index,
                                  child: ExpansionTile(
                                    tilePadding: EdgeInsets.all(10),
                                    childrenPadding: EdgeInsets.only(top: 10),
                                    initiallyExpanded: true,
                                    title: Text(items_in_single_restraunt[0]
                                                .categoryName ??
                                            ""
                                        //state.items[index].categoryName!
                                        // "$Key"
                                        //  "tittle$index",
                                        ),
                                    children: [
                                      subMenu(
                                        restrauntId: widget.restId,
                                        isActive: widget.isActive,
                                        RimageUrl: widget.restrauntImage,
                                        hotelName: widget.restrauntName,
                                        hotelDishesList: widget.description,
                                        Rating: widget.rating,
                                        time: widget.time,
                                        rate: widget.rate,
                                        foodItems: fistRest,
                                      )
                                    ],
                                  ),
                                );
                              },
                            ),
                          );
                        },
                      )
                    ],
                  ),
                );
              })),
    );
  }

  Future<dynamic> alertDialogue(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return BlocBuilder<ItemsBloc, ItemsState>(
          builder: (context, state) {
            final productofrestraunts = state.items;
            final no_of_items = state.items.length;
            List<String> Listcategoryname = [];
            print("no_of_items${state.items}");
            var categoryname = <String>{};
            for (int i = 0; i < no_of_items; i++) {
              final fistRest = productofrestraunts[i];

//categoryname.add('something');
              //  String categoryname;
              print("alertdilogue$fistRest");
              fistRest.forEach((e) {
                ItemModel item = ItemModel.fromJson(e);
                print("foreach$item");
                // categoryname = item.categoryName!;

                categoryname.add(item.categoryName!);
              });
            }
            final List<String> listofitem = categoryname.toList();

            print("listofitem$listofitem");

            List<ItemModel> items_in_single_restraunt = [];
            //   print("fistRest$fistRest");

            return AlertDialog(
              content: Container(
                width: double.maxFinite,
                child: ListView.builder(
                  itemCount: listofitem.length,
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(listofitem[index]),
                      onTap: () {
                        Navigator.pop(context, index);
                        print("object");
                        setState(() {
                          autoScrollController.scrollToIndex(index,
                              preferPosition: AutoScrollPosition.begin);
                          //Scrollable.ensureVisible(_state.currentContext(index)!);
                          //autoScrollController.jumpTo(index.toDouble());
                          // print("object1");
                          //itemScrollController.jumpTo(index: index);
                          selectIndex = index;
                        });

                        print(index);
                      },
                    );
                  },
                ),
              ),
            );
          },
        );
      },
    );
  }
}

class subMenu extends StatelessWidget {
  const subMenu(
      {Key? key,
      required this.foodItems,
      required this.hotelName,
      required this.hotelDishesList,
      required this.Rating,
      required this.time,
      required this.rate,
      required this.RimageUrl,
      required this.isActive,
      required this.restrauntId});
  final int restrauntId;
  final int isActive;
  final String hotelName;
  final String hotelDishesList;
  final String Rating;
  final String time;
  final String rate;
  final String RimageUrl;

  final dynamic foodItems;
  @override
  Widget build(BuildContext context) {
    final _dimension = MediaQuery.of(context).size;
    final rec = (foodItems as List).map((e) => ItemModel.fromJson(e)).toList();
    log("foodList$foodItems");

    return Container(
        child: rec.length > 0
            ? ListView.builder(
                // semanticChildCount: 0,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemCount: rec.length,
                itemBuilder: (context, index) {
                  final item = rec[index];
                  final imageUrl = rec[index].image ?? "";
                  final itemName = rec[index].name ?? "";
                  item.id;
                  item.isActive;
                  item.itemCategoryId;
                  item.isVeg;
                  item.isRecommended;
                  item.addonCategories;
                  item.categoryName;
                  item.itemCategoryId;
                  item.oldPrice;
                  item.price;
                  item.restaurantId;

                  return Padding(
                    padding: const EdgeInsets.only(
                        //top: 30,
                        bottom: 20),
                    child: Stack(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Stack(children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => ProductDetailsScreen(
                                      isActive: isActive,
                                      productImage: imageUrl,
                                      productName: itemName,
                                      restrauntImage: RimageUrl,
                                      restrauntName: hotelName,
                                      description: hotelDishesList,
                                      rating: Rating,
                                      time: time,
                                      rate: rate,
                                      slug: "",
                                    ),
                                  ));
                                },
                                child: Container(
                                  //  padding: EdgeInsets.only(top: 300, bottom: 10),
                                  width: _dimension.width * 0.34,
                                  //   118,
                                  height: _dimension.height * .18,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      // image: AssetImage("assets/images/biri.jpeg")
                                      image: NetworkImage(
                                          Apis.BASE_URL + imageUrl),
                                    ),
                                  ),
                                ),
                              ),
                              BlocBuilder<PlaceOrderBloc, PlaceOrderState>(
                                builder: (context, state) {
                                  int count = 0;
                                  List<Order> cart = state.order;
                                  for (int i = 0; i < cart.length; i++) {
                                    if (cart[i].id == item.id) {
                                      count = cart[i].quantity!;
                                    }
                                  }
                                  // final count = state.order[1].quantity;
                                  return Badge(
                                    stackFit: StackFit.loose,
                                    badgeStyle:
                                        BadgeStyle(badgeColor: Colors.green),
                                    badgeContent: Text(
                                        (count == 0 ? 0 : count).toString()),
                                  );
                                },
                              )
                            ]),
                            foodDiscription(
                                itemName: itemName, price: item.price),
                            kwidth,
                            addOrRemoveButtons(
                              ReId: restrauntId,
                              Rating: rate,
                              time: time,
                              RimageUrl: RimageUrl,
                              hotelDishesList: hotelDishesList,
                              hotelName: hotelName,
                              rate: rate,
                              id: item.id,
                              image: item.image,
                              name: item.name,
                              desc: item.desc,
                              isActive: item.isActive,
                              addonCategories: [],
                              isNew: item.isNew,
                              isPopular: item.isPopular,
                              isRecommended: item.isRecommended,
                              isVeg: item.isVeg,
                              itemCategoryId: 0,
                              oldPrice: item.oldPrice,
                              price: item.price,
                              placeholderImage: "",
                              restaurantId: item.restaurantId,
                              Selectedaddons: [],
                            )
                          ],
                        ),
                      ],
                    ),
                  );
                },
              )
            : SizedBox(
                height: 10,
              ));
  }
}

List<Order> cart = [];
List idCheck = [];

class addOrRemoveButtons extends StatelessWidget {
  addOrRemoveButtons(
      {Key? key,
      //required this.state,
      required this.ReId,
      required this.Rating,
      required this.RimageUrl,
      required this.hotelName,
      required this.hotelDishesList,
      required this.isActive,
      required this.rate,
      required this.time,
      required this.id,
      required this.image,
      required this.name,
      required this.desc,
      required this.Selectedaddons,
      required this.addonCategories,
      required this.isNew,
      required this.isPopular,
      required this.isRecommended,
      required this.isVeg,
      required this.itemCategoryId,
      required this.oldPrice,
      required this.placeholderImage,
      required this.price,
      required this.restaurantId})
      : super(key: key);

  final ReId;
  final id;
  final image;
  final name;
  final desc;
  final isActive;
  final addonCategories;
  final isNew;
  final isPopular;
  final isRecommended;
  final isVeg;
  final itemCategoryId;
  final oldPrice;
  final price;
  final placeholderImage;

  final restaurantId;
  final Selectedaddons;

  final String hotelName;
  final String hotelDishesList;
  final String Rating;
  final String time;
  final String rate;
  final String RimageUrl;
  int quantity = 0;
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<PlaceOrderBloc>(context)
          .add(PlaceOrderEvent.getCartItems());
    });
    final order = Order(
      quantity: 1,
      id: id,
      image: image,
      name: name,
      desc: desc,
      isActive: isActive,
      addonCategories: [],
      isNew: isNew,
      isPopular: isPopular,
      isRecommended: isRecommended,
      isVeg: isVeg,
      itemCategoryId: 0,
      oldPrice: oldPrice,
      price: price,
      placeholderImage: "",
      restaurantId: restaurantId,
      selectedaddons: [],
    );
    return BlocBuilder<PlaceOrderBloc, PlaceOrderState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            OutlinedButton(
              onPressed: () {
                print("state.order${state.order}");
                final cartState = state.order;
                if (cartState.isEmpty) {
                  print("nothing to remove");
                }
                if (cartState.any((element) => element.id == order.id)) {
                  for (int i = 0; i < cartState.length; i++) {
                    if (cartState[i].quantity == 1) {
                      cart.removeAt(i);
                      BlocProvider.of<PlaceOrderBloc>(context)
                          .add(PlaceOrderEvent.removeItem(
                        order: cartState,
                      ));
                    } else {
                      if (cartState[i].id == order.id) {
                        cart[i].quantity = cart[i].quantity! - 1;
                        BlocProvider.of<PlaceOrderBloc>(context)
                            .add(PlaceOrderEvent.removeItem(
                          order: cartState,
                        ));
                      }
                    }
                  }
                }

                // if (cart.isEmpty) {
                //   showDialog(
                //     context: context,
                //     builder: (context) {
                //       return SnackBar(content: Text("Nothing to remove"));
                //     },
                //   );
                // } else if (cart.any((element) => element.quantity == 0)) {
                //   print("empty");
                // } else if (cart
                //     .any((element) => element.id == order.id)) {
                //   for (int i = 0; i < cart.length; i++) {
                //     if (cart[i].quantity == 0) {
                //       cart.removeAt(i);
                //     } else if (cart[i].quantity == null ||
                //         cart[i].quantity == 1) {
                //       cart.removeWhere(
                //           (element) => element.quantity == 1);
                //     } else if (cart[i].quantity != 0) {
                //       // cart[i].quantity ?? "";
                //       cart[i].id == order.id
                //           ? cart[i].quantity = cart[i].quantity! - 1
                //           : null;
                //     }
                //   }
                // } else if (cart.any((element) =>
                //     element.restaurantId != order.restaurantId)) {
                //   //  cart.clear();
                //   //  BlocProvider.of<PlaceOrderBloc>(context)
                //   //     .add(PlaceOrderEvent.initialized());

                //   print("Nothing to remove from this restraunt");
                //   //  cart.add(order);
                // } else {
                //   //   cart.add(order);
                // }

                print(cart.indexOf(order));
                print(order.quantity);
              },
              child: Text("-"),
            ),
            kwidth,
            OutlinedButton(
              child: Text("+"),
              onPressed: () {
                if (cart.isEmpty) {
                  // order.quantity = order.quantity! + 1;
                  cart.add(order);
                } else if (cart.any((element) => element.id == order.id)) {
                  for (int i = 0; i < cart.length; i++) {
                    cart[i].id == order.id
                        ? cart[i].quantity = cart[i].quantity! + 1
                        : cart[i].quantity;
                  }
                } else if (cart.any(
                    (element) => element.restaurantId != order.restaurantId)) {
                  cart.clear();
                  BlocProvider.of<PlaceOrderBloc>(context)
                      .add(PlaceOrderEvent.initialized());

                  print("items from current restraunt is removed");
                  cart.add(order);
                } else {
                  cart.add(order);
                }
                print(cart.indexOf(order));
                print(order.quantity);
                BlocProvider.of<PlaceOrderBloc>(context).add(
                    PlaceOrderEvent.orderItem(
                        order: cart,
                        restrauntDescription: hotelDishesList,
                        restrauntImage: RimageUrl,
                        restrauntname: hotelName,
                        restrauntRating: Rating,
                        time: time));
                var snackBar = SnackBar(
                    //width: 100,

                    backgroundColor: pikitGreen,
                    content: Container(
                      //  height: 30,
                      child: ListTile(
                        leading: Container(
                          width: 10,
                          //  height: 10,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("1"),
                              Container(
                                color: pikitBlack,
                                width: 2,
                                height: 20,
                              ),
                              Text("34rs")
                            ],
                          ),
                        ),
                        trailing: Container(
                          width: 50,
                          child: Row(
                            children: [
                              Text("view cart"),
                              IconButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                    navigationNotifier.value = 3;

                                    // Navigator.of(context)
                                    //     .push(MaterialPageRoute(
                                    //   builder: (context) {
                                    //     return CartScreen();
                                    //   },
                                    // ));
                                  },
                                  icon: Icon(Icons.shopping_basket_outlined))
                            ],
                          ),
                        ),
                      ),
                    ));
                //   ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
            ),
          ],
        );
      },
    );
  }
}

class foodDiscription extends StatelessWidget {
  final itemName;
  final price;
  const foodDiscription({Key? key, this.itemName, this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Container(
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 80,
                child: Text(
                  itemName,
                  overflow: TextOverflow.ellipsis,
                  //style: TextStyle(fontSize: 10),
                ),
              ),
              // Image(image: AssetImage("assets/images/non.png")),
              Icon(
                size: 10,
                pikitfoodAvailable,
                color: pikitRed,
              ),
            ],
          ),
        ),
        Text(price.toString()),
      ]),
    );
  }
}

class circularAvatarMarker extends StatelessWidget {
  const circularAvatarMarker({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        // BlocProvider.of<PlaceOrderBloc>(context)
        //     .add(PlaceOrderEvent.orderItem(order: or));
      },
    );
    return Positioned(
        top: -6,
        left: -5,
        child: CircleAvatar(
          radius: 12,
          backgroundColor: pikitWhite,
          child: CircleAvatar(
            // radius: 5,
            backgroundColor: pikitGreen,
            radius: 10,
            //mark_chat_read_outlined
            // child: state.quantity != 0
            //     ? Text(state.quantity.toString())
            child: Icon(
              Icons.done,
              size: 10,
            ),
          ),
        ));
  }
}

class RecomendedFoodMenu extends StatelessWidget {
  RecomendedFoodMenu(
      {Key? key,
      required this.slug,
      required this.Rating,
      required this.isActive,
      required this.hotelDishesList,
      required this.hotelName,
      required this.imageUrl,
      required this.rate,
      required this.time})
      : super(key: key);
  final String? slug;
  final String time;
  final int isActive;

  final String imageUrl;
  final String hotelName;

  final String hotelDishesList;
  final String Rating;
  final String rate;
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<ItemsBloc>(context)
          .add(ItemsEvent.loadRestrauntRecomentedItems(slug: slug!));
    });
    final _dimension = MediaQuery.of(context).size;
    return BlocBuilder<ItemsBloc, ItemsState>(
      builder: (context, state) {
        print("inside presentation recomented$state");
        //print(state.itemsModel[]);
        return SizedBox(
          height: _dimension.height * 0.45,
          // _dimension.height * 30,
          child: ListView.separated(
            physics: ScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: ((context, index) {
              final recItems = state.recomenteditems[index];
              final name = recItems.name;
              final image = recItems.image;
              print("object $image");
              return Stack(
                children: [
                  Card(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ProductDetailsScreen(
                                  isActive: isActive,
                                  productImage: image,
                                  productName: name!,
                                  restrauntImage: imageUrl,
                                  restrauntName: hotelName,
                                  description: hotelDishesList,
                                  rating: Rating,
                                  time: time,
                                  rate: rate,
                                  slug: slug!,
                                ),
                              ));
                            },
                            child: Container(
                              width: _dimension.width * 0.5,
                              height: _dimension.height * 0.25,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(Apis.BASE_URL + image!),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(name!),
                            Icon(
                              pikitfoodAvailable,
                              color: pikitRed,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            OutlinedButton(onPressed: () {}, child: Text("-")),
                            kwidth,
                            OutlinedButton(onPressed: () {}, child: Text("+"))
                          ],
                        )
                      ],
                    ),
                  )
                ],
              );
            }),
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 15,
              );
            },
            itemCount: state.recomenteditems.length,
          ),
        );
      },
    );
  }
}

// class appBarCustomOnReverseScroll extends StatelessWidget {
//   const appBarCustomOnReverseScroll({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Container(
//         color: pikitWhite,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             IconButton(
//               onPressed: () {},
//               icon: Icon(pikitarrowBack),
//             ),
//             IconButton(
//               onPressed: () {},
//               icon: Icon(pikitHomeOutlined),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class MainMenulistViewAlert extends StatefulWidget {
//   const MainMenulistViewAlert({Key? key, required this.index})
//       : super(key: key);
//   final int index;

//   @override
//   State<MainMenulistViewAlert> createState() => _MainMenulistViewAlertState();
// }

// class _MainMenulistViewAlertState extends State<MainMenulistViewAlert> {
//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       title: Text("item${widget.index}"),
//       onTap: () {
//         Navigator.pop(context, widget.index);
//         setState(() {
//           itemScrollController.jumpTo(index: widget.index);
//           selectIndex = widget.index;
//         });

//         print(widget.index);
//       },
//     );
//   }
// }
