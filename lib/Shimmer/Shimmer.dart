import 'package:flutter/cupertino.dart';
import 'package:shimmer/shimmer.dart';

class shimmerWidget extends StatelessWidget {
  final double width;
  final double height;
  final ShapeBorder shapeBorder;
  const shimmerWidget.rectangular(
      {this.width = double.infinity,
      required this.height,
      this.shapeBorder = const RoundedRectangleBorder()});

  const shimmerWidget.circular(
      {required this.width, required this.height, required this.shapeBorder});

  @override
  Widget build(BuildContext context) => Shimmer.fromColors(
      child: Container(
        width: width,
        height: height,
        decoration: ShapeDecoration(shape: shapeBorder),
      ),
      baseColor: CupertinoColors.systemGrey,
      highlightColor: CupertinoColors.systemGrey3);
}
