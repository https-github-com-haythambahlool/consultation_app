import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class foreign extends StatefulWidget {
  const foreign({Key? key}) : super(key: key);

  @override
  State<foreign> createState() => _foreignState();
}

List<Map<String, String>> listUsres = [
  {'title': 'Haytham Bahlool', 'number': '0597581315'},
  {'title': 'ahmed khatib', 'number': '0597581315'},
  {'title': 'mohammed ahmed', 'number': '0597581315'},
  {'title': 'khalil hussein', 'number': '0597581315'},
  {'title': 'Alaa ibraheem', 'number': '0597581315'},
  {'title': 'Alaa ibraheem', 'number': '0597581315'},
  {'title': 'Alaa ibraheem', 'number': '0597581315'},
  {'title': 'Alaa ibraheem', 'number': '0597581315'},
  {'title': 'Alaa ibraheem', 'number': '0597581315'},
  {'title': 'Alaa ibraheem', 'number': '0597581315'},
  {'title': 'Alaa ibraheem', 'number': '0597581315'},
  {'title': 'Alaa ibraheem', 'number': '0597581315'},
  {'title': 'khalil hussein', 'number': '0597581315'},
];

List<Map<String, String>> listProf = [
  {"title": "Ozgan Turk", "number": "05325656526"},
  {"title": "Ozgan Turk", "number": "05325656526"},
  {"title": "Ozgan Turk", "number": "05325656526"},
  {"title": "Ozgan Turk", "number": "05325656526"},
  {"title": "Ozgan Turk", "number": "05325656526"},
  {"title": "Ozgan Turk", "number": "05325656526"},
  {"title": "Ozgan Turk", "number": "05325656526"},
  {"title": "Ozgan Turk", "number": "05325656526"}
];

class _foreignState extends State<foreign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  children: [
                    Expanded(
                        child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50)),
                          suffixIcon: Icon(
                            Icons.cancel,
                            size: 30,
                          ),
                          prefixIcon: Icon(
                            Icons.search,
                            size: 30,
                          ),
                          hintText: "Search",
                          hintStyle: TextStyle(fontSize: 20)),
                    )),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Cancel",
                          style:
                              TextStyle(color: Colors.lightBlue, fontSize: 20),
                        ))
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "Foregin",
                      style: TextStyle(fontSize: 20),
                    ),
                    Container(
                      height: 300,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: listUsres.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            title: Text(listUsres[index]["title"]!),
                            subtitle: Row(
                              children: [
                                Icon(
                                  Icons.call,
                                  size: 15,
                                ),
                                Text(listUsres[index]["number"]!)
                              ],
                            ),
                            leading: Icon(Icons.perm_identity_sharp),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        "NGOs",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Container(
                      height: 330,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: listProf.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            title: Text(listProf[index]["title"]!),
                            subtitle: Row(
                              children: [
                                Icon(Icons.call),
                                Text(listProf[index]["number"]!)
                              ],
                            ),
                            leading: Icon(Icons.perm_identity_sharp),
                          );
                        },
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
