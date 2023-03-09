import 'package:flutter/material.dart';

import '../constant/const.dart';

class StatusListTile extends StatefulWidget {
  final String title;
  final Color color;

  const StatusListTile({super.key, required this.title, required this.color});

  @override
  State<StatusListTile> createState() => _StatusListTileState();
}

class _StatusListTileState extends State<StatusListTile> {
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

          ? const Icon(
        Icons.check,
        color: ksecColor,
      )
          : const SizedBox(),

      leading: Container(
          height: 32,
          width: 32,
          decoration: BoxDecoration(
            color: widget.color,
            borderRadius: BorderRadius.circular(12),
          )),
    );
  }
}
