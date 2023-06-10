import 'package:dorilla_games/core/extension/context/context_extension.dart';
import 'package:dorilla_games/product/widget/card/about_us_card.dart';
import 'package:dorilla_games/product/widget/card/about_us_content_card.dart';
import 'package:dorilla_games/product/widget/card/clickable-card/clickable_github_card.dart';
import 'package:dorilla_games/product/widget/card/clickable-card/clickable_linkedin_card.dart';
import 'package:dorilla_games/product/widget/card/clickable-card/clickable_mail_card.dart';
import 'package:dorilla_games/product/widget/card/clickable-card/clickable_play_store_card.dart';
import 'package:dorilla_games/product/widget/card/clickable-card/clickable_youtube_card.dart';
import 'package:dorilla_games/product/widget/card/contact_us_card.dart';
import 'package:flutter/material.dart';

class MobileAboutUsPage extends StatelessWidget {
  const MobileAboutUsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.widthToBeUsed,
      child: Column(
        children: const [
          AboutUsCard(),
          AboutUsContentCard(),
          Spacer(),
          ContactUsCard(),
          ClickableMailCard(),
          ClickableGithubCard(),
          ClickablePlayStoreCard(),
          ClickableLinkedinCard(),
          ClickableYoutubeCard(),
          Spacer(flex: 2),
        ],
      ),
    );
  }
}
