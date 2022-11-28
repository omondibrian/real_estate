import 'package:flutter/material.dart';

import '../utils.dart';

class SortButtomSheet extends StatelessWidget {
  const SortButtomSheet({
    Key? key,
    required this.fwidth,
  }) : super(key: key);
  final double fwidth;
  @override
  Widget build(BuildContext context) {
    double ffwidth = fwidth * 0.97;
    return Positioned(
      left: 0 * fwidth,
      top: 430 * fwidth,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
        ),
        child: Container(
          padding: EdgeInsets.fromLTRB(
            10 * fwidth,
            10 * fwidth,
            10 * fwidth,
            60 * fwidth,
          ),
          width: 375 * fwidth,
          height: 382 * fwidth,
          decoration: BoxDecoration(
            color: const Color(0xffffffff),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(
                10 * fwidth,
              ),
              topRight: Radius.circular(
                10 * fwidth,
              ),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(
                  154 * fwidth,
                  0 * fwidth,
                  153 * fwidth,
                  0 * fwidth,
                ),
                width: double.infinity,
                height: 4 * fwidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    2.5 * fwidth,
                  ),
                  color: const Color(0x7fb0acac),
                ),
              ),
              SizedBox(
                height: 26 * fwidth,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(
                  20 * fwidth,
                  0 * fwidth,
                  43 * fwidth,
                  0 * fwidth,
                ),
                padding: EdgeInsets.fromLTRB(
                  0 * fwidth,
                  0 * fwidth,
                  1 * fwidth,
                  0 * fwidth,
                ),
                width: double.infinity,
                height: 32 * fwidth,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(
                        0 * fwidth,
                        0 * fwidth,
                        53.5 * fwidth,
                        0 * fwidth,
                      ),
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(
                              0 * fwidth,
                              0 * fwidth,
                              0.5 * fwidth,
                              14 * fwidth,
                            ),
                            child: Text(
                              'Sort By',
                              style: SafeGoogleFont(
                                'Montserrat',
                                fontSize: 13 * ffwidth,
                                fontWeight: FontWeight.w600,
                                height: 1.2175 * ffwidth / fwidth,
                                color: const Color(0xff363636),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 167.5 * fwidth,
                            height: 2 * fwidth,
                            child: Image.network(
                              'assets/screens/images/line-MdM.png',
                              width: 167.5 * fwidth,
                              height: 2 * fwidth,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 70 * fwidth,
                      height: 16 * fwidth,
                      child: Center(
                        child: Text(
                          'Categories',
                          style: SafeGoogleFont(
                            'Montserrat',
                            fontSize: 13 * ffwidth,
                            fontWeight: FontWeight.w400,
                            height: 1.2175 * ffwidth / fwidth,
                            color: const Color(0xff363636),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 26 * fwidth,
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
                        16 * fwidth,
                      ),
                      padding: EdgeInsets.fromLTRB(
                        20 * fwidth,
                        14 * fwidth,
                        20.02 * fwidth,
                        14 * fwidth,
                      ),
                      width: double.infinity,
                      height: 46 * fwidth,
                      decoration: BoxDecoration(
                        color: const Color(0x0cde3f3f),
                        borderRadius: BorderRadius.circular(
                          10 * fwidth,
                        ),
                      ),
                      child: SizedBox(
                        width: double.infinity,
                        height: double.infinity,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                0 * fwidth,
                                0 * fwidth,
                                213.03 * fwidth,
                                0 * fwidth,
                              ),
                              child: Text(
                                'Newest First',
                                style: SafeGoogleFont(
                                  'Montserrat',
                                  fontSize: 13 * ffwidth,
                                  fontWeight: FontWeight.w700,
                                  height: 1.3846153846 * ffwidth / fwidth,
                                  color: const Color(0xffde3f3f),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                0 * fwidth,
                                0.01 * fwidth,
                                0 * fwidth,
                                0 * fwidth,
                              ),
                              width: 15.95 * fwidth,
                              height: 11.92 * fwidth,
                              child: Image.network(
                                'assets/screens/images/ioniconssvgios-checkmark-43D.png',
                                width: 15.95 * fwidth,
                                height: 11.92 * fwidth,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                        20 * fwidth,
                        0 * fwidth,
                        0 * fwidth,
                        30 * fwidth,
                      ),
                      child: Text(
                        'Oldest First',
                        style: SafeGoogleFont(
                          'Montserrat',
                          fontSize: 13 * ffwidth,
                          fontWeight: FontWeight.w400,
                          height: 1.3846153846 * ffwidth / fwidth,
                          color: const Color(0xff363636),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                        20 * fwidth,
                        0 * fwidth,
                        0 * fwidth,
                        30 * fwidth,
                      ),
                      child: Text(
                        'Featured',
                        style: SafeGoogleFont(
                          'Montserrat',
                          fontSize: 13 * ffwidth,
                          fontWeight: FontWeight.w400,
                          height: 1.3846153846 * ffwidth / fwidth,
                          color: const Color(0xff363636),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                        20 * fwidth,
                        0 * fwidth,
                        0 * fwidth,
                        30 * fwidth,
                      ),
                      child: Text(
                        'Best Rated',
                        style: SafeGoogleFont(
                          'Montserrat',
                          fontSize: 13 * ffwidth,
                          fontWeight: FontWeight.w400,
                          height: 1.3846153846 * ffwidth / fwidth,
                          color: const Color(0xff363636),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                        20 * fwidth,
                        0 * fwidth,
                        0 * fwidth,
                        0 * fwidth,
                      ),
                      child: Text(
                        'Only Near Me',
                        style: SafeGoogleFont(
                          'Montserrat',
                          fontSize: 13 * ffwidth,
                          fontWeight: FontWeight.w400,
                          height: 1.3846153846 * ffwidth / fwidth,
                          color: const Color(0xff363636),
                        ),
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
