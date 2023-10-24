import 'package:flutter/material.dart';
import 'package:food_apps/consent/colors.dart';

PreferredSizeWidget appbar() {
  return AppBar(
    title: Text("Fooder",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,),),
    automaticallyImplyLeading: false,
     elevation: 0,
    actions: const [
      Padding(
          padding: EdgeInsets.only(right: 15),
        child: CircleAvatar(
          radius: 18,
          backgroundImage: AssetImage('images/N.png'),
        ),
      )
    ],
    backgroundColor: maincolor,
  );
}