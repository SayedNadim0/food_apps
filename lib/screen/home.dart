import 'package:flutter/material.dart';
import 'package:food_apps/screen/recipe.dart';

import '../consent/appbar.dart';
import '../consent/colors.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;
  List category = ['All', 'Lunch', 'Dinner', 'Breakfast'];
  List categoryname = ['dinner', 'lunch', 'dinner', 'fast'];
  List food = [
    ['burger', 'omlet', 'grilled wings', 'Grilled ribs'],
    ['pizza', 'steak', 'pasta', 'burger'],
    ['burger', 'omlet', 'grilled wings', 'Grilled ribs'],
    ['pancake', 'egg', 'banana', 'egg'],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: appbar(),
      drawer: Drawer(),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Text(
                'Popular category',
                style: TextStyle(
                  fontSize: 20,
                  color: font,
                  fontFamily: 'ro',
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            sliver: SliverToBoxAdapter(
              child: Column(
                children: [
                  SizedBox(
                    height: 60,
                    child: ListView.builder(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: ((context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                index = index;
                              });
                            },
                            child: Container(
                              margin: EdgeInsets.only(
                                top: 5,
                                bottom: 5,
                                left: index == 0 ? 4 : 0,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color:
                                index == index ? maincolor : Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: index == index
                                        ? maincolor
                                        : Colors.transparent,
                                    offset: index == index
                                        ? const Offset(1, 1)
                                        : const Offset(0, 0),
                                    blurRadius: index == index ? 7 : 0,
                                  )
                                ],
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 17),
                                  child: Text(
                                    category[index],
                                    style: TextStyle(
                                      fontSize: 16,
                                      color:
                                      index == index ? Colors.white : font,
                                      fontFamily: 'ro',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      Text(
                        'Popular',
                        style: TextStyle(
                          fontSize: 20,
                          color: font,
                          fontFamily: 'ro',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate(
                    (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (BuildContext context) => Recipe()),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromARGB(255, 185, 185, 185),
                            offset: Offset(1, 1),
                            blurRadius: 15,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(height: 10),
                          const Padding(
                            padding: EdgeInsets.only(right: 14),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [Icon(Icons.favorite_border)],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 15,
                            ),
                            child: Container(
                              height: 120,
                              width: 120,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      'images/${categoryname[index]}${index +1}c.jpg'),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            food[index][index],
                            style: TextStyle(
                              fontSize: 18,
                              color: font,
                              fontFamily: 'ro',
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const Text(
                                '100 min',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey,
                                  fontFamily: 'ro',
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.star, color: maincolor, size: 15),
                                  const Text(
                                    '4.2',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey,
                                      fontFamily: 'ro',
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
                childCount: 4,
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 270,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}