import 'package:consultation_app/components/MyExpansion.dart';
import 'package:consultation_app/constant/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/AddImageCard.dart';
import '../components/OrganizationDetails.dart/CommentCard.dart';
import '../components/OrganizationDetails.dart/CommentField.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class OfficialOrganization extends StatefulWidget {
  const OfficialOrganization({super.key});

  @override
  State<OfficialOrganization> createState() => _OfficialOrganizationState();
}

class _OfficialOrganizationState extends State<OfficialOrganization> {
  @override
  Widget build(BuildContext context) {
    Size mySize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: backgrondColor,
      appBar: AppBar(
        leadingWidth: 186,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: Padding(
          padding: const EdgeInsets.only(right: 0, left: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: kprimColor,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              Text(
                AppLocalizations.of(context)!.emailDetails,
                style: TextStyle(
                  color: kprimColor,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: FaIcon(
              FontAwesomeIcons.ellipsis,
              color: kprimColor,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.user,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Sport Ministry',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            Text(
                              AppLocalizations.of(context)!
                                  .officialOrganization,
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 60,
                        ),
                        Column(
                          children: [
                            Text(
                              'Today, 11:00 AM',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              'Arch 2022/1032',
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    Theme(
                      data: Theme.of(context)
                          .copyWith(dividerColor: Colors.transparent),
                      child: ExpansionTile(
                        tilePadding: EdgeInsets.all(0),
                        textColor: Colors.black,
                        iconColor: Colors.black,
                        title: Text(
                          AppLocalizations.of(context)!.titleOfMail,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        children: [
                          Text(
                            'Here we add the subject Here we add the subject ctthe subj Here we add the subj the subj Here we add the subject Here we  ere we add the subject Here we add the subject Here wt Here we add the subdd the subject',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.hashtag,
                          color: Colors.grey[600],
                          size: 25,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '#Urgant',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '#Egyptian Military',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    FaIcon(
                      FontAwesomeIcons.angleRight,
                      color: Colors.grey[400],
                      size: 20,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.tag,
                          color: Colors.grey[600],
                          size: 25,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: Text(
                            AppLocalizations.of(context)!.pending,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                    FaIcon(
                      FontAwesomeIcons.angleRight,
                      color: Colors.grey[400],
                      size: 20,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.decision,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been ',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.addImage,
                      style: TextStyle(
                        color: kprimColor,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    AddImageCard(
                      image: 'assets/images/1.jpg',
                      name: 'Image',
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    AddImageCard(
                      image: 'assets/images/2.png',
                      name: 'Image2',
                    ),
                  ],
                ),
              ),
              MyExpansion(
                  mySize: mySize,
                  contents: [
                    CommentCard(
                      mySize: mySize,
                      image: 'assets/images/1.jpg',
                      Comment: 'The issue tranford to AAA aaa',
                      name: 'Hussam',
                      time: 'Today, 11:00 AM',
                    ),
                    CommentCard(
                      image: 'assets/images/2.png',
                      Comment: 'The issue tranford to BBB bbb',
                      name: 'Ali',
                      time: 'Today, 11:00 AM',
                      mySize: mySize,
                    ),
                    CommentField()
                  ],
                  title: AppLocalizations.of(context)!.activity),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
