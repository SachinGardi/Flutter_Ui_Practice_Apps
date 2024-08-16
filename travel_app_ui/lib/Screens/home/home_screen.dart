

import 'package:flutter/material.dart';
import 'package:travel_app_ui/Screens/home/components/body.dart';
import 'package:travel_app_ui/constants.dart';
import 'package:travel_app_ui/size_confi.dart';

import '../../components/app_bar.dart';
import '../../components/custom_navbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: buildAppBar(isTransparent: true),
      body: const Body(),
      bottomNavigationBar: const CustomNavbar(),
    );
  }


}


