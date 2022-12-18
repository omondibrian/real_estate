import 'package:flutter/material.dart';
import 'package:tenants/presentation/utils.dart';

//password field
class PasswordField extends StatefulWidget {
  final TextEditingController controller;

  const PasswordField(this.controller, {super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool hidePassword = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: TextFormField(
        obscureText: hidePassword,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            borderSide: BorderSide(color: Colors.black, width: 0.0),
          ),
          prefixIcon: const Icon(Icons.lock),
          hintText: "password",
          suffix: InkWell(
            onTap: () {
              setState(() {
                hidePassword = !hidePassword;
              });
            },
            child: Icon(
              hidePassword ? Icons.visibility : Icons.visibility_off,
            ),
          ),
        ),
        validator: passwordValidator,
        controller: widget.controller,
      ),
    );
  }
}

class DefaultInput extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final bool isPassword;
  final IconData icon;
  final FocusNode? focusNode;
  final bool readOnly;
  final TextInputType keyboardType;
  const DefaultInput(
      {Key? key,
      required this.hintText,
      required this.controller,
      required this.validator,
      required this.icon,
      this.focusNode,
      this.readOnly = false,
      this.isPassword = false,
      this.keyboardType = TextInputType.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      // height: 150,
      child: TextFormField(
        focusNode: focusNode,
        obscureText: isPassword,
        textAlign: TextAlign.start,
        readOnly: readOnly,
        decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: readOnly ? Colors.redAccent : null,
          ),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          hintText: hintText,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            borderSide: BorderSide(width: 0.0),
          ),
        ),
        controller: controller,
        validator: validator,
        keyboardType: keyboardType,
      ),
    );
  }
}
