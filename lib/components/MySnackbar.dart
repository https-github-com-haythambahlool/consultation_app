import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';

class MySnackbar {
  SnackBar mySnackBar(
      {required String body,
      required String title,
      required ContentType type}) {
    return SnackBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      behavior: SnackBarBehavior.floating,
      content: Stack(
        children: [
          AwesomeSnackbarContent(
            title: '',
            message: '',
            contentType: type,
            inMaterialBanner: true,
          ),
          Container(
            // height: 75,
            width: 400,
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 22, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: title == '' ? 0 : 10,
                ),
                SizedBox(
                  width: 200,
                  child: Center(
                    child: Text(
                      body,
                      style: const TextStyle(
                          textBaseline: TextBaseline.alphabetic,
                          overflow: TextOverflow.fade,
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
                      maxLines: 2,
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
