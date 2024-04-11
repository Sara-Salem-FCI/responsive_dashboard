import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/size_config.dart';

abstract class AppStyles{
  static TextStyle styleRegular16 (context){
    return TextStyle(
      color: const Color(0xff064060),
      fontSize: getResponsiveFontSize(fontSize: 16, context: context),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleMedium16(context){
    return TextStyle(
      color: const Color(0xff064060),
      fontSize: getResponsiveFontSize(fontSize: 16, context: context),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleSemiBold16(context){
    return TextStyle(
      color: const Color(0xff064060),
      fontSize: getResponsiveFontSize(fontSize: 16, context: context),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }
  static TextStyle styleSemiBold20 (context){
    return TextStyle(
      color: const Color(0xff064060),
      fontSize: getResponsiveFontSize(fontSize: 20, context: context),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }
  static TextStyle styleRegular12 (context){
    return TextStyle(
      color: const Color(0xffaaaaaa),
      fontSize: getResponsiveFontSize(fontSize: 12, context: context),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }
  static TextStyle styleSemiBold24 (context){
    return TextStyle(
      color: const Color(0xff4eb7f2),
      fontSize: getResponsiveFontSize(fontSize: 24, context: context),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }
  static TextStyle styleRegular14 (context){
    return TextStyle(
      color: const Color(0xffaaaaaa),
      fontSize: getResponsiveFontSize(fontSize: 14, context: context),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }
  static TextStyle styleSemiBold18 (context){
    return TextStyle(
      color: const Color(0xffffffff),
      fontSize: getResponsiveFontSize(fontSize: 18, context: context),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }
  static TextStyle styleBold16 (context){
    return TextStyle(
      color: const Color(0xff4eb7f2),
      fontSize: getResponsiveFontSize(fontSize: 16, context: context),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
    );
  }
  static TextStyle styleMedium20 (context){
    return TextStyle(
      color: const Color(0xffffffff),
      fontSize: getResponsiveFontSize(fontSize: 20, context: context),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }
}

double getResponsiveFontSize( {required BuildContext context, required double fontSize}){
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;
  double lowerLimit = fontSize*.8;
  double upperLimit = fontSize*1.2;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}
double getScaleFactor(context){
  var width = MediaQuery.sizeOf(context).width;
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // var width = physicalWidth / devicePixelRatio;
  if(width<SizeConfig.tablet){
    return width/550;
  } else if(width<SizeConfig.desktop){
    return width/1000;
  } else{
    return width/1900;
  }
}