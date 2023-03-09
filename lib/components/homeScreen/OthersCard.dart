import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OthersCard extends StatelessWidget {
  OthersCard(
      {super.key,
      required this.email,
      required this.orgName,
      required this.subjectName,
      required this.time,
      required this.color});
  String orgName;
  String time;
  String subjectName;
  String email;
  Color color;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundColor: color,
              radius: 7,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              orgName,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              time,
              style: TextStyle(
                color: Colors.grey[500],
                fontSize: 12,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            FaIcon(
              FontAwesomeIcons.angleRight,
              color: Colors.grey[400],
              size: 15,
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 5,
            horizontal: 25,
          ),
          child: Text(subjectName),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 25,
          ),
          child: Text(
            email,
            style: TextStyle(
              color: Colors.grey,
              overflow: TextOverflow.ellipsis,
            ),
            maxLines: 2,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Divider(
          color: Colors.grey,
        ),
      ],
    );
  }
}
