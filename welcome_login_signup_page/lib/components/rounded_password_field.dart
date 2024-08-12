import 'package:flutter/material.dart';
import '../constants.dart';
import 'text_field_container.dart';

class RoundedPasswordField extends StatelessWidget {
  const RoundedPasswordField({
    super.key, required this.onChanged,
  });

  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(child: TextFormField(
      onChanged: onChanged,
      obscureText: true,
      decoration: const InputDecoration(
          hintText: 'Password',
          icon: Icon(Icons.lock,color: kPrimaryColor,),
          border: InputBorder.none,
          suffixIcon: Icon(Icons.visibility,color: kPrimaryColor,)
      ),
    ));
  }
}