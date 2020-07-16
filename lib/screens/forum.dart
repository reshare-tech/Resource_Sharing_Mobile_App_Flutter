import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:designapp/constants.dart';
import 'package:designapp/screens/Feed.dart';
import 'package:designapp/screens/HomePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';

class ForumPage extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ForumState();
  }

}
class ForumState extends State<ForumPage>with SingleTickerProviderStateMixin {
  int currentIndex = 0;
var list=["1","2","3","4","5","6","7","8"];
  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 2, vsync: this);
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView.builder(
          itemCount: list.length,
          itemBuilder: (context,index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
               children: <Widget>[
                 Padding(
                   padding: EdgeInsets.all(10),
                   child: VxBox(
                     child: Column(
                       children: <Widget>[
                         Row(
                           mainAxisAlignment: MainAxisAlignment.start,
                           children: <Widget>[

                             Padding(
                               padding: EdgeInsets.all(5),
                               child: CircleAvatar(
                                 child: Image(
                                   image: AssetImage("assets/hu.jpg"),
                                   fit: BoxFit.cover,
                                 ),
                               ),
                             ),
                             Padding(
                               padding: EdgeInsets.all(5),
                               child: Text("Jessica Thomas",style: TextStyle(color: Colors.white),),
                             ),
                             SizedBox(width: 90,height: 0,),
                             Text("Created 6 hours ago",style: TextStyle(color: Colors.grey,fontSize: 12),)

                           ],),
                         SizedBox(height: 10,),
                         Text("3D DESIGN",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                         SizedBox(height: 15,),
                         Text("This is the first 3d Painting created by me please support anf follow me and wish me for succes",
                           style: TextStyle(color: Colors.white,fontStyle: FontStyle.italic),),
                         SizedBox(
                           height: 10,
                         ),
                        Container(
                          height: 270,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/3d.jpg"),
                              fit: BoxFit.cover
                            )
                          ),
                        ),
                         SizedBox(
                           height: 15,
                         ),
                            VxBox(
                            child: "Design".text.color(Vx.gray600).size(15).makeCentered(),
                         ).neumorphic(color: kBackgroundColor,elevation: 10,curve: VxCurve.flat).rounded.height(40).width(80).make(),

                       ],
                     ),
                   )
                       .height(500)
                       .width(double.infinity)
                       .neumorphic(
                       color: kBackgroundColor, elevation: 10, curve: VxCurve.flat)
                       .rounded
                       .make(),
                 ),

               ],
            );
          })
    );
  }
}