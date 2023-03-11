import 'package:flutter/material.dart';

class StatusCard extends StatelessWidget {
  StatusCard(
      {super.key,
      required this.circleColor,
      required this.num,
      required this.statusName});
  Color circleColor;
  String num;
  String statusName;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      height: 85,
      width: 170,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(28),
          boxShadow: [
            BoxShadow(
              color: Colors.grey[300]!,
              spreadRadius: 0.1,
              blurRadius: 15,
              offset: Offset(3, 3),
            )
          ]),
      child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 12,
                  backgroundColor: circleColor,
                ),
                Text(
                  '$num',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
            Text(
              '$statusName',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.grey[400],
              ),
            ),
          ]),
    );
  }
}
