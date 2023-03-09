import 'package:consultation_app/components/my_app_bar.dart';
import 'package:consultation_app/components/status_list_tile.dart';
import 'package:consultation_app/constant/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class StatusScreen extends StatefulWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  _StatusScreenState createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  int value = 0;
  Widget customListTileButton(String text, int index, Color color) {
    return ListTile(
      onTap: () {
        setState(() {
          value = index;
        });
      },
      title: Text(
        text,
      ),
      leading: Container(
        width: 36,
        height: 36,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      trailing: (value == index)
          ? Icon(
              Icons.check,
              color: ksecColor,
            )
          : SizedBox(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgrondColor,
      appBar: MyAppBar(
        title: AppLocalizations.of(context)!.status,
      ),
      body: Container(
          margin: EdgeInsets.all(24),
          padding: EdgeInsets.only(left: 8, right: 8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              customListTileButton(
                  AppLocalizations.of(context)!.inbox, 1, Colors.red),
              const Divider(
                color: Colors.grey,
              ),
              customListTileButton(
                  AppLocalizations.of(context)!.pending, 2, Colors.amber),
              const Divider(
                color: Colors.grey,
              ),
              customListTileButton(
                  AppLocalizations.of(context)!.inProgress, 3, Colors.blue),
              const Divider(
                color: Colors.grey,
              ),
              customListTileButton(
                  AppLocalizations.of(context)!.completed, 4, Colors.green)
            ],
          )),
    );
  }
}
