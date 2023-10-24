import 'package:flutter/material.dart';

class Category extends StatelessWidget {
   const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: GridView.builder(
         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
           crossAxisCount: 2,
           mainAxisExtent: 270,
         ),
            itemCount: 6,
            itemBuilder: ((context, index){
              return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(25),
                    image: DecorationImage(
                      image: AssetImage('images/${index + 1}c.jpg'),
                      fit: BoxFit.cover,
                    )
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
