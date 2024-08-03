import 'package:chat_task/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/helpers/helper_clipper.dart';

class HeaderSectionWidget extends StatelessWidget {
  const HeaderSectionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 157.h,
      child: ClipPath(
        clipper: THeaderClipper(),
        child: Container(
          color: TColors.headerColor,
        ),
      ),
    );
  }
}