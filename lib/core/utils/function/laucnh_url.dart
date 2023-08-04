import 'package:url_launcher/url_launcher.dart';
import 'custom_snack_bar.dart';

Future<void> launchCustomUrl(context, String? url) async {
  if (url !=null) {
  Uri url0 = Uri.parse(url);
  if (await canLaunchUrl(url0)) {
    await launchUrl(url0);
  } else {
    customSnackBar(context, 'cannot launch $url');
  }
}
}

