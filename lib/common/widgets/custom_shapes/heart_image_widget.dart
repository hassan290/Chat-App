import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/constants/colors.dart';

class HeartImageWidget extends StatelessWidget {
  const HeartImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60.h,
      height: 60.h,
      decoration: BoxDecoration(
        color: TColors.borderHeartColor,
        borderRadius: BorderRadius.all(
          Radius.circular(60.r),
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: const Center(
          child: Image(
            width: 24,
            height: 24,
            fit: BoxFit.cover,
            image: AssetImage('assets/images/heart_message.png'),
          ),
        ),
      ),
    );
  }
}