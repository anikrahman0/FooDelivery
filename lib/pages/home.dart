import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foo_deliver/models/popular.dart';
import 'package:foo_deliver/pages/item_details.dart';
import '../models/food_category.dart';

class FooDeliver extends StatefulWidget {
  const FooDeliver({super.key});

  @override
  State<FooDeliver> createState() => _FooDeliverState();
}

class _FooDeliverState extends State<FooDeliver> {
  List<FoodCategoryModel> categories = [];
  List<PopularModel> popular = [];

  void _getCats() {
    categories = FoodCategoryModel.getCategories();
  }

  void _getPopular() {
    popular = PopularModel.getPopular();
  }

  @override
  Widget build(BuildContext context) {
    _getCats();
    _getPopular();
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 242, 253, 242),
      appBar: appBar(),
      body: ListView(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text('Good food.\nFast delivery.',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  )),
            ),
            const SizedBox(
              height: 15,
            ),
            categoriesSection(),
            const SizedBox(
              height: 15,
            ),
            popularSection()
          ],
        ),
      ]),
    );
  }

  Column popularSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(15.0),
          child: Text(
            'Popular now',
            style: TextStyle(
                color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          height: 350,
          padding: const EdgeInsets.all(15.0),
          child: ListView.separated(
            itemCount: popular.length,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => const SizedBox(
              width: 30,
            ),
            itemBuilder: (context, index) {
              return Container(
                width: 210,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xff1D1617).withOpacity(0.11),
                      blurRadius: 40.0,
                      spreadRadius: 0.0,
                    )
                  ],
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ItemDetails()),
                    );
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(popular[index].iconPath, width: 200),
                      Container(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          popular[index].name,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            height: 1.5,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(popular[index].price,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                          Container(
                              padding: const EdgeInsets.only(left: 110),
                              child: SvgPicture.asset('assets/chili.svg',
                                  width: 20, height: 20)),
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Container categoriesSection() {
    return Container(
      height: 120,
      padding: const EdgeInsets.all(15.0),
      // color: Colors.green,
      child: ListView.separated(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => const SizedBox(
          width: 20,
        ),
        itemBuilder: (context, index) {
          return Container(
            width: 100,
            decoration: BoxDecoration(
              color: categories[index].isActive
                  ? const Color.fromARGB(255, 45, 46, 43)
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset(categories[index].iconPath,
                    width: 35, height: 35),
                // const SizedBox(height: 10,),
                Text(
                  categories[index].name,
                  style: TextStyle(
                    color: categories[index].isActive
                        ? const Color.fromARGB(255, 236, 234, 234)
                        : const Color.fromARGB(255, 109, 109, 109),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0.0,
      leading: GestureDetector(
        onTap: () {},
        child: Container(
            padding: const EdgeInsets.all(15),
            child: Image.asset(
              'assets/list2.png',
              width: 40,
              height: 40,
            )),
      ),
      actions: [
        GestureDetector(
          onTap: () {},
          child: Container(
              padding: const EdgeInsets.all(10),
              child: SvgPicture.asset(
                'assets/avatar1.svg',
                width: 40,
                height: 40,
              )),
        ),
      ],
    );
  }
}
