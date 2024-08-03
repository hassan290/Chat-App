import 'package:chat_task/common/widgets/custom_shapes/small_mask_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../features/screens/chat/custom_dialog.dart';
import '../../../utils/theme/custom_theme/text_theme.dart';

class HeaderChatWidget extends StatelessWidget {
  const HeaderChatWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('ЧАТЫ',style: TTextAppTheme.appTextTheme.headlineLarge),
        SizedBox(width: 195.w,),
        Text('OFF',style: TTextAppTheme.appTextTheme.bodyMedium),
        SizedBox(width: 12.w,),
        InkWell(onTap: () { showDialog(context: context, builder: (context) => const CustomDialogScreen());},child: const SmallMaskWidget()),
      ],
    );
  }
}


