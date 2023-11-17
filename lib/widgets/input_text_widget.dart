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
      ),
    );
  }
}