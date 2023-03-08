import 'package:flutter/material.dart';

class MyExpansion extends StatelessWidget {
  MyExpansion({
    super.key,
    required this.mySize,
    required this.contents,
    required this.title,
  });

  final Size mySize;
  List<Widget> contents;
  String title;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
          childrenPadding: const EdgeInsets.all(8.0),
          title: Text(
            title,
            style: Theme.of(context).textTheme.headline6,
          ),
          children: contents),
    );
  }
}
