import 'package:flutter/material.dart';

import '../../utils.dart';

class SearchResultCard extends StatelessWidget {
  const SearchResultCard({
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
      margin: EdgeInsets.fromLTRB(
        0 * fwidth,
        0 * fwidth,
        0 * fwidth,
        30 * fwidth,
      ),
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
        ),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
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
                  borderRadius: BorderRadius.circular(
                    10 * fwidth,
                  ),
                ),
                child: Center(
                  child: SizedBox(
                    width: 335 * fwidth,
                    height: 140 * fwidth,
                    child: Image.asset(
                      imageUrl,
                      width: 335 * fwidth,
                      height: 140 * fwidth,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(
                  10 * fwidth,
                  0 * fwidth,
                  10 * fwidth,
                  0 * fwidth,
                ),
                width: double.infinity,
                height: 38 * fwidth,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(
                        0 * fwidth,
                        0 * fwidth,
                        60 * fwidth,
                        0 * fwidth,
                      ),
                      height: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 116 * fwidth,
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(
                                    0 * fwidth,
                                    0 * fwidth,
                                    0 * fwidth,
                                    10 * fwidth,
                                  ),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        '1,200 sq.ft',
                                        style: SafeGoogleFont(
                                          'Montserrat',
                                          fontSize: 12 * ffwidth,
                                          fontWeight: FontWeight.w500,
                                          height: 1.2175 * ffwidth / fwidth,
                                          color: const Color(0xff363636),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5 * fwidth,
                                      ),
                                      Text(
                                        '•',
                                        style: SafeGoogleFont(
                                          'Montserrat',
                                          fontSize: 12 * ffwidth,
                                          fontWeight: FontWeight.w500,
                                          height: 1.2175 * ffwidth / fwidth,
                                          color: const Color(0xff929ea3),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5 * fwidth,
                                      ),
                                      Text(
                                        '4 Beds',
                                        style: SafeGoogleFont(
                                          'Montserrat',
                                          fontSize: 12 * ffwidth,
                                          fontWeight: FontWeight.w500,
                                          height: 1.2175 * ffwidth / fwidth,
                                          color: const Color(0xff363636),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(
                                    0.67 * fwidth,
                                    0 * fwidth,
                                    10 * fwidth,
                                    0 * fwidth,
                                  ),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(
                                          0 * fwidth,
                                          1 * fwidth,
                                          5.67 * fwidth,
                                          0 * fwidth,
                                        ),
                                        width: 6.67 * fwidth,
                                        height: 8.33 * fwidth,
                                        child: const Icon(
                              Icons.location_on_outlined,
                              color: Colors.red,
                              size: 15,
                            ),
                                      ),
                                      Text(
                                        '252 1st Avenue',
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
                          SizedBox(
                            width: 3 * fwidth,
                          ),
                          Text(
                            '•',
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 12 * ffwidth,
                              fontWeight: FontWeight.w500,
                              height: 1.2175 * ffwidth / fwidth,
                              color: const Color(0xff929ea3),
                            ),
                          ),
                          SizedBox(
                            width: 1 * fwidth,
                          ),
                          Text(
                            '2 Bath',
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 12 * ffwidth,
                              fontWeight: FontWeight.w500,
                              height: 1.2175 * ffwidth / fwidth,
                              color: const Color(0xff363636),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'KSh.4,999',
                      style: SafeGoogleFont(
                        'Montserrat',
                        fontSize: 16 * ffwidth,
                        fontWeight: FontWeight.w600,
                        height: 1.2175 * ffwidth / fwidth,
                        color: const Color(0xffdc2f2f),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
