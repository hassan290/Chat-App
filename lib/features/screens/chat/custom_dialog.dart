import 'package:chat_task/features/screens/chat/widgets/main_dialog_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDialogScreen extends StatelessWidget {
  const CustomDialogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      alignment: Alignment.bottomCenter,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 0,
      insetPadding: EdgeInsets.all(0.h),
      child: const MainDialogWidget(),
    );
  }
}



