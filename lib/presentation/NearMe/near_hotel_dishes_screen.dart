import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:pikit/constants/constants.dart';

import 'package:pikit/presentation/NearMe/hotel_list_card.dart';
import 'package:pikit/presentation/bottom_navigation_widget.dart';

import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

int selectIndex = 0;
final ItemScrollController itemScrollController = ItemScrollController();

class NearHotelDishesScreen extends StatefulWidget {
  NearHotelDishesScreen({super.key});

  @override
  State<NearHotelDishesScreen> createState() => _NearHotelDishesScreenState();
}

class _NearHotelDishesScreenState extends State<NearHotelDishesScreen> {
  ValueNotifier scrollNotifier = ValueNotifier(true);
  final AutoScrollController autoScrollController = AutoScrollController();

  @override
  Widget build(BuildContext context) {
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
                            hotelName: "hotelName",
                            hotelDishesList: [],
                            Rating: 4,
                            time: 34,
                            rate: 100.00,
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
                          RecomendedFoodMenu(),
                        ]),
                      ),
                      SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (context, index) {
                            return AutoScrollTag(
                              key: ValueKey(index),
                              controller: autoScrollController,
                              index: index,
                              child: ExpansionTile(
                                tilePadding: EdgeInsets.all(10),
                                childrenPadding: EdgeInsets.only(top: 10),
                                initiallyExpanded: true,
                                title: Text("tittle${index}"),
                                children: [subMenu()],
                              ),
                            );
                          },
                        ),
                      ),
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
        return AlertDialog(
          content: Container(
            width: double.maxFinite,
            child: ListView.builder(
              itemCount: 500,
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("item${index}"),
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
  }
}

class subMenu extends StatelessWidget {
  const subMenu({
    Key? key,
  }) : super(key: key);
  // final bool orderstausIndicator;

  @override
  Widget build(BuildContext context) {
    final _dimension = MediaQuery.of(context).size;
    return Container(
      child: ListView.builder(
        shrinkWrap: true,
        physics: ScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
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
                      Container(
                        //  padding: EdgeInsets.only(top: 300, bottom: 10),
                        width: _dimension.width * 0.38,
                        //   118,
                        height: _dimension.height * .18,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("assets/images/biri.jpeg"),
                          ),
                        ),
                      ),
                      circularAvatarMarker()
                    ]),
                    foodDiscription(),
                    kwidth,
                    addOrRemoveButtons()
                  ],
                ),
                //animated container

                //Positioned(
                //   right: 10,
                //   top: 5,
                //   child: AnimatedContainer(
                //     width: 100,
                //     height: 25,
                //     duration: Duration(microseconds: 60),
                //     decoration: BoxDecoration(
                //       gradient: LinearGradient(colors: [
                //         pikitOrange,
                //         Colors.yellow.withOpacity(pikitOrange.opacity),
                //       ]),
                //     ),
                //     child: Text("Featured"),
                //   ),
                // ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class addOrRemoveButtons extends StatelessWidget {
  const addOrRemoveButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        OutlinedButton(onPressed: () {}, child: Text("-")),
        kwidth,
        OutlinedButton(
          child: Text("+"),
          onPressed: () {
            var snackBar = SnackBar(
                //width: 100,

                backgroundColor: pikitGreen,
                content: Container(
                  //  height: 30,
                  child: ListTile(
                    leading: Container(
                      width: 100,
                      //  height: 10,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("1 item"),
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
                      width: 110,
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
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
        )
      ],
    );
  }
}

class foodDiscription extends StatelessWidget {
  const foodDiscription({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Container(
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Biriyani"),
              // Image(image: AssetImage("assets/images/non.png")),
              Icon(
                pikitfoodAvailable,
                color: pikitRed,
              ),
            ],
          ),
        ),
        Text("200.00"),
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
          child: Icon(
            Icons.done,
            size: 10,
          ),
        ),
      ),
    );
  }
}

class RecomendedFoodMenu extends StatelessWidget {
  const RecomendedFoodMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _dimension = MediaQuery.of(context).size;
    return SizedBox(
      height: _dimension.height * 0.45,
      // _dimension.height * 30,
      child: ListView.separated(
        physics: ScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context, index) {
          return Stack(
            children: [
              Card(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Container(
                        width: _dimension.width * 0.5,
                        height: _dimension.height * 0.25,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/biri.jpeg"),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text("Biriyani"),
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
              ),
            ],
          );
        }),
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 15,
          );
        },
        itemCount: 40,
      ),
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
