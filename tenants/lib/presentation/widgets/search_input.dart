import 'package:flutter/material.dart';

import 'package:tenants/presentation/utils.dart';
import 'package:tenants/presentation/widgets/input.dart';

class SearchInput extends StatelessWidget {
   SearchInput({
    Key? key,
    required this.fwidth,
    required this.query,
  }) : super(key: key);
  final double fwidth;
  final String query;
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        DefaultInput(
          hintText: query,
          controller: _controller,
          validator: requiredValidator,
          icon: Icons.arrow_back_ios_outlined,
        ),
        SizedBox(
          width: 24 * fwidth,
          height: 24 * fwidth,
          child: const Icon(
            Icons.close,
            size: 16,
          ),
        ),
      ],
    );
  }
}
