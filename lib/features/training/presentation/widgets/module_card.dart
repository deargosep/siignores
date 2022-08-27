import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:siignores/constants/texts/text_styles.dart';

import '../../../../constants/colors/color_styles.dart';
import '../../../../constants/main_config_app.dart';



class ModuleCard extends StatelessWidget {
  final Function() onTap;
  const ModuleCard({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if(MainConfigApp.app.isSiignores) {
      return GestureDetector(
        onTap: onTap, 
        child: Container(
          margin: EdgeInsets.fromLTRB(9.w, 0, 9.w, 14.h),
          padding: EdgeInsets.fromLTRB(14.w, 22.h, 10.w, 0),
          decoration: BoxDecoration(
            color: ColorStyles.white,
            borderRadius: BorderRadius.circular(14.h)
          ),
          
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Модуль '.toUpperCase(), style: TextStyles.cormorant_black_18_w400,),
              SizedBox(height: 10.h,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('1', style: TextStyles.cormorant_black_41_w400,),
                  Container(
                    width: 40.w,
                    height: 70.h,
                    color: ColorStyles.black,
                  )
                ],
              )
            ],
          ),
        ),
      );
    }else{
      return GestureDetector(
        onTap: onTap, 
        child: Container(
          margin: EdgeInsets.fromLTRB(9.w, 0, 9.w, 14.h),
          padding: EdgeInsets.fromLTRB(14.w, 22.h, 10.w, 0),
          decoration: BoxDecoration(
            color: ColorStyles.black2,
            borderRadius: BorderRadius.circular(14.h)
          ),
          
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('ЛИНЕЙКА\nСТУДЕНТОК'.toUpperCase(), style: MainConfigApp.app.isSiignores
                ? TextStyles.cormorant_black_18_w400
                : TextStyles.white_16_w300,),
              SizedBox(height: 5.h,),
              Text('Анализируем себя', style: TextStyles.grey_10_w400
                .copyWith(color: ColorStyles.grey929292, fontFamily: MainConfigApp.fontFamily4 ),),
              SizedBox(height: 10.h,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 90.w,
                    height: 40.h,
                    color: ColorStyles.primary,
                  )
                ],
              )
            ],
          ),
        ),
      );
    }
  }
}