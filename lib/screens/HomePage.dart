import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:designapp/constants.dart';
import 'package:designapp/screens/Feed.dart';
import 'package:designapp/screens/forum.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../ListProfile.dart';

class HomePage extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
      return HomeState();
  }

}
class HomeState extends State<HomePage>with SingleTickerProviderStateMixin
{int currentIndex = 0;

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
        appBar: AppBar(
          backgroundColor: kBackgroundColor,
          actions: <Widget>[
           Padding(
             padding: EdgeInsets.only(right: 150),
             child: GestureDetector(
               child: Center(child: Text("LVL 1 | *222 ",style: TextStyle(color: Colors.white,fontSize: 16),)),
             ),
           )
          ],

          bottom: TabBar(
            unselectedLabelColor: Colors.white,
            labelColor: Colors.grey,
            tabs: [
              new Tab(child:Text("Fedd",style: TextStyle(color: Colors.white,fontSize: 17,fontStyle: FontStyle.italic),),),
              new Tab(
                  child:Text("Forum",style: TextStyle(color: Colors.white,fontSize: 17,fontStyle: FontStyle.italic),)
              ),
            ],
            controller: _tabController,
            indicatorColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.tab,),
          bottomOpacity: 1,
        ),
        bottomNavigationBar: BottomNavyBar(
          backgroundColor: kBackgroundColor,
        selectedIndex: currentIndex,
        showElevation: true,
        itemCornerRadius: 8,
        curve: Curves.easeInBack,
        onItemSelected: (index) => setState(() {
          currentIndex = index;
        }),
        items: [
          BottomNavyBarItem(
            icon: Icon(Icons.home,color: Colors.white),
            activeColor: Colors.grey,
            title: Text('')

          ),
          BottomNavyBarItem(
            icon: Icon(Icons.message,color: Colors.white,),
            activeColor: Colors.grey,
              title: Text('')


          ),
          BottomNavyBarItem(
            icon: Icon(Icons.create,color: Colors.white,),
            activeColor: Colors.grey,
              title: Text('')

          ),
          BottomNavyBarItem(
            icon: Icon(Icons.notifications,color: Colors.white,),
            activeColor: Colors.grey,
              title: Text('')


          ),
        ],
      ),

       drawer: Drawer(
         child: ListProfile()
       ),
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            FeedPage(),
            ForumPage(),

          ],
        ),
      );
  }
}
