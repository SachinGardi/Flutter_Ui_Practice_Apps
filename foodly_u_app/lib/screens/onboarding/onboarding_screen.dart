import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodly_ui_app/constatnts.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late PageController _pageController;

  int _selectedIndex = 0;

  List<OnBoardData> demoData = [
    OnBoardData(illustrations: 'assets/illustrations/Illustrations_1.svg', title: 'All your favorites', text: 'Order from the best local restaurants \nwith easy, on-demand delivery.'),
    OnBoardData(illustrations: 'assets/illustrations/Illustrations_2.svg', title: 'Free delivery offers', text: 'Free delivery for new customers via Apple Pay\nand others payment methods.'),
    OnBoardData(illustrations: 'assets/illustrations/Illustrations_3.svg', title: 'Choose your food', text: 'Easily find your type of food craving and\nyou’ll get delivery in wide range.'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(flex: 2,),
            SizedBox(
              height: 500,
              child: PageView.builder(
                onPageChanged: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                itemCount: demoData.length,
                  itemBuilder: (context, index) =>  OnBoardContent(illustrations: demoData[index].illustrations, title: demoData[index].title, text: demoData[index].text,),),
            ),
            const Spacer(),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: List.generate(demoData.length, (index) => Padding(
               padding: const EdgeInsets.only(right: 6),
               child: AnimatedDots(isActive: _selectedIndex == index),
             )) ,
           ),

            const Spacer(flex: 2,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ElevatedButton(
                  onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor,
                  minimumSize: const Size(double.infinity, 45)
                ), child: Text('Get Started'.toUpperCase(),style: kButtonTextStyle,),
              ),
            ),
            const Spacer(),
          ],
        ),
      )
    );
  }
}

class AnimatedDots extends StatelessWidget {
  const AnimatedDots({
    super.key, required this.isActive,
  });

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: 6,
        width: isActive? 20:6,
        decoration: BoxDecoration(
          color: isActive?primaryColor:const Color(0xff868686).withOpacity(0.25),
          borderRadius: BorderRadius.circular(12)
        ),
        duration: const Duration(milliseconds: 300));
  }
}

class OnBoardContent extends StatelessWidget {
  const OnBoardContent({
    super.key,
    required this.illustrations,
    required this.title,
    required this.text,
  });

  final String illustrations;
  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: AspectRatio(aspectRatio: 1, child: SvgPicture.asset(illustrations))),
        const SizedBox(
          height: 16,
        ),
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          text,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyMedium,
        ),

      ],
    );
  }
}


class OnBoardData{

  String illustrations;
  String title;
  String text;

  OnBoardData({required this.illustrations,required this.title,required this.text});

}
