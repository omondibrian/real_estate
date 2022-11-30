import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final void Function() handlePress;
  final String text;
  const DefaultButton({Key? key, required this.handlePress, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 395,
      height: 50,
      child: ElevatedButton(
        onPressed: handlePress,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            const Color.fromARGB(255, 241, 75, 24),
          ),
        ),
        child: Text(text),
      ),
    );
  }
}
