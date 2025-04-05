import 'package:assets_management/app/core/theme/colors.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum ImageType { svgAsset }

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    super.key,
    required this.type,
    required this.path,
    this.width,
    this.height,
    this.fit,
    this.color,
  });

  final ImageType type;
  final String path;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return switch (type) {
      ImageType.svgAsset => SvgPicture.asset(
        path,
        width: width,
        height: height,
        fit: fit ?? BoxFit.contain,
        colorFilter: ColorFilter.mode(
          color ?? AColors.primary,
          BlendMode.srcIn,
        ),
        placeholderBuilder: (context) => const SizedBox.shrink(),
      ),
    };
  }
}
