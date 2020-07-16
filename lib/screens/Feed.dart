import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:designapp/screens/HomePage.dart';
import 'package:designapp/screens/forum.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../constants.dart';

class FeedPage extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return FeedPageState();
  }

}
class FeedPageState extends State<FeedPage> with SingleTickerProviderStateMixin
{
  var list=["assets/ai1.jpg","assets/ai2.jpg","assets/sales1.jpg","assets/sales2.png","assets/web1.png","assets/web2.jpg","assets/web3.jpg","assets/ai1.jpg","assets/ai1.jpg","assets/ai1.jpg","assets/ai1.jpg","assets/ai1.jpg","assets/ai1.jpg","assets/ai1.jpg"];
@override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: GridView.builder(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        crossAxisSpacing: 20,
        maxCrossAxisExtent: 200,
        childAspectRatio: 1.5,
        mainAxisSpacing: 20,
      ),
          itemCount: list.length,
          itemBuilder:(BuildContext context,int index)
           {
              return Material(
                elevation: 5,
                shadowColor: kBackgroundColor,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: kBackgroundColor,
                     image: DecorationImage(
                       image: AssetImage(list[index]),
                       fit: BoxFit.contain
                     )
                  ),
                ),
              );
           }
      ),
    );
  }

}



