import 'package:flutter/material.dart';


class MyNavigationBar extends StatefulWidget {
  MyNavigationBar ({Key key}) : super(key: key);

  @override
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar > {
  TabController _tabController;




  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: PreferredSize(
        preferredSize: new Size(200.0, 200.0),

        child: Container(
          decoration: BoxDecoration(


              border: Border.all(color: Colors.white30.withOpacity(.4),width: .1)

          ),
          height: 55,
          child: TabBar(
            controller: _tabController,
            labelColor:  Color(4285882595),
            labelStyle:  TextStyle(
                fontSize: 12.0,
                color: Colors.white,
                fontFamily: 'OpenSans',
                fontWeight: FontWeight.w600).copyWith(
                fontSize: 10.0,
                color: Colors.red,
                fontWeight: FontWeight.w700),
            indicator: UnderlineTabIndicator(

              borderSide: BorderSide( color: Color(0xDD613896), width: 4.0),
              insets: EdgeInsets.symmetric(horizontal: 32,vertical: 51),
            ),
            unselectedLabelColor: Colors.white30,
            labelPadding: EdgeInsets.symmetric (horizontal: 5),
            tabs: [
              Tab(
                icon: Icon(Icons.menu_sharp),
              ),
              Tab(

                icon: Icon(Icons.calendar_today,
                ),
              ),
              Tab(
                icon: Icon(Icons.favorite_border),
              ),

            ],
          ),
        ),
      ),
    );

  }
}