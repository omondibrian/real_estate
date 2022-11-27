import 'package:flutter/material.dart';

import '../utils.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
    required this.fwidth,
  }) : super(key: key);
  final double fwidth;
  @override
  Widget build(BuildContext context) {
    double ffwidth = fwidth * 0.97;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(
            0 * fwidth,
            0 * fwidth,
            10 * fwidth,
            0 * fwidth,
          ),
          width: 20 * fwidth,
          height: 20 * fwidth,
          child: const Icon(
            Icons.location_on_outlined,
            color: Colors.red,
            size: 16,
          ),
        ),
        SizedBox(
          width: 104 * fwidth,
          height: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(
                  0 * fwidth,
                  0 * fwidth,
                  0 * fwidth,
                  3 * fwidth,
                ),
                child: Text(
                  'Location',
                  style: SafeGoogleFont(
                    'Montserrat',
                    fontSize: 10 * ffwidth,
                    fontWeight: FontWeight.w500,
                    height: 1.2175 * ffwidth / fwidth,
                    color: const Color(0xffb0acac),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(
                        0 * fwidth,
                        0 * fwidth,
                        6 * fwidth,
                        0 * fwidth,
                      ),
                      child: Text(
                        'Woodbridge',
                        style: SafeGoogleFont(
                          'Montserrat',
                          fontSize: 14 * ffwidth,
                          fontWeight: FontWeight.w600,
                          height: 1.2175 * ffwidth / fwidth,
                          color: const Color(0xff363636),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                        0 * fwidth,
                        2.02 * fwidth,
                        0 * fwidth,
                        0 * fwidth,
                      ),
                      width: 7 * fwidth,
                      height: 3.98 * fwidth,
                      child: const Icon(
                        Icons.arrow_drop_down,
                        size: 16,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 16 * fwidth,
                height: 16 * fwidth,
                child: const Icon(
                  Icons.settings,
                  size: 16,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
