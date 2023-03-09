import 'package:flutter/material.dart';

import '../constant/const.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const MyAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 100,
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      title: Text(title,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 18,
          )),
      centerTitle: true,
      leading: Padding(
        padding: EdgeInsets.only(left: 12),
        child: TextButton(
          child: Text(
            AppLocalizations.of(context)!.cancel,
            style: TextStyle(
              color: ksecColor,
              fontSize: 20,
            ),
          ),
          onPressed: () {},
        ),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 12),
          child: TextButton(
            child: Text(
              AppLocalizations.of(context)!.done,
              style: TextStyle(
                color: ksecColor,
                fontSize: 20,
              ),
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(54);
}
