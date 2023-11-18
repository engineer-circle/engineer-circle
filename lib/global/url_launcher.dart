import 'package:engineer_circle/global/logger.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

final urlLauncherProvider = Provider(
  (ref) => const UrlLauncher(),
);

class UrlLauncher {
  const UrlLauncher();

  Future<void> launch(String url) async {
    try {
      final uri = Uri.parse(url);
      final result = await launchUrl(uri);
      if (!result) {
        logger.e('Failure launch: url = $url');
      }
      logger.i('Successful launch: url = $url');
    } catch (e) {
      logger.e('Unknown error launch: url = $url');
    }
  }
}
