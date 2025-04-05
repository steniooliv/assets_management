import 'package:assets_management/app/core/widgets/image/image_widget.dart';

class AImage extends ImageWidget {
  const AImage.svgAsset(
    String path, {
    super.key,
    super.color,
    super.fit,
    super.height,
    super.width,
  }) : super(path: path, type: ImageType.svgAsset);
}
