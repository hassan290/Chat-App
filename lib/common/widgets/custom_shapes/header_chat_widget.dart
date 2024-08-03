import 'package:chat_task/common/widgets/custom_shapes/small_mask_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconsax/iconsax.dart';
import '../../../features/screens/chat/custom_dialog.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/theme/custom_theme/text_theme.dart';
import 'offline_chat_widget.dart';

class HeaderChatWidget extends StatelessWidget {
  const HeaderChatWidget({super.key, required this.isHideMode});

  final bool isHideMode;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('ЧАТЫ',style: TTextAppTheme.appTextTheme.headlineLarge),
        SizedBox(width: 195.w,),
        Text('OFF',style: TTextAppTheme.appTextTheme.bodyMedium),
        SizedBox(width: 12.w,),
        InkWell(onTap: (){showDialog(context: context, builder: (context) => const CustomDialogScreen());},child: isHideMode ? const SmallMaskWidget(): const OfflineChatWidget(),)
        //InkWell(onTap: () { showDialog(context: context, builder: (context) => const CustomDialogScreen());},child: const OfflineChatWidget()),
        //InkWell(onTap: () { showDialog(context: context, builder: (context) => const CustomDialogScreen());},child: const SmallMaskWidget()),
      ],
    );
  }
}


