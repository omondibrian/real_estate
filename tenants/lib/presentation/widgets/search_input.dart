import 'package:flutter/material.dart';

import 'package:tenants/presentation/utils.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({
    Key? key,
    required this.fwidth,
    required this.query,
  }) : super(key: key);
  final double fwidth;
  final String query;
  @override
  Widget build(BuildContext context) {
    double ffwidth = fwidth * 0.97;
    return Row(
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(
            0 * fwidth,
            0 * fwidth,
            10 * fwidth,
            0 * fwidth,
          ),
          width: 24 * fwidth,
          height: 24 * fwidth,
          child: const Icon(
            Icons.arrow_back_ios_outlined,
            size: 16,
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(
            0 * fwidth,
            0 * fwidth,
            125 * fwidth,
            0 * fwidth,
          ),
          child: Text(
            query,
            style: SafeGoogleFont(
              'Montserrat',
              fontSize: 14 * ffwidth,
              fontWeight: FontWeight.w500,
              height: 1.2175 * ffwidth / fwidth,
              color: const Color(0xff363636),
            ),
          ),
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
