import 'package:chat_task/data/user_data.dart';
import 'package:chat_task/features/screens/chat/widgets/clip_header_widget.dart';
import 'package:chat_task/features/screens/chat/widgets/item_grid_builder_widget.dart';
import 'package:chat_task/features/screens/chat/widgets/likes_header_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../common/widgets/custom_shapes/header_chat_widget.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key, required this.isHideMode});

  final bool isHideMode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const ClipHeaderWidget(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: Column(
                  children: [
                    HeaderChatWidget(isHideMode: isHideMode,),
                    SizedBox(height: 16.h),
                    const LikesHeaderWidget(),
                    SizedBox(height: 16.h),
                  ],
                ),
              ),
              GridView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisSpacing: 16.h,
                  childAspectRatio: 5.9,
                ),
                itemCount: UserData.users.length,
                itemBuilder: (context, index) {
                  return ItemBuilderWidget(index: index,context: context,);
                },
              ),
            ],
          ),
        ),
      ),

    );
  }
}