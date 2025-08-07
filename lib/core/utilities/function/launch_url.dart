import 'package:bookly_app/core/utilities/function/custome_snak_bar.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launchCutomeUrl(context, String? url) async {
  if (url != null) {
    Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      snakBar(context, 'can not launch $url');
    }
  }
}
