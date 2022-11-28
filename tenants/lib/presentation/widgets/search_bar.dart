import 'package:flutter/material.dart';

import '../utils.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
    required this.fwidth,
  }) : super(key: key);
  final double fwidth;
  @override
  Widget build(BuildContext context) {
    double ffwidth = fwidth * 0.97;
    return Container(
      margin: EdgeInsets.fromLTRB(
        5 * fwidth,
        0 * fwidth,
        20 * fwidth,
        10 * fwidth,
      ),
      padding: EdgeInsets.fromLTRB(
        15 * fwidth,
        12 * fwidth,
        15 * fwidth,
        11 * fwidth,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0x33b1adad)),
        color: const Color(0xfff8f8f8),
        borderRadius: BorderRadius.circular(
          10 * fwidth,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(
              0 * fwidth,
              0 * fwidth,
              106 * fwidth,
              0 * fwidth,
            ),
            child: Text(
              'Search by Location, Area or Pin Code',
              style: SafeGoogleFont(
                'Montserrat',
                fontSize: 10 * ffwidth,
                fontWeight: FontWeight.w500,
                height: 1.2175 * ffwidth / fwidth,
                color: const Color(0xff363636),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(
              0 * fwidth,
              0 * fwidth,
              0 * fwidth,
              1 * fwidth,
            ),
            width: 12 * fwidth,
            height: 12 * fwidth,
            child: const Icon(
              Icons.search,
              size: 16,
            ),
          ),
        ],
      ),
    );
  }
}
