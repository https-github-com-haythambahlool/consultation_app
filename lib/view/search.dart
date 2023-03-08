import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  static const String id = "SearchPage";

  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    size: 24,
                    color: Color(0xFF6589FF),
                  ),
                  onPressed: () {},
                ),
                const Text(
                  "Home",
                  style: TextStyle(color: Colors.blue, fontSize: 16),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 330,
                  margin: const EdgeInsets.only(
                    left: 16,
                    right: 16,
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: TextField(
                      onChanged: (value) {
                        // Method For Searching
                      },
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        suffixIcon: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.close,
                              color: Colors.grey,
                            )),
                        hintText: "sport",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.filter_alt_rounded,
                      color: Colors.blue,
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
