import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class testShimer extends StatelessWidget {
  const testShimer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              children: [
                Shimmer.fromColors(
                  baseColor: Colors.grey[200]!,
                  highlightColor: Colors.white,
                  child: Container(
                    height: 85,
                    width: 170,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Shimmer.fromColors(
                  baseColor: Colors.grey[200]!,
                  highlightColor: Colors.white,
                  child: Container(
                    height: 85,
                    width: 170,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Shimmer.fromColors(
                  baseColor: Colors.grey[200]!,
                  highlightColor: Colors.white,
                  child: Container(
                    height: 85,
                    width: 170,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Shimmer.fromColors(
                  baseColor: Colors.grey[200]!,
                  highlightColor: Colors.white,
                  child: Container(
                    height: 85,
                    width: 170,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Shimmer.fromColors(
              baseColor: Colors.grey[200]!,
              highlightColor: Colors.white,
              child: Container(
                height: 50,
                width: 350,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Shimmer.fromColors(
              baseColor: Colors.grey[200]!,
              highlightColor: Colors.white,
              child: Container(
                height: 50,
                width: 350,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Shimmer.fromColors(
              baseColor: Colors.grey[200]!,
              highlightColor: Colors.white,
              child: Container(
                height: 50,
                width: 350,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Shimmer.fromColors(
              baseColor: Colors.grey[200]!,
              highlightColor: Colors.white,
              child: Container(
                height: 130,
                width: 350,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Shimmer.fromColors(
              baseColor: Colors.grey[200]!,
              highlightColor: Colors.white,
              child: Container(
                height: 50,
                width: 350,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
