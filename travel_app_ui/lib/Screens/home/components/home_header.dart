import 'package:flutter/material.dart';
import 'package:travel_app_ui/Screens/home/components/search_field.dart';
import '../../../size_confi.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        Image.asset('assets/images/home_bg.png',
          height: getProportionateScreenWidth(315),
          fit: BoxFit.cover,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: getProportionateScreenHeight(80),),
            Text('Travelers',style: TextStyle(
                fontSize: getProportionateScreenWidth(73),
                fontWeight: FontWeight.bold,
                color: Colors.white,
                height: 0.5
            ),),
            const Text('Travel Community App',style: TextStyle(
                color: Colors.white
            ),)
          ],
        ),
        Positioned(
          bottom: getProportionateScreenWidth(-25),
          child: const SearchField(),
        )
      ],
    );
  }
}