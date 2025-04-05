import 'package:assets_management/app/core/theme/colors.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  TextStyles._();

  static const String _fontFamily = 'Roboto';

  static TextStyle headline28Medium = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 28.sp,
    fontVariations: const [FontVariation('wght', 500)],
    color: AColors.dark,
  );

  static TextStyle body18Regular = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 18.sp,
    fontVariations: const [FontVariation('wght', 400)],
    color: AColors.dark,
  );

  static TextStyle body14Medium = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 14.sp,
    fontVariations: const [FontVariation('wght', 500)],
    color: AColors.dark,
  );

  static TextStyle body14Regular = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 14.sp,
    fontVariations: const [FontVariation('wght', 400)],
    color: AColors.dark,
  );
}
