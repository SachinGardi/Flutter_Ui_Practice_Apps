import 'package:flutter/material.dart';

import '../../../components/place_card.dart';
import '../../../model/travel_spot.dart';
import '../../../size_confi.dart';
import 'add_new_place.dart';

class NewEvents extends StatelessWidget {
  const NewEvents({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,

      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(25)),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: Wrap(
              alignment: WrapAlignment.spaceBetween,
              runSpacing: 20,
              children: [
                ...List.generate(travelSpots.length, (index) =>PlaceCard(
                    travelSpot: travelSpots[index],
                    isFullCard: true,
                    press: (){}
                )),
                const AddNewPlace()
              ],
            ),
          ),
        ),
      ),
    );
  }
}