import 'package:flutter/material.dart';

class CommonSubmitButton extends StatelessWidget {
  final String labelButton;
  final Function(String) submitCallback;

  const CommonSubmitButton(
      {Key? key, required this.labelButton, required this.submitCallback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        width: MediaQuery.of(context).size.width,
        child: ElevatedButton(
          onPressed: () {
            submitCallback(labelButton);
          },
          child: Text(labelButton),
        ));
  }
}
