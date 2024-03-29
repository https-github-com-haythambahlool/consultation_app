import 'package:consultation_app/constant/const.dart';
import 'package:consultation_app/model_view/AuthApi.dart';
import 'package:consultation_app/model_view/TagsApi.dart';
import 'package:consultation_app/routes_manager.dart';
import 'package:consultation_app/view/testShimmer.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import '../components/MyExpansion.dart';
import '../components/homeScreen/OrganizationCard.dart';
import '../components/homeScreen/OthersCard.dart';
import '../components/homeScreen/StatusCard.dart';
import '../components/homeScreen/Tags.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../model_view/CategoriesApi.dart';
import '../model_view/StatusApi.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isLoading = true;

  // IconData iconLight = Icon(Icons.wb_sunny) as IconData;
  // IconData iconDark = Icon(Icons.nights_stay) as IconData;
  @override
  Widget build(BuildContext context) {
    Size mysize = MediaQuery.of(context).size;

    var auth = Provider.of<Auth>(context);
    var status = Provider.of<StatusApi>(context);
    var category = Provider.of<CategoriesApi>(context);
    var tags = Provider.of<TagsApi>(context);
    category.getSingleCategores(auth.token!.token, 1);
    category.getSingleCategores(auth.token!.token, 2);
    category.getSingleCategores(auth.token!.token, 3);
    status.getAllStatus(auth.token!.token, true);
    category.getAllCategories(auth.token!.token);
    tags.getAlltags(auth.token!.token);

    return status.isLoading || category.isLoading || tags.isLoading
        ? const testShimer()
        : Scaffold(
            bottomNavigationBar: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, Routes.newInBoxRoute);
              },
              child: Container(
                  //  margin: EdgeInsets.all(10),
                  padding: const EdgeInsets.all(15),
                  decoration: const BoxDecoration(color: Colors.white),
                  child: Row(
                    textBaseline: TextBaseline.alphabetic,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.add_circle,
                        color: kprimColor,
                        size: 30,
                      ),
                      Text(
                        AppLocalizations.of(context)!.newInbox,
                        style: const TextStyle(
                          color: kprimColor,
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
                leading: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: IconButton(
                    onPressed: () {
                      //Navigator.pushNamed(context, Routes.searchRoute);
                    },
                    icon: const Icon(FontAwesomeIcons.barsStaggered,
                        color: Colors.black),
                    // FontAwesomeIcons.barsStaggered,
                    // color: Colors.black,
                  ),
                ),
                actions: []),
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 40,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, Routes.searchRoute);
                      },
                      child: Container(
                        margin: EdgeInsets.all(2),
                        // color: Colors.grey.shade400,
                        width: 378,
                        height: 48,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        child: Row(
                          children: const [
                            Icon(
                              Icons.search,
                              color: Color(0xffBEBEBE),
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Serach',
                              style: TextStyle(
                                  fontSize: 12, color: Color(0xffBEBEBE)),
                            )
                          ],
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
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, Routes.inProgressRoute);
                              },
                              child: StatusCard(
                                  circleColor: Colors.red,
                                  num:
                                      // status.allStatus != null &&
                                      //         status.allStatus != []
                                      status.allStatus[0].mailsCount!,
                                  //   : '0',
                                  statusName:
                                      AppLocalizations.of(context)!.inbox),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, Routes.inProgressRoute);
                              },
                              child: StatusCard(
                                  circleColor: Colors.blue,
                                  num: status.allStatus[3].mailsCount!,
                                  statusName:
                                      AppLocalizations.of(context)!.inProgress),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, Routes.inProgressRoute);
                              },
                              child: StatusCard(
                                  circleColor: Colors.yellow,
                                  num: status.allStatus[1].mailsCount!,
                                  statusName:
                                      AppLocalizations.of(context)!.pending),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, Routes.inProgressRoute);
                              },
                              child: StatusCard(
                                  circleColor: Colors.green,
                                  num: status.allStatus[2].mailsCount!,
                                  statusName:
                                      AppLocalizations.of(context)!.completed),
                            )
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
                      ),
                      // OrganizationCard(
                      //   mysize: mysize,
                      //   senders: category.allCategoriesWithMails[1].senders!,
                      // ),
                    ],
                    title: AppLocalizations.of(context)!.officialOrganization,
                  ),
                  MyExpansion(
                      mySize: mysize,
                      contents: [],
                      title: AppLocalizations.of(context)!.ngos),
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
                      title: AppLocalizations.of(context)!.other),
                  Padding(
                    padding: EdgeInsets.only(top: 25, left: 15),
                    child: Text(
                      AppLocalizations.of(context)!.tags,
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
                      tags: tags.allTags,
                      // List<String>.generate(tags.allTags.length,
                      //     (index) {
                      //   return tags.allTags[index].name;
                      // }),
                    ),
                  ),

                  //     title: AppLocalizations.of(context)!.other),
                  // Padding(
                  //   padding: EdgeInsets.only(top: 25, left: 15, right: 15),
                  //   child: Text(
                  //     AppLocalizations.of(context)!.tags,
                  //     style: Theme.of(context).textTheme.headline6,
                  //   ),
                  // ),
                  // Container(
                  //   margin: const EdgeInsets.symmetric(
                  //     horizontal: 15,
                  //     vertical: 15,
                  //   ),
                  //   padding: const EdgeInsets.only(
                  //     top: 10,
                  //     left: 10,
                  //     right: 10,
                  //   ),
                  //   decoration: BoxDecoration(
                  //     color: Colors.white,
                  //     borderRadius: BorderRadius.circular(25),
                  //   ),
                  //   child: Tags(
                  //     tags: const [
                  //       'All Tags',
                  //       '#Urgant',
                  //       '#Egytian Military',
                  //       '#New',
                ],
              ),
            ));
  }
}
