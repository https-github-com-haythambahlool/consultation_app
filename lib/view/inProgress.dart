import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/MyExpansion.dart';
import '../components/homeScreen/OrganizationCard.dart';

class inProgress extends StatefulWidget {
  const inProgress({Key? key}) : super(key: key);

  @override
  State<inProgress> createState() => _inProgressState();
}

Size? size;

List<Map<String, String>> list = [
  {
    "name": "Prof.Hipolito Jacobs",
    "DateTime": "17 July 1977",
    "title": "prof.",
    "text2":
        "Est ullm neq fjgsdfb skhdgf jsdhfkj sdjfjb skdhj ksduhfuzsgfsgsjhgjksdbvjk SJKDjksd "
  },
  {
    "name": "Prof.Hipolito Jacobs",
    "DateTime": "17 July 1977",
    "title": "prof.",
    "text2":
        "Est ullm neq fjgsdfb skhdgf jsdhfkj sdjfjb skdhj ksduhfuzsgfsgsjhgjksdbvjk SJKDjksd "
  },
];
List<Map<String, dynamic>> list2 = [
  {
    "name": "Prof.Hipolito Jacobs",
    "DateTime": "17 July 1977",
    "title": "prof.",
    "text2":
        "Est ullm neq fjgsdfb skhdgf jsdhfkj sdjfjb skdhj ksduhfuzsgfsgsjhgjksdbvjk SJKDjksd "
  },
  {
    "name": "Prof.Hipolito Jacobs",
    "DateTime": "17 July 1977",
    "title": "prof.",
    "text2":
        "Est ullm neq fjgsdfb skhdgf jsdhfkj sdjfjb skdhj ksduhfuzsgfsgsjhgjksdbvjk SJKDjksd "
  },
  //  {
  //    "organization": "${OrganizationCard(
  //     mysize: Size.square(1.2),
  //      email: 'ahmed@gmail.com',
  //     hash: 'xfkg',
  //      images: [0, 0],
  //      orgName: 'sfg',
  //     subjectName: 'sdg',
  //      time: '656',
  //    )}"
  // }
];

class _inProgressState extends State<inProgress> {
  @override
  Widget build(BuildContext context) {
    Size mySize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xDAFCF7F5),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      color: Colors.lightBlue,
                      icon: Icon(
                        Icons.chevron_left,
                        size: 40,
                      ),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Text(
                      "In Progress",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                MyExpansion(
                  title: "foreign",
                  mySize: mySize,
                  contents: [
                    ListView.builder(
                        itemCount: list.length,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            margin: EdgeInsets.symmetric(vertical: 20),
                            padding: EdgeInsets.only(top: 25, left: 5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.white),
                            height: 150,
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 5,
                                      backgroundColor: Colors.blue,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      list[index]["name"]!,
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    SizedBox(
                                      width: 80,
                                    ),
                                    Text(
                                      list[index]["DateTime"]!,
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.chevron_right_outlined,
                                      size: 30,
                                      color: Colors.grey,
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  child: Text(list[index]["title"]!),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20),
                                  child: Text(list[index]["text2"]!),
                                ),
                              ],
                            ),
                          );
                        })
                  ],
                ),
                MyExpansion(title: "NGOs", mySize: mySize, contents: [
                  ListView.builder(
                      itemCount: list2.length,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          margin: EdgeInsets.symmetric(vertical: 20),
                          padding: EdgeInsets.only(top: 25, left: 5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.white),
                          height: 150,
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 5,
                                    backgroundColor: Colors.blue,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    list2[index]["name"]!,
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(
                                    width: 80,
                                  ),
                                  Text(
                                    list2[index]["DateTime"]!,
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Icons.chevron_right_outlined,
                                    size: 30,
                                    color: Colors.grey,
                                  )
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: Text(list2[index]["title"]!),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: Text(list2[index]["text2"]!),
                              ),
                            ],
                          ),
                        );
                      })
                ]),
                MyExpansion(
                    title: "Official Organization",
                    mySize: mySize,
                    contents: [
                      ListView.builder(
                          itemCount: list.length,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              margin: EdgeInsets.symmetric(vertical: 20),
                              padding: EdgeInsets.only(top: 25, left: 5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.white),
                              height: 150,
                              width: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 5,
                                        backgroundColor: Colors.blue,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        list[index]["name"]!,
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      SizedBox(
                                        width: 80,
                                      ),
                                      Text(
                                        list[index]["DateTime"]!,
                                        style: TextStyle(fontSize: 15),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(
                                        Icons.chevron_right_outlined,
                                        size: 30,
                                        color: Colors.grey,
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20),
                                    child: Text(list[index]["title"]!),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20),
                                    child: Text(list[index]["text2"]!),
                                  ),
                                ],
                              ),
                            );
                          })
                    ]),
                MyExpansion(title: "Others", mySize: mySize, contents: [
                  ListView.builder(
                      itemCount: list.length,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          margin: EdgeInsets.symmetric(vertical: 20),
                          padding: EdgeInsets.only(top: 25, left: 5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.white),
                          height: 150,
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 5,
                                    backgroundColor: Colors.blue,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    list[index]["name"]!,
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(
                                    width: 80,
                                  ),
                                  Text(
                                    list[index]["DateTime"]!,
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Icons.chevron_right_outlined,
                                    size: 30,
                                    color: Colors.grey,
                                  )
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: Text(list[index]["title"]!),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                child: Text(list[index]["text2"]!),
                              ),
                            ],
                          ),
                        );
                      })
                ])
              ],
            ),
          ),
        ),
      ),
    );
  }
}
