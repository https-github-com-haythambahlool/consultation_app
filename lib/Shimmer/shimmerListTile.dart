import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Shimmer.dart';

class foodShimmer extends StatelessWidget {
  const foodShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListTile(
        leading: shimmerWidget.circular(
            width: 64,
            height: 64,
            shapeBorder: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        title: shimmerWidget.rectangular(height: 16),
      ),
    );
  }
}
