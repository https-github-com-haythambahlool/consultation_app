import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddImageCard extends StatelessWidget {
  AddImageCard({super.key, required this.image, required this.name});
  String image;
  String name;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.remove_circle,
                color: Colors.red,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image(
                    width: 35,
                    height: 35,
                    image: AssetImage(
                      image,
                    ),
                  ),
                ),
              ),
              Text(
                name,
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
          FaIcon(
            FontAwesomeIcons.gripLines,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
