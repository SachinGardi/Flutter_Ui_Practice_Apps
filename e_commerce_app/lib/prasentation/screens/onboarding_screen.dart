import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late PageController _pageController;
  final List<Onboard> onboardData = [
    Onboard(
      image: "assets/Illustration/Illustration-0.png",
      title: "Find the item you’ve \nbeen looking for",
      description:
      "Here you’ll see rich varieties of goods, carefully classified for seamless browsing experience.",
    ),
    Onboard(
      image: "assets/Illustration/Illustration-1.png",
      title: "Get those shopping \nbags filled",
      description:
      "Add any item you want to your cart, or save it on your wishlist, so you don’t miss it in your future purchases.",
    ),
    Onboard(
      image: "assets/Illustration/Illustration-2.png",
      title: "Fast & secure \npayment",
      description: "There are many payment options available for your ease.",
    ),
    Onboard(
      image: "assets/Illustration/Illustration-3.png",
      title: "Package tracking",
      description:
      "In particular, Shoplon can pack your orders, and help you seamlessly manage your shipments.",
    ),
    Onboard(
      image: "assets/Illustration/Illustration-4.png",
      title: "Nearby stores",
      description:
      "Easily track nearby shops, browse through their items and get information about their prodcuts.",
    ),
  ];
  int _pageIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);

    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
        children: [
            Expanded(
              child: PageView.builder(
                itemCount: onboardData.length,
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _pageIndex = index;
                    if(_pageIndex == onboardData.length - 1){
                      Future.delayed(const Duration(seconds: 1), () {
                        _pageController.animateToPage(
                          0,
                          duration: const Duration(milliseconds: 400),
                          curve: Curves.easeInOut,
                        );
                      });
                    }
                  });
                },

                itemBuilder: (context, index) =>  OnboardContent(
                  image: onboardData[index].image,
                  title: onboardData[index].title,
                  description:onboardData[index].description,
                ),
              ),
            ),
            Row(
              children: [
                ...List.generate(onboardData.length, (index) =>  Padding(
                  padding: const EdgeInsets.only(right: 4),
                  child: DotIndicator(isActive: index == _pageIndex),
                )),
                const Spacer(),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurpleAccent,
                        shape: const CircleBorder()),
                    onPressed: () {
                      _pageController.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.ease);
                    },
                    child: SvgPicture.asset(
                      'assets/icons/Arrow - Right.svg',
                      color: Colors.white,
                    )),
              ],
            ),
        ],
      ),
          )),
    );
  }
}

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    super.key,
    this.isActive = false
  });
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: isActive? 12:4,
      width: 4,
      decoration: BoxDecoration(
        color: isActive? primaryColor:primaryColor.withOpacity(0.4),
        borderRadius: BorderRadius.circular(12)
      ), duration: const Duration(milliseconds: 300),
    );
  }
}

class OnboardContent extends StatelessWidget {
  const OnboardContent({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  final String image, title, description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Image.asset(
          image,
          height: 250,
        ),
        const Spacer(),
        Text(
          title,
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          description,
          textAlign: TextAlign.center,
        ),
        const Spacer(),
      ],
    );
  }
}

class Onboard {
  final String image, title, description;

  Onboard(
      {required this.image, required this.title, required this.description});
}
