import 'package:chat_task/routes/app_router.dart';
import 'package:chat_task/routes/routes.dart';
import 'package:chat_task/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatApp extends StatelessWidget {
  final AppRouter appRouter;
  const ChatApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: TColors.scaffoldColor,
          scaffoldBackgroundColor: TColors.scaffoldColor,
        ),
        onGenerateRoute: appRouter.onGenerateRoute,
        initialRoute: Routes.home,
      ),
    );
  }
}
