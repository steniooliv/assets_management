import 'package:assets_management/app/core/theme/text_styles.dart';
import 'package:assets_management/app/core/widgets/text/text_widget.dart';
import 'package:flutter/material.dart';

class AText extends TextWidget {
  AText.h28M(
    String text, {
    super.key,
    super.maxLines,
    super.overflow,
    super.textAlign,
    Color? color,
  }) : super(
         text: text,
         style: TextStyles.headline28Medium.copyWith(color: color),
       );

  AText.b18R(
    String text, {
    super.key,
    super.maxLines,
    super.overflow,
    super.textAlign,
    Color? color,
  }) : super(
         text: text,
         style: TextStyles.body18Regular.copyWith(color: color),
       );

  AText.b14M(
    String text, {
    super.key,
    super.maxLines,
    super.overflow,
    super.textAlign,
    Color? color,
  }) : super(text: text, style: TextStyles.body14Medium.copyWith(color: color));

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
