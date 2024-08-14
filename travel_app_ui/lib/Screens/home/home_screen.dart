import 'package:flutter/material.dart';
import 'package:travel_app_ui/Screens/home/components/body.dart';
import 'package:travel_app_ui/constants.dart';
import 'package:travel_app_ui/size_confi.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: buildAppBar(),
      body: const Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(onPressed: (){} , icon: const Icon(Icons.menu,color: kIconColor,)),
      actions: [IconButton(onPressed: (){}, icon: ClipOval(child: Image.asset('assets/images/profile.png')))],
    );
  }
}
