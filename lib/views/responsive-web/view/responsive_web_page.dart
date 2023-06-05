import 'package:dorilla_games/views/desktop/view-model/cubit/page_cubit.dart';
import 'package:dorilla_games/views/desktop/view/desktop_view.dart';
import 'package:dorilla_games/views/mobile/view/mobile_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
              if (constraints.maxWidth > 1000) {
                // Büyük ekranlarda farklı bir görünüm
                return BlocProvider(
                  create: (context) => PageCubit(),
                  child: const DesktopView(),
                );
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
