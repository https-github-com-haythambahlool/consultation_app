import 'package:consultation_app/components/my_app_bar.dart';
import 'package:consultation_app/constant/const.dart';
import 'package:flutter/material.dart';

import '../components/homeScreen/Tags.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TagsScreen extends StatefulWidget {
  const TagsScreen({Key? key}) : super(key: key);

  @override
  _TagsScreenState createState() => _TagsScreenState();
}

class _TagsScreenState extends State<TagsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgrondColor,
        appBar: MyAppBar(
          title: AppLocalizations.of(context)!.tags,
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 24, right: 24, top: 24),
              padding: EdgeInsets.all(12),
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
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 24, right: 24),
              padding: EdgeInsets.only(left: 12, right: 12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
              child: TextField(
                onChanged: (value) {},
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: AppLocalizations.of(context)!.addNewTag,
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
