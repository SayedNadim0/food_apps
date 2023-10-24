import 'package:food_apps/consent/appbar.dart';
import 'package:flutter/material.dart';



class Favorite extends StatelessWidget {
  const Favorite({super.key});

  get font => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Text(
              'Your Favorite',
              style: TextStyle(
                fontSize: 20,
                color: font,
                fontFamily: 'R',
              ),
            ),
          )
        ],
      ),
    );
  }
}
