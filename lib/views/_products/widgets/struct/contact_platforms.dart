import 'package:dorilla_games/views/_products/widgets/svg/clickable_github_svg.dart';
import 'package:dorilla_games/views/_products/widgets/svg/clickable_linkedin_svg.dart';
import 'package:dorilla_games/views/_products/widgets/svg/clickable_playstore_svg.dart';
import 'package:dorilla_games/views/_products/widgets/svg/clickable_youtube_svg.dart';
import 'package:flutter/material.dart';

class ContactPlatforms extends StatelessWidget {
  const ContactPlatforms({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 270,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          ClickableGithubSvg(),
          ClickablePlaystoreSvg(),
          ClickableLinkedinSvg(),
          ClickableYoutubeSvg(),
        ],
      ),
    );
  }
}
