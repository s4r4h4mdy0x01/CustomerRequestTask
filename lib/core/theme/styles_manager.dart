import 'package:customer_request_task/core/theme/color_manager.dart';
import 'package:customer_request_task/core/theme/font_weight_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStylesManager {
  static TextStyle font26OrangekMedium = TextStyle(
    fontSize: 26.sp,
    fontWeight: FontWeightManager.medium,
    color: ColorManager.primary,
  );

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

  static TextStyle font13GrayRegular = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightManager.regular,
    color: ColorManager.grey,
  );

  //? todo
  static TextStyle font13Regular = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightManager.regular,
    color: ColorManager.black,
  );

  static TextStyle font18WhiteMedium = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightManager.semiBold,
    color: ColorManager.white,
  );
}