import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String? text;
  final onpress;

  const CustomButton({Key? key, @required this.text, @required this.onpress})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2.2,
      height: 50,
      child: ElevatedButton(
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            )),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.orange)),
        onPressed: onpress,
        child: Text(
          text!,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
