import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_app_ui/Screens/events/events_screen.dart';

import '../constants.dart';
import '../size_confi.dart';

class CustomNavbar extends StatelessWidget {
  const CustomNavbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(kDefaultPadding)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              NavItem(icon: 'assets/icons/calendar.svg',title: 'Events',press: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const EventsScreen(),));
              }),
              NavItem(icon: 'assets/icons/chat.svg',title: 'Chat',press: (){},isActive: true,),
              NavItem(icon: 'assets/icons/friendship.svg',title: 'Friends',press: (){},isActive: true,),
            ],
          ),
        ),
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  final String title,icon;
  final bool isActive;
  final GestureTapCallback press;

  const NavItem({
    super.key,
    required this.title,
    required this.icon,
    this.isActive = false,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        height: getProportionateScreenWidth(60),
        width: getProportionateScreenWidth(60),
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [kDefaultShadow]
        ),
        child: Column(
          children: [
            SvgPicture.asset(icon,height: 28,color: kTextColor,),
            const Spacer(),
            Text(title,style: const TextStyle(fontSize: 9,fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}