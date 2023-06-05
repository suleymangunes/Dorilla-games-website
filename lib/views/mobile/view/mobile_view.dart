import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class MobileView extends StatelessWidget {
  const MobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return

        // Container(
        //   padding: const EdgeInsets.symmetric(horizontal: 20.0),
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: const [
        //       Text(
        //         'Welcome to my Responsive Web Page!',
        //         style: TextStyle(fontSize: 18.0),
        //         textAlign: TextAlign.center,
        //       ),
        //       SizedBox(height: 10.0),
        SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: const FlareActor("assets/animation/background.flr",
                alignment: Alignment.center, fit: BoxFit.cover, animation: "midnight"));
    // Image.asset(
    //   'assets/logo/logo.png',
    //   width: MediaQuery.of(context).size.width * 0.6,
    // ),
    //     SizedBox(height: 10.0),
    //     Text(
    //       'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed aliquam mauris vel lacus rhoncus, ac mattis lectus pulvinar. Quisque in risus nec mi mollis ultrices. Nullam efficitur erat id justo tristique, in dignissim est rhoncus. Sed mattis vestibulum nisl, a cursus erat fringilla nec.',
    //       textAlign: TextAlign.center,
    //       style: TextStyle(fontSize: 14.0),
    //     ),
    //   ],
    // ),
    // );
  }
}
