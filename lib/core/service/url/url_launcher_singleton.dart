
import 'package:url_launcher/url_launcher.dart';

class UrlLauncherSingleton {
  static UrlLauncherSingleton? _instance;
  final String url;

  factory UrlLauncherSingleton(String url) {
    _instance ??= UrlLauncherSingleton._internal(url);
    return _instance!;
  }

  UrlLauncherSingleton._internal(this.url);

  static Future<void> launch(String geturl) async {
    final url = Uri.parse(geturl);
    try {
      await launchUrl(url);
    } catch (e) {
      throw 'URL açılamadı: $url';
    }
  }
}
