import 'package:consultation_app/components/my_app_bar.dart';
import 'package:consultation_app/constant/const.dart';
import 'package:flutter/material.dart';

import '../components/category_list_tile.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  final List<CategoryListTile> categories = <CategoryListTile>[
    CategoryListTile(title: 'Official organization'),
    CategoryListTile(title: 'NGOs'),
    CategoryListTile(title: 'UNBorder'),
    CategoryListTile(title: 'Others')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgrondColor,
      appBar: MyAppBar(
        title: 'Category',
      ),
      body: Container(
          height: 276,
          margin: EdgeInsets.all(24),
          padding: EdgeInsets.only(left: 8, right: 8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
          ),
          child: ListView.separated(
              itemCount: categories.length,
              itemBuilder: (BuildContext context, int index) {
                return categories[index];
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(
                    color: Colors.grey,
                  ))),
    );
  }
}
