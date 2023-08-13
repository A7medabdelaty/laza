import 'package:flutter/material.dart';
import 'package:laza/services/on_boarding/presentation/views/widgets/on_boarding_card.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  static const String routeName = 'onBoarding';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15.0),
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/on_boarding.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            Image.asset(
              'assets/images/on_boarding_man.png',
              fit: BoxFit.fill,
            ),
            const OnBoardingCard(),
          ],
        ),
      ),
    );
  }
}
