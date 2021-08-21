import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DefaultFormField extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType? textInputType;
  final bool? isPassword;
  final int? maxLine;
  final String? hintText;

  const DefaultFormField(
      {Key? key,
      @required this.controller,
      @required this.textInputType,
      @required this.hintText,
      this.isPassword,
      this.maxLine})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(labelText: hintText),
        keyboardType: textInputType,
        controller: controller,
        obscureText: isPassword ?? false,
        maxLines: maxLine ?? 1,
      ),
    );
  }
}
