

import 'package:url_launcher/url_launcher.dart';

class SocialMediaUrl{
  static launchTwitterURL() async {
    final Uri url = Uri.parse('https://twitter.com/_bolumustapha_');
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }
  static launchInstagramURL() async {
    final Uri url = Uri.parse('https://www.instagram.com/_musbam_/');
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }
  static launchLinkedInURL() async {
    final Uri url = Uri.parse('https://www.linkedin.com/in/boluwatife-mustapha-9bb002202/');
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }
  static launchGoogleMailURL() async {
    final Uri url = Uri.parse('mailto:mustaphaboluwatife01@gmail.com');
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }
}
