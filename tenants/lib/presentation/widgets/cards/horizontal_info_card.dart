import 'package:flutter/material.dart';

import '../../utils.dart';

class HorizontalInfoCard extends StatelessWidget {
  const HorizontalInfoCard({
    Key? key,
    required this.imageUrl,
    required this.pricePerUnit,
    required this.description,
    required this.addr,
    required this.fwidth,
  }) : super(key: key);
  final String imageUrl;
  final String pricePerUnit;
  final String description;
  final String addr;
  final double fwidth;
  @override
  Widget build(BuildContext context) {
    double ffwidth = fwidth * 0.97;
    return Container(
      margin: EdgeInsets.fromLTRB(
        0 * fwidth,
        0 * fwidth,
        20 * fwidth,
        0 * fwidth,
      ),
      width: 200 * fwidth,
      height: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(
              0 * fwidth,
              0 * fwidth,
              0 * fwidth,
              15 * fwidth,
            ),
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0x33504947),
              borderRadius: BorderRadius.circular(10 * fwidth),
            ),
            child: Center(
              child: SizedBox(
                width: 180 * fwidth,
                height: 140 * fwidth,
                child: Image.asset(
                  imageUrl,
                  width: 180 * fwidth,
                  height: 140 * fwidth,
                ),
              ),
            ),
          ),
          SizedBox(
           
            width: 120 * fwidth,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(
                    0 * fwidth,
                    0 * fwidth,
                    0 * fwidth,
                    4 * fwidth,
                  ),
                  child: Text(
                    pricePerUnit,
                    style: SafeGoogleFont(
                      'Montserrat',
                      fontSize: 16 * ffwidth,
                      fontWeight: FontWeight.w600,
                      height: 1.2175 * ffwidth / fwidth,
                      color: const Color(0xff363636),
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(
                          0 * fwidth,
                          0 * fwidth,
                          0 * fwidth,
                          4 * fwidth,
                        ),
                        child: Text(
                          description,
                          style: SafeGoogleFont(
                            'Montserrat',
                            fontSize: 12 * ffwidth,
                            fontWeight: FontWeight.w500,
                            height: 1.2175 * ffwidth / fwidth,
                            color: const Color(0xff363636),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.location_on_outlined,
                              color: Colors.red,
                              size: 15,
                            ),
                            Text(
                              addr,
                              style: SafeGoogleFont(
                                'Montserrat',
                                fontSize: 10 * ffwidth,
                                fontWeight: FontWeight.w500,
                                height: 1.2175 * ffwidth / fwidth,
                                color: const Color(0xff77858c),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
