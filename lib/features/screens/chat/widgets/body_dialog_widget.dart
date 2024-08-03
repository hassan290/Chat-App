import 'package:chat_task/features/screens/chat/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/constants/colors.dart';
import 'first_decision_widget.dart';

class BodyDialogWidget extends StatelessWidget {
  const BodyDialogWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0.w,
      top: 111.h,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SizedBox(
          width: 343.w,
          height: 297.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Режим инкогнито на 24 часа',
                style: TextStyle(
                    color: TColors.textColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 24.h,
              ),
              const Text(
                'Стань невидимкой в ленте и чатах, скрой \nобъявление и наслаждайся <Space> незамеченным',
                style: TextStyle(
                    color: TColors.textColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w300),
              ),
              SizedBox(
                height: 24.h,
              ),
              Row(
                children: [
                  const FirstDecisionWidget(numberMask: '1',price: '99',),
                  SizedBox(
                    width: 16.w,
                  ),
                  const FirstDecisionWidget(numberMask: '3',price: '199',),
                  SizedBox(
                    width: 16.w,
                  ),
                  const FirstDecisionWidget(numberMask: '7',price: '399',),
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              SizedBox(
                  width: 343.w,
                  height: 50.h,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const ChatScreen(isHideMode: true,)));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: TColors.buyButtonColor,
                    ),
                    child: const Text(
                      'Купить',
                      style: TextStyle(
                          color: TColors.textColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  )),
              SizedBox(
                height: 24.h,
              ),
              const Text(
                'условия и положения',
                style: TextStyle(
                    color: TColors.textColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
      ),
    );
  }
}