import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Shimmer/shimmerListTile.dart';

class testShimer extends StatelessWidget {
  const testShimer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return foodShimmer();
          }),
    );
  }
}
