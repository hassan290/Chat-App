import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/constants/colors.dart';

class FirstDecisionWidget extends StatefulWidget {
  const FirstDecisionWidget({
    super.key, required this.numberMask, required this.price,
  });

  final String numberMask;
  final String price;

  @override
  State<FirstDecisionWidget> createState() => _FirstDecisionWidgetState();
}

class _FirstDecisionWidgetState extends State<FirstDecisionWidget> {
  bool isFocus = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        setState(() {
          isFocus = !isFocus;
        });
      },
      focusColor: Colors.green,
      child: Container(
        height: 78,
        width: 103.w,
        decoration: BoxDecoration(
          color: TColors.scaffoldColor,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: isFocus ? Colors.white70 : TColors.borderContainerColor),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 8.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(widget.numberMask,style: const TextStyle(color: TColors.textColor,fontSize: 16,fontWeight: FontWeight.w400),),
                  SizedBox(width: 4.w,),
                  Image(image: const AssetImage('assets/images/mask/mask_small.png'),height: 12.h,width: 30.w,fit: BoxFit.contain,),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Text('${widget.price} ₽',style: const TextStyle(color: TColors.textColor,fontSize: 16,fontWeight: FontWeight.w400),),
            ],
          ),
        ),
      ),
    );
  }
}