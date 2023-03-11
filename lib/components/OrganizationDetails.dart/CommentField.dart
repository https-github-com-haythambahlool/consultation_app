import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../constant/const.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CommentField extends StatelessWidget {
  const CommentField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      margin: EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        decoration: InputDecoration(
            contentPadding: EdgeInsets.only(left: 50, bottom: 12, right: 50),
            hintText: AppLocalizations.of(context)!.addNewActivity,
            hintStyle: TextStyle(
              color: Colors.grey[500],
              fontSize: 14,
            ),
            fillColor: Colors.black.withOpacity(0.05),
            filled: true,
            suffixIconConstraints: BoxConstraints(maxHeight: 30, minWidth: 40),
            prefixIconConstraints: BoxConstraints(minHeight: 20, maxWidth: 100),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide(
                  color: Colors.white,
                  width: 0.0,
                )),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide(
                  color: Colors.white,
                  width: 0.0,
                )),
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: CircleAvatar(
                radius: 10,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('assets/images/2.png'),
              ),
            ),
            suffixIcon: FaIcon(
              FontAwesomeIcons.solidPaperPlane,
              color: kprimColor,
              size: 20,
            )),
      ),
    );
  }
}
