import 'package:flutter/material.dart';
import 'package:flutter_t_store_app/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:flutter_t_store_app/features/authentication/screens/signup/signup.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              vertical: TSizes.spaceBtwSections),
          child: Column(
            children: [
              ///Email
              TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.direct_right),
                    labelText: TTexts.email),
              ),
              const SizedBox(
                height: TSizes.spaceBtwInputFields,
              ),

              ///Password
              TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.password_check),
                    labelText: TTexts.password,
                    suffixIcon: Icon(Iconsax.eye_slash)),
              ),

              const SizedBox(height: TSizes.spaceBtwInputFields / 2),

              /// Remember me & Forget Password
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ///Remember me
                  Row(
                    children: [
                      Checkbox(
                        value: true,
                        onChanged: (value) {},
                      ),
                      const SizedBox(
                        width: TSizes.sm,
                      ),
                      Text(
                        TTexts.rememberMe,
                        style: Theme.of(context).textTheme.bodySmall,
                      )
                    ],
                  ),

                  ///Forget password
                  TextButton(
                      onPressed: () => Get.to(()=>const ForgotPasswordScreen()),
                      child: const Text(TTexts.forgetPassword))
                ],
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              ///Sign In Button
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(TTexts.signIn))),

              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),

              ///Create Account button
              SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                      onPressed: () {
                        Get.to(const SignupScreen());
                      },
                      child: const Text(TTexts.createAccount))),

            ],
          ),
        ));
  }
}