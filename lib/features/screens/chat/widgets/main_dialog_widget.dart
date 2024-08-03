import 'package:chat_task/features/screens/chat/widgets/body_dialog_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../common/widgets/custom_shapes/big_mask_widget.dart';
import '../../../../common/widgets/custom_shapes/fire_show_widget.dart';
import '../../../../utils/constants/colors.dart';

class MainDialogWidget extends StatelessWidget {
  const MainDialogWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 425.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: TColors.dialogScaffoldColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 0.h),
        child: Stack(
          children: [
            const BigMaskWidget(),
            Positioned(
              right: 0.w,
              top: 0.h,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.close,
                  color: TColors.textColor,
                  size: 16,
                ),
              ),
            ),
            const BodyDialogWidget(),
            //First show:
            const FireShowWidget(positionFromRight: 160,positionFromTop: 227,),
            Positioned(
              right: 173.w,
              top: 227.h,
              child: const Text(
                'Хит',
                style: TextStyle(
                    color: TColors.textDecorationColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
            ),
            //Second show:
            const FireShowWidget(positionFromRight: 40,positionFromTop: 227,),
            Positioned(
              right: 50.w,
              top: 227.h,
              child: const Text(
                '-42%',
                style: TextStyle(
                    color: TColors.textDecorationColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}