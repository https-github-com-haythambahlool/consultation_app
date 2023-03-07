import 'package:flutter/material.dart';

import '../constant/const.dart';

class CategoryListTile extends StatefulWidget {
  final String title;

  CategoryListTile({super.key, required this.title});

  @override
  State<CategoryListTile> createState() => _CategoryListTileState();
}

class _CategoryListTileState extends State<CategoryListTile> {
  bool visible = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        setState(() {
          visible = !visible;
        });
      },
      title: Text(widget.title),
      trailing: visible
          ? Icon(
              Icons.check,
              color: ksecColor,
            )
          : SizedBox(),
    );
  }
}
