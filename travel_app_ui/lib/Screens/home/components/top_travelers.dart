import 'package:flutter/material.dart';

import '../../../components/section_title.dart';
import '../../../constants.dart';
import '../../../model/user.dart';
import '../../../size_confi.dart';

class TopTravelers extends StatelessWidget {
  const TopTravelers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(title: 'Top Travelers on Spark', press: () {}),
        const VerticalSpacing(of: 20,),
        Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(kDefaultPadding),
          ),
          padding: EdgeInsets.all(getProportionateScreenWidth(24)),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [kDefaultShadow]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ...List.generate(
                  topTravelers.length,
                      (index) =>  UserCard(user: topTravelers[index],)),
            ],
          ),
        ),
      ],
    );
  }
}

class UserCard extends StatelessWidget {
  const UserCard({
    super.key, required this.user,
  });
  final User user;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipOval(
          child: Image.asset(
            user.image,
            height: getProportionateScreenWidth(55),
            width: getProportionateScreenWidth(55),
            fit: BoxFit.cover,
          ),
        ),
        const VerticalSpacing(
          of: 10,
        ),
        Text(
          user.name,
          style: const TextStyle(
              fontSize: 11, fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}