
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'constants.dart';

class ListProfile extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
     return ListState();
  }

}
class ListState extends State<ListProfile>
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        children: <Widget>[
          Container(
            height: 146,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(20),
                  child: CircleAvatar(
                    child: Image(
                      image: AssetImage("assets/hu.jpg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Text("Hi Ananya ",style: TextStyle(color: Colors.white,fontSize: 18),),
                SizedBox(height: 10,),
                VxBox(
                  child: "Tap To Veiw".text.gray600.size(16).makeCentered()
                ).neumorphic(color: kBackgroundColor,elevation: 10,curve: VxCurve.flat).rounded.height(30).width(120).makeCentered()
              ],
            )
          ),
          Divider(),
          ListTile(
            title: Text("Alumuni Connect",style: TextStyle(color: Colors.white,fontSize: 16,),),
          ),
          ListTile(
            title: Text("Sell Your Study",style: TextStyle(color: Colors.white,fontSize: 16,),),
          ),
          Divider(),
          ListTile(
            title: Text("Search notes",style: TextStyle(color: Colors.white,fontSize: 16,),),
          ),
          Divider(),
          ListTile(
            title: Text("OnlineChat ResourceWebx",style: TextStyle(color: Colors.white,fontSize: 16,),),
          ),
          Divider(),
          ListTile(
            title: Text("Want to Purchase?",style: TextStyle(color: Colors.white,fontSize: 16,),),
          ),
          SizedBox(height: 10,),
          VxBox(
            child: "EXIT".text.gray600.makeCentered(),
          ).neumorphic(color: kBackgroundColor,elevation: 10,curve: VxCurve.flat).rounded.height(40).width(80).makeCentered()
        ],
      ),
    );
  }

}