import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/theme/custom_theme/text_theme.dart';

class PinkTapeWidget extends StatelessWidget {
  const PinkTapeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: 0.5.w,
        top: 82.h,
        child: Container(
          width: 375.w,
          height: 39.h,
          color: TColors.heartIconColor,
          child: Padding(
            padding: EdgeInsets.only(left: 16.w),
            child: Row(
              children: [
                Image(
                  image:
                  const AssetImage('assets/icons/rocket.png'),
                  width: 20.w,
                  height: 21.h,
                ),
                SizedBox(
                  width: 4.w,
                ),
                Text(
                  '2 общих соблазна',
                  style: TTextAppTheme.appTextTheme.labelSmall,
                ),
                SizedBox(
                  width: 180.w,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.close,
                    color: TColors.textColor,
                    size: 16,
                  ),
                )
              ],
            ),
          ),
        ));
  }
}