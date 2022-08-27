

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:siignores/constants/colors/color_styles.dart';
import 'package:siignores/constants/main_config_app.dart';
import 'package:siignores/constants/texts/text_styles.dart';
import 'package:siignores/core/widgets/btns/close_modal_btn.dart';
import 'package:siignores/core/widgets/btns/primary_btn.dart';
import 'package:siignores/core/widgets/image/cached_image.dart';


showModalLecture(
    BuildContext context,
  ){
  showMaterialModalBottomSheet(
    elevation: 0,
    barrierColor: ColorStyles.black.withOpacity(0.6),
    duration: Duration(milliseconds: 300),
    
    backgroundColor: Color.fromRGBO(0, 0, 0, 0),
    context: context, 
    builder: (context){
    return StatefulBuilder(
      builder: (context, setState) {
        return Container(
          height: MediaQuery.of(context).size.height*0.7,
          width: MediaQuery.of(context).size.width,
          color: Color.fromRGBO(0, 0, 0, 0),
          
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 53.h),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(top: 10.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(28.h),
                    topRight: Radius.circular(28.h),
                  ),
                  color: ColorStyles.white,
                ),
                child: SingleChildScrollView(
                  physics: ClampingScrollPhysics(),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 8.h,),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: CachedImage(
                            height: 256.h,
                            urlImage: 'https://aikidojo.lv/wp-content/uploads/2019/08/nophoto.jpg',
                            isProfilePhoto: false,
                            borderRadius: BorderRadius.circular(18.h),
                          ),
                        ),
                        SizedBox(height: 22.h,),
                        Text(
                          'Самое большое количество\nвремени и сил человек тратит на\nпринятие решений', 
                          style: MainConfigApp.app.isSiignores
                            ? TextStyles.black_18_w700
                            : TextStyles.black_18_w400.copyWith(fontFamily: MainConfigApp.fontFamily4),
                        ),
                        SizedBox(height: 22.h,),
                        Text(
                          'Решительность и смелость идут за руку с друг\nдругом и помогают  нам в реализации своих\nцелей', 
                          style: MainConfigApp.app.isSiignores
                            ? TextStyles.black_13_w400
                            : TextStyles.black_13_w400.copyWith(fontFamily: MainConfigApp.fontFamily4),
                        ),
                        SizedBox(height: 55.h,),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 0,
                right: 10.h,
                child: CloseModalBtn(
                  onTap: () => Navigator.pop(context)
                )
              ),
             
            ],
          )
        );
      }
    );
  });
}