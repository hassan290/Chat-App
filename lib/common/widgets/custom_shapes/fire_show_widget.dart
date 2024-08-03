import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FireShowWidget extends StatelessWidget {
  const FireShowWidget({
    super.key, required this.positionFromRight, required this.positionFromTop,
  });
  final double positionFromRight;
  final double positionFromTop;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: positionFromRight.w,
      top: positionFromTop.h,
      child: Image(
        image: const AssetImage('assets/icons/fire.png'),
        width: 54.w,
        height: 17.h,
      ),
    );
  }
}