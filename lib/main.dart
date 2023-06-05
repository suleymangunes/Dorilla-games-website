import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ResponsiveWebPage());
}

class ResponsiveWebPage extends StatelessWidget {
  const ResponsiveWebPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              if (constraints.maxWidth > 800) {
                // Büyük ekranlarda farklı bir görünüm
                return const DesktopView();
              } else {
                // Mobil cihazlarda farklı bir görünüm
                return const MobileView();
              }
            },
          ),
        ),
      ),
    );
  }
}

class DesktopView extends StatelessWidget {
  const DesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    return
        // Container(
        //   padding: const EdgeInsets.symmetric(horizontal: 100.0),
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       const Text(
        //         'Welcome to my Responsive Web Page!',
        //         style: TextStyle(fontSize: 24.0),
        //         textAlign: TextAlign.center,
        //       ),
        //       const SizedBox(height: 20.0),
        Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: const FlareActor(
            "assets/animation/background.flr",
            alignment: Alignment.center,
            fit: BoxFit.cover,
            animation: "midnight",
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 100,
                  width: MediaQuery.of(context).size.width * 0.3,
                  child: const Card(
                    color: Colors.white,
                    child: Text(
                      "DORILLA GAMES",
                      style: TextStyle(
                        fontFamily: "FelixTi",
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: const Card(
                    color: Color.fromRGBO(220, 213, 205, 1),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
    //       Image.asset(
    //         'assets/logo/logo.png',
    //         width: 400.0,
    //       ),
    //       const SizedBox(height: 20.0),
    //       const Text(
    //         'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed aliquam mauris vel lacus rhoncus, ac mattis lectus pulvinar. Quisque in risus nec mi mollis ultrices. Nullam efficitur erat id justo tristique, in dignissim est rhoncus. Sed mattis vestibulum nisl, a cursus erat fringilla nec.',
    //         textAlign: TextAlign.center,
    //         style: TextStyle(fontSize: 16.0),
    //       ),
    //     ],
    //   ),
    // );
  }
}

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
