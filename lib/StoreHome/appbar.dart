import 'package:flutter/material.dart';


class MyAppBar extends StatelessWidget with PreferredSizeWidget
{

  final PreferredSizeWidget bottom;
  MyAppBar({this.bottom});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(4278520600),
      toolbarHeight:68,
      leading: Container(),
      actions: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0,0,170,0),
          child: Row(
            children: [
              Container(
                width: 26,
                child: CircleAvatar(
                  radius: 20,
                  backgroundImage: ExactAssetImage('images/admin.png'),
                ),
                decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  border: new Border.all(
                    color: Color(4285882595),
                    width: 2.0,
                  ),
                ),
              ),
              SizedBox(width: 5,),
              Text(
                "John",
                style: TextStyle(fontSize: 20, color: Colors.white, fontFamily: "signature"),
              ),
            ],
          ),
        ),
        Row(
          children: [
            IconButton(icon:Icon(Icons.search, color: Color(4285882595),),),
            Stack(children:[
              IconButton(icon:Icon(Icons.notifications_none, color: Color(4285882595),),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(26.0,18,0,0),
                child: Container(
                  width: 6,
                  height:6,

                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.deepOrange),
                ),
              ),
            ]),





          ],
        ),

      ],

      flexibleSpace: Container(

        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 0.6, color: Colors.white30,),
          ),
        ),

      ),

      centerTitle: false,


    );
  }

  @override

  Size get preferredSize => bottom == null ? Size(56, AppBar().preferredSize.height):Size(56, 54+AppBar().preferredSize.height);
}

