import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/constants/colors.dart';

class SmallMaskWidget extends StatelessWidget {
  const SmallMaskWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 40.w,
          height: 20.h,
          decoration: const BoxDecoration(
            color: TColors.borderMaskColor,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        ),
        Positioned(
          left: 5.w,
          top: 4.5.h,
          child: Image(image: const AssetImage('assets/images/mask/mask_small.png'),height: 12.h,width: 30.w,fit: BoxFit.contain,),
        ),

      ],
    );
  }
}