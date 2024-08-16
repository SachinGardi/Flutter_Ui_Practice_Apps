import 'package:flutter/material.dart';
import 'package:travel_app_ui/Screens/home/components/popular_places.dart';
import 'package:travel_app_ui/Screens/home/components/top_travelers.dart';
import 'package:travel_app_ui/size_confi.dart';
import 'home_header.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return  const SingleChildScrollView(
      clipBehavior: Clip.none,
      child: Column(
        children: [
          HomeHeader(),
          VerticalSpacing(of: 50),
          PopularPlaces(),
          VerticalSpacing(),
          TopTravelers(),
          VerticalSpacing()
        ],
      ),
    );
  }
}


