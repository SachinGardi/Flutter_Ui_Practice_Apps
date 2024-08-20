import 'package:flutter/material.dart';
import 'package:flutter_t_store_app/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:flutter_t_store_app/utils/helpers/helper_functions.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
        right: TSizes.defaultSpace,
        bottom: TDeviceUtils.getBottomNavigationBarHeight(),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                backgroundColor: dark?TColors.primary:Colors.black,
                foregroundColor: TColors.light
            ),
            onPressed: ()=>OnBoardingController.instance.nextPage(), child: const Icon(Icons.arrow_forward_ios_sharp)));
  }
}