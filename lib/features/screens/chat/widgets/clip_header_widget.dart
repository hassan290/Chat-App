import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/helpers/helper_clipper.dart';

class ClipHeaderWidget extends StatelessWidget {
  const ClipHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 135.h,
      child: ClipPath(
        clipper: THeaderClipper(),
        child: Container(
          color: TColors.headerColor,
        ),
      ),
    );
  }
}