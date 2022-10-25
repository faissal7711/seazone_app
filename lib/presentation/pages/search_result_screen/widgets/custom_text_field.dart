// ignore_for_file: missing_return

import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final String errVal;
  final IconData icon;
  final Function onClick;

  const CustomTextField({
    required this.hint,
    required this.icon,
    required this.errVal,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10.0,
      ),
      child: SizedBox(
//        height: 50,
        child: Center(
          child: TextFormField(
            maxLines: 1,
//            maxLength: 55,
            cursorHeight: 20,
            obscureText: hint == 'Enter your password' ? true : false,
            validator: (value) {
              if (value!.isEmpty) {
                return errVal;
              }
            },
//        cursorColor: Colors.white,
            decoration: InputDecoration(
              hintText: hint,
//          fillColor: Colors.white,
              prefixIcon: Icon(
                icon,
//            color: KMainColor,
              ),
              filled: true,
              label: Text(hint),
              hintMaxLines: 2,
//          fillColor: KSecondaryColor,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: const BorderSide(color: Colors.white60),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: const BorderSide(color: Colors.white),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
                borderSide: const BorderSide(color: Colors.white60),
              ),
            ),
            onSaved: onClick(),
          ),
        ),
      ),
    );
  }
}
