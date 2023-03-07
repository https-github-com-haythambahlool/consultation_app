import 'package:consultation_app/components/my_app_bar.dart';
import 'package:consultation_app/components/status_list_tile.dart';
import 'package:consultation_app/constant/const.dart';
import 'package:flutter/material.dart';

import '../components/category_list_tile.dart';

class StatusScreen extends StatefulWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  _StatusScreenState createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  final List<StatusListTile> statuses = <StatusListTile>[
    StatusListTile(title: 'Inbox', color: Colors.red),
    StatusListTile(title: 'Pending', color: Colors.amber),
    StatusListTile(title: 'In Progress', color: Colors.blue),
    StatusListTile(title: 'Completed', color: Colors.green)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgrondColor,
      appBar: MyAppBar(
        title: 'Status',
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
              itemCount: statuses.length,
              itemBuilder: (BuildContext context, int index) {
                return statuses[index];
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(
                    color: Colors.grey,
                  ))),
    );
  }
}
