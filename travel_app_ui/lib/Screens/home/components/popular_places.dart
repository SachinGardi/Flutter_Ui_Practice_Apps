import 'package:flutter/material.dart';
import '../../../components/place_card.dart';
import '../../../components/section_title.dart';
import '../../../model/travel_spot.dart';
import '../../../size_confi.dart';

class PopularPlaces extends StatelessWidget {
  const PopularPlaces({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(title: 'Right Now At Spark',press: (){},),
        const VerticalSpacing(of: 20,),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          clipBehavior: Clip.none,
          child: Row(
            children: [
              ...List.generate(travelSpots.length, (index) => Padding(
                padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
                child: PlaceCard(travelSpot: travelSpots[index],press: () {},),
              ),),
              SizedBox(width: getProportionateScreenWidth(20),)
            ],
          ),
        )

      ],
    );
  }
}






