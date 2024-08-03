import 'package:chat_task/features/model/user_model.dart';
import 'package:chat_task/features/screens/chat/start_chat.dart';
import 'package:chat_task/features/screens/home_screen.dart';
import 'package:chat_task/routes/routes.dart';
import 'package:flutter/material.dart';

import '../features/screens/chat/chat_screen.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.home:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      case Routes.chat:
        return MaterialPageRoute(
          builder: (_) => const ChatScreen(isHideMode: false,),
        );
      case Routes.startChat:
        return MaterialPageRoute(
          builder: (_) => StartChat(user: settings.arguments as UserModel,),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
