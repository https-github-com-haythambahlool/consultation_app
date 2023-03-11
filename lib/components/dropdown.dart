import 'package:flutter/material.dart';

class showDropDown extends StatelessWidget {
  const showDropDown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Center(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: Colors.white),
            width: 250,
            height: 250,
            child: Column(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("assets/images/1.jpg"),
                    ),
                    Text("Osama Mohammed"),
                    Text("admin")
                  ],
                ),
                SizedBox(
                  child: Divider(
                    thickness: 1,
                  ),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    IconButton(
                      icon: Icon(Icons.language),
                      onPressed: () {},
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text("Arabic")
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    IconButton(
                      icon: Icon(Icons.logout),
                      onPressed: () {},
                    ),
                    Text("Logout")
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
