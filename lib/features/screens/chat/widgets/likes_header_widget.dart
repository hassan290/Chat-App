import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../common/widgets/custom_shapes/check_message_circle.dart';
import '../../../../common/widgets/custom_shapes/heart_image_widget.dart';
import '../../../../utils/theme/custom_theme/text_theme.dart';

class LikesHeaderWidget extends StatelessWidget {
  const LikesHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const HeartImageWidget(),
        SizedBox(width: 12.w),
        Text(
          '44 человека тебя лайкнули',
          style: TTextAppTheme.appTextTheme.displayMedium!.copyWith(fontWeight: FontWeight.w500),
        ),
        SizedBox(width: 75.w),
        const CheckMessageCircle(),
      ],
    );
  }
}

