import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BigMaskWidget extends StatelessWidget {
  const BigMaskWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 100.w,
      top: 21.h,
      child: Image(
        image: const AssetImage('assets/images/mask/big_mask.png'),
        width: 174.w,
        height: 68.h,
      ),
    );
  }
}
