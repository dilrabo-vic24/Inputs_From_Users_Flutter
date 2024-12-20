import 'package:flutter/material.dart';
import 'package:inputs_to_screen/presentations/widgets/social_media_icon_container.dart';
import 'package:inputs_to_screen/utils/app_icons.dart';

class SocialMediaIcons extends StatelessWidget {
  const SocialMediaIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SocialMediaIconCard(
          imageUrl: AppIcons.googleIcon,
        ),
        SocialMediaIconCard(
          imageUrl: AppIcons.facebookIcon,
        ),
        SocialMediaIconCard(
          imageUrl: AppIcons.twitterIcon,
        ),
        SocialMediaIconCard(
          imageUrl: AppIcons.linkedinIcon,
        ),
      ],
    );
  }
}