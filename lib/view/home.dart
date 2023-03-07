import 'package:consultation_app/constant/const.dart';
import 'package:consultation_app/view/NewInbox.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/MyExpansion.dart';
import '../components/homeScreen/OrganizationCard.dart';
import '../components/homeScreen/OthersCard.dart';
import '../components/homeScreen/StatusCard.dart';
import '../components/homeScreen/Tags.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size mysize = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: GestureDetector(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (BuildContext context) {
            return NewInbox();
          }));
        },
        child: Container(
            //  margin: EdgeInsets.all(10),
            padding: const EdgeInsets.all(15),
            decoration: const BoxDecoration(color: Colors.white),
            child: Row(
              children: const [
                Icon(
                  Icons.add_circle,
                  color: Colors.blue,
                  size: 30,
                ),
                Text(
                  'New Inbox',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            )),
      ),
      backgroundColor: backgrondColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: FaIcon(
            FontAwesomeIcons.barsStaggered,
            color: Colors.black,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 23,
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('assets/images/1.jpg'),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 40,
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
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      StatusCard(
                          circleColor: Colors.red, num: 9, statusName: 'Inbox'),
                      const SizedBox(
                        height: 10,
                      ),
                      StatusCard(
                          circleColor: Colors.blue,
                          num: 9,
                          statusName: 'In Progress')
                    ],
                  ),
                  Column(
                    children: [
                      StatusCard(
                          circleColor: Colors.yellow,
                          num: 9,
                          statusName: 'Pending'),
                      const SizedBox(
                        height: 10,
                      ),
                      StatusCard(
                          circleColor: Colors.green,
                          num: 9,
                          statusName: 'Completed')
                    ],
                  )
                ],
              ),
            ),
            MyExpansion(
              mySize: mysize,
              contents: [
                OrganizationCard(
                  mysize: mysize,
                  email:
                      'Here we add the subject Here we add the subject Here we add the subject Here we add the subject',
                  hash: '#Urgent # Egyptian Military',
                  images: ['assets/images/1.jpg', 'assets/images/2.png'],
                  orgName: 'Oraganization Name',
                  subjectName: 'Here we add the subject',
                  time: 'Today, 11:00 AM',
                ),
                OrganizationCard(
                  mysize: mysize,
                  email:
                      'Here we add the subject Here we add the subject Here we add the subject Here we add the subject',
                  hash: '#Urgent # Egyptian Military',
                  images: ['assets/images/1.jpg', 'assets/images/2.png'],
                  orgName: 'Oraganization Name',
                  subjectName: 'Here we add the subject',
                  time: 'Today, 11:00 AM',
                )
              ],
              title: 'Official Organization',
            ),
            MyExpansion(mySize: mysize, contents: [], title: 'NGOs'),
            MyExpansion(
                mySize: mysize,
                contents: [
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
                title: 'Others'),
            Padding(
              padding: EdgeInsets.only(top: 25, left: 15),
              child: Text(
                'Tags',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 15,
              ),
              padding: const EdgeInsets.only(
                top: 10,
                left: 10,
                right: 10,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Tags(
                tags: const [
                  'All Tags',
                  '#Urgant',
                  '#Egytian Military',
                  '#New',
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
