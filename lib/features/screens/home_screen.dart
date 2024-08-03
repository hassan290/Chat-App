import 'package:chat_task/common/widgets/icons/flutter_app_icons.dart';
import 'package:chat_task/features/screens/chat/chat_screen.dart';
import 'package:chat_task/features/screens/favorite_screen.dart';
import 'package:chat_task/features/screens/menu_screen.dart';
import 'package:chat_task/features/screens/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../utils/constants/colors.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  final List<Widget> screens = const [
    MenuScreen(),
    ChatScreen(isHideMode: false,),
    FavoriteScreen(),
    SettingsScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomAppBar(
        padding:
        EdgeInsets.only(top: 17.h, bottom: 19.h),
        height: 60.h,
        color: TColors.menuBackgroundColor,
        child: BottomNavigationBar(
          elevation: 0,
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          backgroundColor: TColors.menuBackgroundColor,
          selectedItemColor: TColors.selectItemColor,
          unselectedItemColor: TColors.unselectItemColor,
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 0,
          unselectedFontSize: 0,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(MyFlutterApp.ci_main_component), label: ''),
            BottomNavigationBarItem(
                icon: Icon(MyFlutterApp.mingcute_chat_1_line), label: ''),
            BottomNavigationBarItem(
                icon: Icon(MyFlutterApp.icon_park_outline_like), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings_rounded), label: ''),
          ],
        ),
      ),
    );
  }
}
