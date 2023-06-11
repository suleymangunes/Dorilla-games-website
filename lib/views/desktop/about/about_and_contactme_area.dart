import 'package:dorilla_games/core/extension/context/context_extension.dart';
import 'package:dorilla_games/views/_products/widgets/card/about_us_card.dart';
import 'package:dorilla_games/views/_products/widgets/card/desktop_about_us_content_card.dart';
import 'package:dorilla_games/views/_products/widgets/card/desktop_gmail_card.dart';
import 'package:dorilla_games/views/_products/widgets/card/stay_connected_card.dart';
import 'package:dorilla_games/views/_products/widgets/struct/contact_platforms.dart';
import 'package:flutter/material.dart';

class AboutAndContactMeArea extends StatelessWidget {
  const AboutAndContactMeArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.halfWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AboutUsCard(),
          const DesktopAboutUsContentCard(),
          const Spacer(flex: 1),
          const StayConnectedCard(),
          const DesktopGmailCard(),
          context.smallSizedbox,
          const ContactPlatforms(),
          const Spacer(flex: 4),
        ],
      ),
    );
  }
}
