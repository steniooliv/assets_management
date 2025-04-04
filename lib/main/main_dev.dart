import 'package:assets_management/app/core/config/app_config.dart';
import 'package:assets_management/main.dart' as main_file;

void main() {
  main_file.main(null, AppConfig(name: 'Dev', flavor: Flavor.dev));
}
