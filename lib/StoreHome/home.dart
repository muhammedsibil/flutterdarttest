import 'package:flutter/material.dart';
import 'package:fluttertest/datamodel/data.dart';


class MyHome extends StatelessWidget {

  List<Photo> photos = <Photo>[
    Photo(
      assetName: 'images/riders.jpg',
      title: 'Riders Republic',
      offer: '30% OFF',
    ),
    Photo(
      assetName: 'images/farcry.jpg',
      title: 'FarCry 6',
      offer: '30% OFF',
    ),

  ];



  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          Divider(),
          Padding(
            padding: const EdgeInsets.fromLTRB(30,0,0,10),
            child: Text("Popular", style: TextStyle(color: Color(4285882595),  fontSize: 19.0,fontWeight:FontWeight.bold), ),
          ),
          topHorizontalList(),
          SizedBox(height: 15,),
          Divider(height: 10.0, color: Colors.white.withOpacity(0.4), thickness: 0.4,),

          SizedBox(height: 15,),
          buttonsListview(),
          SizedBox(height: 8,),
          buttonsListview2(),

          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.fromLTRB(30,0,0,10),
            child: Text("Today", style: TextStyle(color: Color(4285882595),  fontSize: 19.0,fontWeight:FontWeight.bold), ),
          ),
          _homeScroll(),
          Padding(
            padding: const EdgeInsets.fromLTRB(30,0,0,10),
            child: Text("This week", style: TextStyle(color: Color(4285882595),  fontSize: 19.0,fontWeight:FontWeight.bold), ),
          ),
          _homeScroll(),



        ],
      ),
    );
  }
  SizedBox topHorizontalList() {
    return SizedBox(
      height: 200,
      width: 400,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: photos.length,
        itemExtent: 200.0,
        itemBuilder: (context, index) {
          var item = photos[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 4.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    item.assetName,
                  ),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.black26,
                    BlendMode.darken,
                  ),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                  ),
                  BoxShadow(
                    color: Colors.black,
                    spreadRadius: -12.0,
                    blurRadius: 12.0,
                  ),
                ],
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.grey,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15,90,0,0),
                        child: Icon(Icons.arrow_back_ios, color: Colors.white,),

                      ),
                      SizedBox(width: 90,),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30,90,0,0),
                        child: Icon(Icons.arrow_forward_ios, color: Colors.white,),
                      ),
                    ],
                  ),
                  SizedBox(height: 38,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      Container(
                        height: 40,
                        width: 192,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomRight:  Radius.circular(10),
                              bottomLeft: Radius.circular(10)),
                          color: Color(4281019719),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                item.title,
                                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Expanded(
                                  child:IconButton(icon:Icon(Icons.favorite_border, color: Color(4285882595),),

                                  )),
                            )
                          ],
                        ),
                      ),


                    ],
                  ),

                ],
              ),
            ),
          );
        },
      ),
    );
  }
  SizedBox  _homeScroll() {


    return SizedBox(
      height:750,
      child: ListView.builder(

          physics: NeverScrollableScrollPhysics(),
          itemCount: photos.length,
          itemBuilder: (context, index) {

            return SizedBox(
              height: 360,
              child: Card(
                color: Color(4281019719 ),
                margin: EdgeInsets.fromLTRB(32,0,20,12),
                clipBehavior: Clip.antiAlias,
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Stack(
                          children: [
                            Container(

                                child: Image.asset(photos[index].assetName)),
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle, // BoxShape.circle or BoxShape.retangle
                                      //color: const Color(0xFF66BB6A),
                                      boxShadow: [BoxShadow(
                                        color: Colors.black.withOpacity(0.3),
                                        blurRadius: 20.0,
                                      ),]
                                  ),
                                  height: 180,
                                  width: 70,
                                ),
                                SizedBox(width: 167,),
                                Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle, // BoxShape.circle or BoxShape.retangle
                                      //color: const Color(0xFF66BB6A),
                                      boxShadow: [BoxShadow(
                                        color: Colors.black.withOpacity(0.3),
                                        blurRadius: 20.0,
                                      ),]
                                  ),
                                  height: 180,
                                  width: 70,
                                ),
                              ],
                            ),

                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget> [

                            ListTile(title:  Text(photos[index].title,style: TextStyle(fontSize: 15,fontWeight:FontWeight.bold, color: Colors.white,)),
                            ),

                            thirdRow(),
                            SizedBox(height:7),
                            Padding(

                              padding: const EdgeInsets.fromLTRB(15.0,0,0,0),
                              child: Container(
                                height:25,
                                width: 90,
                                decoration: BoxDecoration(

                                  borderRadius: BorderRadius.all(Radius.circular(14)),
                                  color: Colors.black.withOpacity(0.3),

                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [


                                    Tab(icon: new Image.asset("images/icons/16.png",width:17,height:17,), ),
                                    SizedBox(width: 4,),
                                    Text(photos[index].offer, style: TextStyle(color:Colors.white,  fontSize: 13.0,),  ),



                                  ],
                                ),
                              ),
                            ),

                            SizedBox(height:2),
                            fifthRow(),

                          ],
                        ),


                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(240,180,32,0),
                      child: IconButton(icon:Icon(Icons.favorite_border, size:27, color: Color(4285882595)),),
                    ),

                  ],
                ),
              ),
            );
          }
      ),
    );





  }

  SizedBox buttonsListview() {


    return SizedBox(
      height:25,

      child: ListView(
          scrollDirection: Axis.horizontal,
          children:[
            SizedBox(width: 25,),
            Container(
              height:38,
              width: 55,
              decoration: BoxDecoration(

                borderRadius: BorderRadius.all(Radius.circular(14)),
                color: Color(4285882595),            ),
              child: Center(child: Text("All", style: TextStyle(color:Colors.white,  fontSize: 13.0,),  )),
            ),
            SizedBox(width: 10,),
            Container(
              height:38,
              width: 85,
              decoration: BoxDecoration(

                borderRadius: BorderRadius.all(Radius.circular(14)),
                color: Color(4281019719),
              ),
              child: Center(child: Text("PlayStation", style: TextStyle(color:Colors.white30,  fontSize: 13.0,),  )),
            ),
            SizedBox(width: 10,),
            Container(
              height:38,
              width: 70,
              decoration: BoxDecoration(

                borderRadius: BorderRadius.all(Radius.circular(14)),
                color: Color(4281019719),
              ),
              child: Center(child: Text("Nintendo", style: TextStyle(color:Colors.white30,  fontSize: 13.0,),  )),
            ),
            SizedBox(width: 10,),
            Container(
              height:38,
              width: 55,
              decoration: BoxDecoration(

                borderRadius: BorderRadius.all(Radius.circular(14)),
                color: Color(4281019719),
              ),
              child: Center(child: Text("X-Box", style: TextStyle(color:Colors.white30,  fontSize: 13.0,),  )),
            ),
            SizedBox(width: 10,),
            Container(
              height:38,
              width: 55,
              decoration: BoxDecoration(

                borderRadius: BorderRadius.all(Radius.circular(14)),
                color: Color(4281019719),
              ),
              child: Center(child: Text("PC", style: TextStyle(color:Colors.white30,  fontSize: 13.0,),  )),
            ),
            SizedBox(width: 10,),
            Container(
              height:38,
              width: 55,
              decoration: BoxDecoration(

                borderRadius: BorderRadius.all(Radius.circular(14)),
                color: Color(4281019719),
              ),
              child: Center(child: Text("Steam", style: TextStyle(color:Colors.white30,  fontSize: 13.0,),  )),
            ),
            SizedBox(width: 10,),
            Container(
              height:38,
              width: 55,
              decoration: BoxDecoration(

                borderRadius: BorderRadius.all(Radius.circular(14)),
                color: Color(4281019719),
              ),
              child: Center(child: Text("Stadia", style: TextStyle(color:Colors.white30,  fontSize: 13.0,),  )),
            ),
          ]
      ),
    );
  }
  SizedBox buttonsListview2() {


    return SizedBox(
      height:30,

      child: ListView(
          scrollDirection: Axis.horizontal,
          children:[
            SizedBox(width: 25,),
            Container(
              height:45,
              width: 55,
              decoration: BoxDecoration(

                borderRadius: BorderRadius.all(Radius.circular(14)),
                color: Color(4281019719),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [


                  Tab(icon: new Image.asset("images/icons/8.png",width:20,height:20,), ),
                  Text("All", style: TextStyle(color:Colors.white,  fontSize: 13.0,),  ),



                ],
              ),
            ),
            SizedBox(width: 10,),
            Container(
              height:45,
              width: 75,
              decoration: BoxDecoration(

                  borderRadius: BorderRadius.all(Radius.circular(14)),
                  color: Color(4281019719),
                  border: Border.all(color: Color(4285882595),)

              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [


                  Tab(icon: new Image.asset("images/icons/9.png",width:20,height:20,), ),
                  Text("Action", style: TextStyle(color:Colors.white,  fontSize: 13.0,),  ),



                ],
              ),
            ),
            SizedBox(width: 10,),
            Container(
              height:45,
              width: 95,
              decoration: BoxDecoration(

                borderRadius: BorderRadius.all(Radius.circular(14)),
                color: Color(4281019719),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [


                  Tab(icon: new Image.asset("images/icons/8.png",width:20,height:20,), ),
                  Text("Adventure", style: TextStyle(color:Colors.white,  fontSize: 13.0,),  ),



                ],
              ),
            ),
            SizedBox(width: 10,),
            Container(
              height:45,
              width: 95,
              decoration: BoxDecoration(

                  borderRadius: BorderRadius.all(Radius.circular(14)),
                  color: Color(4281019719),
                  border: Border.all(color: Color(4285882595),)

              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [


                  Tab(icon: new Image.asset("images/icons/10.png",width:20,height:20,), ),
                  SizedBox(width: 7,),
                  Text("Puzzle", style: TextStyle(color:Colors.white,  fontSize: 13.0,),  ),



                ],
              ),
            ),

            SizedBox(width: 10,),
            Container(
              height:45,
              width: 75,
              decoration: BoxDecoration(

                  borderRadius: BorderRadius.all(Radius.circular(14)),
                  color: Color(4281019719),
                  border: Border.all(color: Color(4285882595),)

              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [


                  Tab(icon: new Image.asset("images/icons/9.png",width:20,height:20,), ),
                  Text("Action", style: TextStyle(color:Colors.white,  fontSize: 13.0,),  ),



                ],
              ),
            ),
            SizedBox(width: 10,),
            Container(
              height:45,
              width: 95,
              decoration: BoxDecoration(

                borderRadius: BorderRadius.all(Radius.circular(14)),
                color: Color(4281019719),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [


                  Tab(icon: new Image.asset("images/icons/8.png",width:20,height:20,), ),
                  Text("Adventure", style: TextStyle(color:Colors.white,  fontSize: 13.0,),  ),



                ],
              ),
            ),
            SizedBox(width: 10,),
            Container(
              height:45,
              width: 95,
              decoration: BoxDecoration(

                borderRadius: BorderRadius.all(Radius.circular(14)),
                color: Color(4281019719),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [


                  Tab(icon: new Image.asset("images/icons/10.png",width:20,height:20,), ),
                  SizedBox(width: 7,),
                  Text("Puzzle", style: TextStyle(color:Colors.white,  fontSize: 13.0,),  ),



                ],
              ),
            ),
          ]
      ),
    );
  }

  Widget thirdRow() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15,0,0,0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height:25,
            width: 110,
            decoration: BoxDecoration(

              borderRadius: BorderRadius.all(Radius.circular(14)),
              color: Colors.black.withOpacity(0.3),

            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [


                Tab(

                  icon: Icon(Icons.calendar_today, size: 18, color:  Color(4285882595),
                  ),
                ),
                SizedBox(width:4),
                Text("12 Feb 2021", style: TextStyle(color:Colors.white,  fontSize: 13.0,),  ),



              ],
            ),
          ),
          SizedBox(width:4),
          Container(
            height:25,
            width: 80,
            decoration: BoxDecoration(

              borderRadius: BorderRadius.all(Radius.circular(14)),
              color: Colors.black.withOpacity(0.3),

            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [


                Tab(icon: new Image.asset("images/icons/9.png",width:19,height:19,), ),
                Text("Action", style: TextStyle(color:Colors.white,  fontSize: 13.0,),  ),



              ],
            ),
          ),
          SizedBox(width:4),
          Container(
            height:25,
            width: 90,
            decoration: BoxDecoration(

              borderRadius: BorderRadius.all(Radius.circular(14)),
              color: Colors.black.withOpacity(0.3),

            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [


                Tab(icon: new Image.asset("images/icons/20.png",width:25,height:25,), ),
                Text("Adventure", style: TextStyle(color:Colors.white,  fontSize: 13.0,),  ),



              ],
            ),
          ),

        ],
      ),
    );


  }
  Widget fifthRow() {

    return Padding(
      padding: const EdgeInsets.fromLTRB(15,0,0,0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text("Download",style: TextStyle(fontSize: 10, color: Colors.white30, fontFamily: "signature")),
          SizedBox(width:6),
          Tab(icon: new Image.asset("images/icons/7.PNG",width:30,height:30,), ),
          SizedBox(width:2),
          Tab(icon: new Image.asset("images/icons/6.PNG",width:30,height:30, ), ),
          SizedBox(width:2),
          Tab(icon: new Image.asset("images/icons/5.PNG",width:30,height:30,), ),
          SizedBox(width:2),
          Tab(icon: new Image.asset("images/icons/4.PNG",width:30,height:30,), ),
          SizedBox(width:2),
          Tab(icon: new Image.asset("images/icons/3.PNG",width:30,height:30,), ),
          SizedBox(width:2),
          Tab(icon: new Image.asset("images/icons/2.PNG",width:30,height:30,), ),
          SizedBox(width:2),
          Tab(icon: new Image.asset("images/icons/1.PNG",width:30,height:30,), ),

        ],
      ),
    );



  }



}
