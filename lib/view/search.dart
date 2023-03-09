import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../components/homeScreen/OrganizationCard.dart';
import '../components/homeScreen/OthersCard.dart';
import '../routes_manager.dart';

class SearchScreen extends StatefulWidget {
  static const String id = "SearchPage";

  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    Size mySize = MediaQuery.of(context).size;
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
            const SizedBox(height: 10),
            Row(
              // mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 340,
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
                // SizedBox(width: 17),
                IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, Routes.filterScreenRoute);
                    },
                    icon: const Icon(
                      Icons.filter_alt_outlined,
                      color: Colors.blue,
                    )),

              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('25 Completed ',style: TextStyle(color: Color(0xff7C7C7C))),
                  TextButton(onPressed: (){}, child: const Text('show'))
                ],
              ),
            ),
            const Divider(color: Color(0xffAFAFAF),height: 5),
            const SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Official Organization ',style: TextStyle(color: Color(0xff7C7C7C))),
                  Text('1 Found ',style: TextStyle(color: Color(0xff7C7C7C))),
                ],
              ),
            ),
            const SizedBox(height: 10),
            OrganizationCard(
              mysize: mySize,
              email:
              'Here we add the subject Here we add the subject Here we add the subject Here we add the subject',
              hash: '#Urgent # Egyptian Military',
              images: ['assets/images/1.jpg', 'assets/images/2.png'],
              orgName: 'Oraganization Name',
              subjectName: 'Here we add the subject',
              time: 'Today, 11:00 AM',
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Other ',style: TextStyle(color: Color(0xff7C7C7C))),
                  Text('2 Found ',style: TextStyle(color: Color(0xff7C7C7C))),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  OthersCard(
                    color: Colors.red,
                    email:
                    'Here we add the subject Here we add the subject Here we add the subject Here we add the subject',
                    orgName: 'Oraganization Name',
                    subjectName: 'Here we add the subject',
                    time: 'Today, 11:00 AM',
                  ),
                  OthersCard(
                    color: Colors.yellow,
                    email:
                    'Here we add the subject Here we add the subject Here we add the subject Here we add the subject',
                    orgName: 'Oraganization Name',
                    subjectName: 'Here we add the subject',
                    time: 'Today, 11:00 AM',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
