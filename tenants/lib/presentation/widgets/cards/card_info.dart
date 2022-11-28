import 'package:flutter/material.dart';

import '../../utils.dart';

class CardInfo extends StatelessWidget {
  const CardInfo({
    Key? key,
    required this.imageUrl,
    required this.pricePerUnit,
    required this.fwidth,
  }) : super(key: key);
  final String imageUrl;
  final String pricePerUnit;
  final double fwidth;
  @override
  Widget build(BuildContext context) {

    double ffwidth = fwidth * 0.97;
    return Container(
      margin:
          EdgeInsets.fromLTRB(0 * fwidth, 0 * fwidth, 15 * fwidth, 0 * fwidth),
      padding: EdgeInsets.fromLTRB(
          161 * fwidth, 107 * fwidth, 10 * fwidth, 10 * fwidth),
      width: 295 * fwidth,
      height: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0x33504947),
        borderRadius: BorderRadius.circular(10 * fwidth),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(imageUrl),
        ),
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(
            10 * fwidth, 5 * fwidth, 0 * fwidth, 5 * fwidth),
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: const Color(0xffffffff),
          borderRadius: BorderRadius.circular(10 * fwidth),
          boxShadow: [
            BoxShadow(
              color: const Color(0x19000000),
              offset: Offset(0 * fwidth, 5 * fwidth),
              blurRadius: 1 * fwidth,
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(
                  0 * fwidth, 0 * fwidth, 2 * fwidth, 0 * fwidth),
              child: Text(
                'Starts at ',
                style: SafeGoogleFont(
                  'Montserrat',
                  fontSize: 10 * ffwidth,
                  fontWeight: FontWeight.w500,
                  height: 1.2175 * ffwidth / fwidth,
                  color: const Color(0xff363636),
                ),
              ),
            ),
            Text(
              pricePerUnit,
              style: SafeGoogleFont(
                'Montserrat',
                fontSize: 10 * ffwidth,
                fontWeight: FontWeight.w500,
                height: 1.2175 * ffwidth / fwidth,
                color: const Color(0xffdc2f2f),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
