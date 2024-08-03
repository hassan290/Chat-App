import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/constants/colors.dart';

class OfflineChatWidget extends StatelessWidget {
  const OfflineChatWidget({
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
          left: 2.w,
          top: 0.5.h,
          child: const Icon(Icons.mic_off,size: 20,color: TColors.letterBorderColor,),
        ),
      ],
    );
  }
}