import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants/colors/color_styles.dart';


enum CurrentStage{
  first,
  second,
  third
}
class TopStageWidget extends StatelessWidget {
  final CurrentStage currentStage;
  const TopStageWidget({Key? key, required this.currentStage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 4.h,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(1),
              color: ColorStyles.primary,
            ),
          )
        ),
        SizedBox(width: 12.w,),
        Expanded(
          child: Container(
            height: 4.h,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(1),
              color: currentStage == CurrentStage.second || currentStage == CurrentStage.third ? ColorStyles.primary : ColorStyles.white,
            ),
          )
        ),
        SizedBox(width: 12.w,),
        Expanded(
          child: Container(
            height: 4.h,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(1),
              color: currentStage == CurrentStage.third ? ColorStyles.primary : ColorStyles.white,
            ),
          )
        ),
      ],
    );
  }
}