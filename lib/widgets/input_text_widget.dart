import 'package:flutter/material.dart';

class InputTextWidget extends StatelessWidget {
  // const InputTextWidget({super.key});

  final TextEditingController textEditingController;
  final IconData? iconData;
  final String? assetReference;
  final String labelString;
  final bool isObscure;

  InputTextWidget({
    required this.textEditingController, 
    this.iconData, 
    this.assetReference,
    required this.isObscure,
    required this.labelString,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      decoration: InputDecoration(
        labelText: labelString,
        prefixIcon: iconData != null 
        ? Icon(iconData): 
        Padding(
          padding: const EdgeInsets.all(8),
          child: Image.asset(assetReference!, width: 10,),
        ),
        labelStyle: const TextStyle(
          fontSize: 18,
        ),
      ),
    );
  }
}