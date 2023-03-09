import 'package:consultation_app/components/my_app_bar.dart';
import 'package:consultation_app/constant/const.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  int value = 0;
  Widget customListTileButton(String text, int index) {
    return ListTile(
      onTap: () {
        setState(() {
          value = index;
        });
      },
      title: Text(
        text,
      ),
      trailing: (value == index)
          ? Icon(
              Icons.check,
              color: ksecColor,
            )
          : SizedBox(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgrondColor,
      appBar: MyAppBar(
        title: 'Category',
      ),
      body: Container(
          //constraints: BoxConstraints.tightForFinite(height: 276),
          margin: EdgeInsets.all(24),
          padding: EdgeInsets.only(left: 8, right: 8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              customListTileButton("Official organization", 1),
              const Divider(
                color: Colors.grey,
              ),
              customListTileButton("NGOs", 2),
              const Divider(
                color: Colors.grey,
              ),
              customListTileButton("UNBorder", 3),
              const Divider(
                color: Colors.grey,
              ),
              customListTileButton("Other", 4)
            ],
          )),
    );
  }
}
