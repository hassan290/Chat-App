import 'package:chat_task/routes/app_router.dart';
import 'package:chat_task/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'chat_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: TColors.headerColor,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(ChatApp(appRouter: AppRouter()));
}
