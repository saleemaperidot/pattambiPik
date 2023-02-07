import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pikit/constants/constants.dart';
import 'package:pikit/presentation/NearMe/ScrollableMenuList.dart';
import 'package:pikit/presentation/NearMe/app_bar_widget.dart';
import 'package:pikit/presentation/NearMe/hotel_list_card.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

//ValueNotifier selectDishNotifier = new ValueNotifier(0);
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
  // final ItemScrollController itemScrollController = ItemScrollController();
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
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
            child: Scaffold(
              floatingActionButton: FloatingActionButton.extended(
                label: Text("Click me"),
                onPressed: () {
                  alertDialogue(context);
                },
                icon: Icon(pikitMenuIcon),
              ),
              appBar: PreferredSize(
                  child: scrollNotifier.value
                      ? appBarCustomOnReverseScroll()
                      : AppBarWidget(),
                  preferredSize: Size.fromHeight(50)),
              backgroundColor: pikitGreen50,
              body: SafeArea(
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
                            backgroundColor: pikitWhite,
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
                        ExpandableFoodMenu(),
                      ]),
                    ),
                    SliverList(
                      //  key: _state,
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          return AutoScrollTag(
                            key: ValueKey(index),
                            controller: autoScrollController,
                            index: index,
                            // highlightColor: Colors.redAccent,
                            child: ExpansionTile(
                              initiallyExpanded: true,
                              //height: 60,
                              title: Text("tittle${index}"),
                              children: [subMenu()],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
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
                      autoScrollController.scrollToIndex(index);
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

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        shrinkWrap: true,
        physics: ScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  // padding: EdgeInsets.only(left: 10),
                  width: 90,
                  height: 90,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(" "),
                    ),
                  ),
                ),
                Container(
                  child: Column(children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Biriyani"),
                          Icon(
                            pikitfoodAvailable,
                            color: pikitRed,
                          ),
                        ],
                      ),
                    ),
                    Text("200.00"),
                  ]),
                ),
                SizedBox(
                  width: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OutlinedButton(onPressed: () {}, child: Text("-")),
                    SizedBox(
                      width: 10,
                    ),
                    OutlinedButton(onPressed: () {}, child: Text("+"))
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

class ExpandableFoodMenu extends StatelessWidget {
  const ExpandableFoodMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.separated(
        physics: ScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context, index) {
          return Card(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    width: 200,
                    height: 180,
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
                    SizedBox(
                      width: 10,
                    ),
                    OutlinedButton(onPressed: () {}, child: Text("+"))
                  ],
                )
              ],
            ),
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

class appBarCustomOnReverseScroll extends StatelessWidget {
  const appBarCustomOnReverseScroll({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: pikitWhite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(pikitarrowBack),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(pikitHomeOutlined),
          ),
        ],
      ),
    );
  }
}

class MainMenulistViewAlert extends StatefulWidget {
  const MainMenulistViewAlert({Key? key, required this.index})
      : super(key: key);
  final int index;

  @override
  State<MainMenulistViewAlert> createState() => _MainMenulistViewAlertState();
}

class _MainMenulistViewAlertState extends State<MainMenulistViewAlert> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("item${widget.index}"),
      onTap: () {
        Navigator.pop(context, widget.index);
        setState(() {
          itemScrollController.jumpTo(index: widget.index);
          selectIndex = widget.index;
        });

        print(widget.index);
      },
    );
  }
}
