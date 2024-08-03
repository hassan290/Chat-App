import 'package:chat_task/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../common/widgets/custom_shapes/circular_image.dart';
import '../../../../utils/theme/custom_theme/text_theme.dart';

class InputFieldSectionWidget extends StatelessWidget {
  const InputFieldSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          const Icon(Icons.add,size: 24,color: TColors.letterBorderColor,),
          SizedBox(width: 8.w,),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                hintText: 'Сообщение...',
                hintStyle: TTextAppTheme.appTextTheme.displayMedium?.copyWith(color: TColors.letterBorderColor,fontWeight: FontWeight.w300),
                suffixIcon:SizedBox(width:20.w,height: 23.h,child: const TCircularImage(image: 'assets/icons/alien.png')),
              ),
            ),
          ),
          SizedBox(width: 8.w,),
          const Icon(Icons.mic,size: 24,color: TColors.letterBorderColor,),
        ],
      ),
    );
  }
}
