import 'package:consultation_app/components/MyExpansion.dart';
import 'package:consultation_app/constant/const.dart';
import 'package:consultation_app/view/category_screen.dart';
import 'package:consultation_app/view/statuses_screen.dart';
import 'package:consultation_app/view/tags_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import '../components/AddImageCard.dart';
import '../components/OrganizationDetails.dart/CommentCard.dart';
import '../components/OrganizationDetails.dart/CommentField.dart';
import '../components/my_app_bar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class NewInbox extends StatefulWidget {
  const NewInbox({super.key});

  @override
  State<NewInbox> createState() => _NewInboxState();
}

class _NewInboxState extends State<NewInbox> {
  @override
  Widget build(BuildContext context) {
    Size mySize = MediaQuery.of(context).size;
    ImagePicker picker = ImagePicker();
    XFile? image;
    return Scaffold(
      backgroundColor: backgrondColor,
      appBar: MyAppBar(
        title: AppLocalizations.of(context)!.newInbox,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(
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
                    Theme(
                      data: Theme.of(context).copyWith(
                        colorScheme: ThemeData().colorScheme.copyWith(
                              primary: Colors.red,
                            ),
                      ),
                      child: TextField(
                        onChanged: (value) {},
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(top: 15),
                            border: InputBorder.none,
                            hintText: AppLocalizations.of(context)!.sender,
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                            ),
                            prefixIcon: Icon(
                              Icons.person,
                              color: Colors.grey,
                              size: 32,
                            ),
                            suffixIcon: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.info_outline),
                              color: ksecColor,
                              iconSize: 32,
                            )),
                      ),
                    ),
                    const Divider(
                      color: Colors.grey,
                    ),
                    TextField(
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 15),
                        border: InputBorder.none,
                        hintText: AppLocalizations.of(context)!.mobile,
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                        prefixIcon: Icon(
                          Icons.phone_iphone,
                          color: Colors.grey,
                          size: 32,
                        ),
                      ),
                    ),
                    const Divider(
                      color: Colors.grey,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context) {
                          return CategoryScreen();
                        }));
                      },
                      child: Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              AppLocalizations.of(context)!.category,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(
                              width: 172,
                            ),
                            Text(
                              AppLocalizations.of(context)!.other,
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            FaIcon(
                              FontAwesomeIcons.angleRight,
                              color: Colors.grey,
                              size: 20,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextField(
                        onChanged: (value) {},
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 15),
                          border: InputBorder.none,
                          hintText: AppLocalizations.of(context)!.titleOfMail,
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 24,
                          ),
                        ),
                      ),
                      const Divider(
                        color: Colors.grey,
                      ),
                      TextField(
                        onChanged: (value) {},
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: AppLocalizations.of(context)!.description,
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 18,
                          ),
                        ),
                      )
                    ],
                  )),
              SizedBox(
                height: 20,
              ),
              Container(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // DateCard(
                      //     icon: Icons.date_range,
                      //     dateName: 'Date',
                      //     color: Colors.red,
                      //     dateDescription: 'Tuesday, July 5, 2022'),
                      ExpansionTile(
                          title: Text(AppLocalizations.of(context)!.date,
                              style: TextStyle(fontSize: 18)),
                          leading: Icon(
                            Icons.date_range,
                            color: Colors.red,
                          ),
                          subtitle: Text(
                            'Tuesday, July 5, 2022',
                            style: TextStyle(color: ksecColor, fontSize: 12),
                          ),
                          children: [
                            SfDateRangePicker(
                              selectionMode:
                                  DateRangePickerSelectionMode.single,
                              initialSelectedRange: PickerDateRange(
                                  DateTime.now()
                                      .subtract(const Duration(days: 4)),
                                  DateTime.now().add(const Duration(days: 3))),
                            ),
                          ]),
                      const Divider(
                        color: Colors.grey,
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.archive,
                          color: Colors.grey,
                        ),
                        title: Text(
                          AppLocalizations.of(context)!.archiveNumber,
                          style: TextStyle(fontSize: 18),
                        ),
                        subtitle: TextField(
                          onChanged: (value) {},
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: '2022/6019',
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      )
                    ],
                  )),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return TagsScreen();
                  }));
                },
                child: Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Row(
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
                        AppLocalizations.of(context)!.tags,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        width: 258,
                      ),
                      FaIcon(
                        FontAwesomeIcons.angleRight,
                        color: Colors.grey[400],
                        size: 20,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return StatusScreen();
                  }));
                },
                child: Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Row(
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
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Text(
                          AppLocalizations.of(context)!.inbox,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: 220,
                      ),
                      FaIcon(
                        FontAwesomeIcons.angleRight,
                        color: Colors.grey[400],
                        size: 20,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(15),
                width: double.infinity,
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
                    TextField(
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: AppLocalizations.of(context)!.addDecision,
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.all(12),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25)),
                child: TextButton(
                  onPressed: () async {
                    await picker.pickImage(source: ImageSource.gallery);
                  },
                  child: Text(
                    AppLocalizations.of(context)!.addImage,
                    style: TextStyle(
                      color: ksecColor,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              ExpansionTile(
                  title: Text(
                AppLocalizations.of(context)!.activity,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              )),
              CommentField(),
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
