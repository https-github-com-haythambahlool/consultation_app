import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constant/const.dart';

class SearchSenderScreen extends StatelessWidget {
  const SearchSenderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 100,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: const Text("Sender",
            style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w500)),
        centerTitle: true,
        leading: Container(
          margin: const EdgeInsets.only(left: 12),
          child: TextButton(
            child: const Text(
              'Cancel',
              style: TextStyle(
                color: ksecColor,
                fontSize: 20,
              ),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: TextButton(
              child: const Text(
                'Done',
                style: TextStyle(
                  color: ksecColor,
                  fontSize: 20,
                ),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 48,
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: TextFormField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(top: 10),
                filled: true,
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(35),
                  borderSide: BorderSide(
                    color: Colors.grey[300]!,
                    width: 0.5,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(35),
                  borderSide: BorderSide(
                    color: Colors.grey[300]!,
                    width: 0.5,
                  ),
                ),
                hintText: 'Search',
                hintStyle: TextStyle(color: Colors.grey[400]),
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.cancel),
                ),
                prefixIconColor: Colors.grey[400],
                prefixIcon: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: FaIcon(
                    FontAwesomeIcons.magnifyingGlass,
                    size: 17,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Divider(color: Colors.grey, indent: 17),
          const SizedBox(height: 18),
          const Padding(
            padding: EdgeInsets.only(left: 17),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "\"Sport\"",
                  style: TextStyle(fontSize: 14),
                )),
          ),
          const SizedBox(height: 10),
          const Divider(color: Colors.grey, indent: 17),
          const SizedBox(height: 18),
          const Padding(
            padding: EdgeInsets.only(left: 17),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Official ORG",
                  style: TextStyle(fontSize: 12,color: Color(0xFFAFAFAF)),
                )),
          ),
          const Divider(color: Colors.grey, indent: 17),
          Padding(
            padding: EdgeInsets.only(left: 17),
            child: Row(
              children: const [
                Icon(Icons.person),
                SizedBox(width: 8),
                Text('Sender 1',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),)

              ],
            ),
          ),
          const Divider(color: Colors.grey, indent: 17),
          Padding(
            padding: const EdgeInsets.only(left: 17),
            child: Row(
              children:  [
                Icon(Icons.person,color: Colors.grey.shade500),
                SizedBox(width: 8),
                Text('Sender 1',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),)

              ],
            ),
          ),
          const Divider(color: Colors.grey, indent: 17),
          const SizedBox(height: 18),
          const Padding(
            padding: EdgeInsets.only(left: 17),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Other",
                  style: TextStyle(fontSize: 12,color: Color(0xFFAFAFAF)),
                )),
          ),
          const Divider(color: Colors.grey, indent: 17),
          Padding(
            padding: const EdgeInsets.only(left: 17),
            child: Row(
              children: const [
                Icon(Icons.person),
                SizedBox(width: 8),
                Text('Sender 1',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),)

              ],
            ),
          ),
          const Divider(color: Colors.grey, indent: 17),
          Padding(
            padding: EdgeInsets.only(left: 17),
            child: Row(
              children: [
                Icon(Icons.person),
                const SizedBox(width: 8),
                const Text('Sender 1',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),)

              ],
            ),
          ),




        ],
      ),
    );
  }
}
