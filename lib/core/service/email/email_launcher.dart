import 'package:dorilla_games/product/locale/project_keys.dart';
import 'package:url_launcher/url_launcher.dart';

class EmailLauncher {
  EmailLauncher();

  Future<void> launchEmail() async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: ProjectKeys.gmail,
      queryParameters: {
        'subject': 'Dorilla',
      },
    );

    try {
      await launchUrl(emailUri);
    } catch (e) {
      throw Exception("Colud Not launch $emailUri");
    }
  }
}
