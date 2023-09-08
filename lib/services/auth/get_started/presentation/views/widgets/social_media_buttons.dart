import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:laza/services/auth/get_started/data/models/social_media_model.dart';
import 'package:laza/services/auth/get_started/presentation/view_model/get_started_cubit.dart';
import 'package:laza/services/auth/get_started/presentation/views/widgets/social_media_button.dart';

class SocialMediaButtons extends StatelessWidget {
  const SocialMediaButtons({super.key, required this.cubit});
  final GetStartedCubit cubit;
  @override
  Widget build(BuildContext context) {
    final List<SocialMediaModel> socialMediaModels = [
      SocialMediaModel(
        FontAwesomeIcons.facebookF,
        'Facebook',
        const Color(0xff4267B2),
      ),
      SocialMediaModel(
        FontAwesomeIcons.twitter,
        'Twitter',
        const Color(0xff1DA1F2),
      ),
      SocialMediaModel(
        FontAwesomeIcons.google,
        'Google',
        const Color(0xffEA4335),
      ),
    ];

    return Column(
      children: socialMediaModels.map((e) {
        return SocialMediaButton(model: e,cubit:cubit);
      }).toList(),
    );
  }
}
