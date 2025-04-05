import 'package:assets_management/app/core/theme/text_styles.dart';
import 'package:assets_management/app/core/widgets/text/text_widget.dart';
import 'package:flutter/material.dart';

class AText extends TextWidget {
  /// Headline 18 Medium
  AText.h18M(
    String text, {
    super.key,
    super.maxLines,
    super.overflow,
    super.textAlign,
    Color? color,
  }) : super(
         text: text,
         style: TextStyles.headline18Medium.copyWith(color: color),
       );

  /// Headline 18 Regular
  AText.h18R(
    String text, {
    super.key,
    super.maxLines,
    super.overflow,
    super.textAlign,
    Color? color,
  }) : super(
         text: text,
         style: TextStyles.headline18Regular.copyWith(color: color),
       );

  /// Body 14 Medium
  AText.b14M(
    String text, {
    super.key,
    super.maxLines,
    super.overflow,
    super.textAlign,
    Color? color,
  }) : super(text: text, style: TextStyles.body14Medium.copyWith(color: color));

  /// Body 14 Regular
  AText.b14R(
    String text, {
    super.key,
    super.maxLines,
    super.overflow,
    super.textAlign,
    Color? color,
  }) : super(
         text: text,
         style: TextStyles.body14Regular.copyWith(color: color),
       );
}
