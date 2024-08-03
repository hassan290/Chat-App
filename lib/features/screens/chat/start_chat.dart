import 'package:chat_task/common/widgets/custom_shapes/circular_image.dart';
import 'package:chat_task/features/model/user_model.dart';
import 'package:chat_task/features/screens/chat/widgets/header_section_widget.dart';
import 'package:chat_task/features/screens/chat/widgets/input_field_widget.dart';
import 'package:chat_task/features/screens/chat/widgets/pink_tape_widget.dart';
import 'package:chat_task/utils/constants/colors.dart';
import 'package:chat_task/utils/theme/custom_theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';

class StartChat extends StatelessWidget {
  const StartChat({super.key, required this.user});

  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  const HeaderSectionWidget(),
                  Positioned(
                      left: 16.w,
                      top: 20.h,
                      child: SizedBox(
                        width: 24.w,
                        height: 24.h,
                        child: Center(
                            child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Iconsax.arrow_left_24,
                            size: 24,
                          ),
                          color: TColors.letterBorderColor,
                        )),
                      )),
                  Positioned(
                    left: 48.w,
                    top: 5.h,
                    child: TCircularImage(image: user.image),
                  ),
                  const PinkTapeWidget()
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              SizedBox(
                height: 90,
                child: Center(
                  child: Text(
                    'Начни общение',
                    style: TTextAppTheme.appTextTheme.displaySmall?.copyWith(color: TColors.letterBorderColor),
                  ),
                ),
              ),
              SizedBox(height: 440.h),
              const InputFieldSectionWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
