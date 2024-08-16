import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../constants.dart';
import '../model/travel_spot.dart';
import '../model/user.dart';
import '../size_confi.dart';

class PlaceCard extends StatelessWidget {
  const PlaceCard({
    super.key,
    required this.travelSpot,
    required this.press,
    this.isFullCard = false,
  });

  final TravelSpot travelSpot;
  final GestureTapCallback press;
  final bool isFullCard;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(isFullCard?158:137) ,
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: isFullCard?1.09:1.29,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  image: DecorationImage(image: AssetImage(travelSpot.image),fit: BoxFit.cover)
              ),
            ),
          ),
          Container(
            width: getProportionateScreenWidth(isFullCard?158:137) ,
            padding:EdgeInsets.all(getProportionateScreenWidth(kDefaultPadding * 0.8)),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                boxShadow: [kDefaultShadow]
            ),
            child: Column(
              children: [
                Text(travelSpot.name,
                  textAlign: TextAlign.center,
                  style:  TextStyle(
                    fontSize: isFullCard?17:11,
                    fontWeight: FontWeight.w600
                ),),
                if(isFullCard)
                Text(travelSpot.date.day.toString(),style: Theme.of(context).textTheme.headlineMedium!.copyWith(fontWeight: FontWeight.bold),),
                if(isFullCard)
                Text("${DateFormat.MMMM().format(travelSpot.date)} ${travelSpot.date.year}" ),
                const VerticalSpacing(of: 10,),
                Travelers(users: travelSpot.users,)
              ],
            ),
          )
        ],
      ),
    );
  }
}


class Travelers extends StatelessWidget {
  const Travelers({
    super.key,
    required this.users,
  });

  final List<User> users;

  @override
  Widget build(BuildContext context) {
    int totalUser = 0;
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenWidth(30),

      child: Stack(
        children: [
          ...List.generate(users.length, (index) {
            totalUser++;
            return Positioned(
                left: (22 * index).toDouble(),
                child: buildTravelerFace(index));
          }),
          Positioned(
            left: (22 * totalUser).toDouble(),
            child: SizedBox(
              height: getProportionateScreenWidth(28),
              width: getProportionateScreenWidth(28),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      shape: const StadiumBorder(),
                      backgroundColor: kPrimaryColor
                  ),
                  onPressed: (){}, child: const Icon(Icons.add,color: Colors.white,)),
            ),
          )

        ],
      ),
    );
  }

  ClipOval buildTravelerFace(int index) {
    return ClipOval(
      child: Image.asset(users[index].image,
        height: getProportionateScreenWidth(28),
        width: getProportionateScreenWidth(28),
        fit: BoxFit.cover,
      ),
    );
  }
}