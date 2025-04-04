class AppConfig {
  AppConfig({required this.name, required this.flavor});

  final String name;
  final Flavor flavor;
}

enum Flavor { dev, prod }
