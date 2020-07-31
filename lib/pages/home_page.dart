import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBarComponent(),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Divider(),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Stories",
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      "Watch All",
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(vertical: 10),
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          child: Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.red[100],
                              border: Border.all(
                                width: 3,
                                color: Color(0xFF722892),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Name")
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (i) {},
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Feather.home),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Feather.search),
            title: Text("Search"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Feather.plus_square),
            title: Text("ADD"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Feather.heart),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Feather.user),
            title: Text("Home"),
          ),
        ],
      ),
    );
  }
}

Widget TopBarComponent() {
  return AppBar(
    elevation: 0,
    backgroundColor: Color(0xFFEEEEE),
    brightness: Brightness.light,
    centerTitle: true,
    title: Text(
      "Instagram",
      style: TextStyle(color: Colors.black),
    ),
    leading: IconButton(
      icon: Icon(Feather.camera, color: Colors.black),
      onPressed: () {},
    ),
    actions: <Widget>[
      IconButton(
        icon: Icon(Feather.tv, color: Colors.black),
        onPressed: () {},
      ),
      IconButton(
        icon: Icon(Feather.send, color: Colors.black),
        onPressed: () {},
      )
    ],
  );
}
