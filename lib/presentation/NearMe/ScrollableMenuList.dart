import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class scrollableMenuList extends StatelessWidget {
  scrollableMenuList(
      {required this.selectIndex, required this.itemScrollController});
  final ItemScrollController itemScrollController;
  final int selectIndex;
  @override
  Widget build(BuildContext context) {
    return ScrollablePositionedList.builder(
      // itemScrollController: itemScrollController,
      initialScrollIndex: selectIndex,
      itemScrollController: itemScrollController,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Card(
          child: ExpansionTile(
            initiallyExpanded: true,
            title: Text("dishes{$index}"),
            children: [
              Container(
                //height: 300,
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    // index = value;
                    return SubMenu();
                  },
                ),
              )
            ],
          ),
        );
      },
    );
  }
}

class SubMenu extends StatelessWidget {
  const SubMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                image: AssetImage("assets/images/biri.jpeg"),
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
                      Icons.stop_circle_outlined,
                      color: Colors.red,
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
  }
}
