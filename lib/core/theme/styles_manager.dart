import 'package:customer_request_task/core/theme/color_manager.dart';
import 'package:customer_request_task/core/theme/font_weight_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStylesManager {

  static TextStyle font18BlackSemiBold = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeightManager.semiBold,
    color: ColorManager.black,
  );

  static TextStyle font13OrangRegular = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightManager.regular,
    color: ColorManager.primary,
  );
  static TextStyle font16PrimarySemiBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightManager.semiBold,
    color: ColorManager.primary,
  );

  static TextStyle font13GrayRegular = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightManager.regular,
    color: ColorManager.grey,
  );
  
  static TextStyle font16WhiteRegular = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightManager.regular,
    color: ColorManager.white,
  );


  

  static TextStyle font16BlackMedium = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightManager.semiBold,
    color: ColorManager.black,
  );
}