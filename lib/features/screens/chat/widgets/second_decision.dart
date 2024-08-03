import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SecondDecisionWidget extends StatelessWidget {
  const SecondDecisionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //const FirstDecisionWidget(),
        Positioned(right: 23.5.w,top: -10.h,child: Image(image: const AssetImage('assets/icons/fire.png'),width: 54.w,height: 17.h,),),
      ],
    );
  }
}
