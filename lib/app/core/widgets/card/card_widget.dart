import 'package:assets_management/app/core/theme/colors.dart';
import 'package:assets_management/app/core/widgets/text/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key, required this.text, this.icon, this.onTap});

  final String text;
  final IconData? icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(5).r,
      child: Ink(
        decoration: BoxDecoration(
          color: AColors.primary,
          borderRadius: BorderRadius.circular(5).r,
        ),
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5).r),
          padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 24.h),
          child: Container(
            constraints: BoxConstraints(minHeight: 76.h),
            child: Row(
              spacing: 16.w,
              children: [
                if (icon != null) Icon(icon, color: AColors.white, size: 24.w),
                AText.h18M(text, color: AColors.white),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
