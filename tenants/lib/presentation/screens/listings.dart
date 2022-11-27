import 'package:flutter/material.dart';

import "../utils.dart";

class Listing extends StatelessWidget {
  const Listing({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fwidth = MediaQuery.of(context).size.width / baseWidth;
    double ffwidth = fwidth * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(
                0 * fwidth,
                0 * fwidth,
                0 * fwidth,
                30 * fwidth,
              ),
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0x33363636),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/images/background-listing.png',
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(
                      0 * fwidth,
                      0 * fwidth,
                      0 * fwidth,
                      300 * fwidth,
                    ),
                    padding: EdgeInsets.fromLTRB(
                      36 * fwidth,
                      16 * fwidth,
                      14.67 * fwidth,
                      10 * fwidth,
                    ),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(
                            0 * fwidth,
                            0 * fwidth,
                            233.67 * fwidth,
                            0 * fwidth,
                          ),
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              style: SafeGoogleFont(
                                'Montserrat',
                                fontSize: 14 * ffwidth,
                                fontWeight: FontWeight.w100,
                                height: 1.2189999989 * ffwidth / fwidth,
                                letterSpacing: -0.2800000012 * fwidth,
                                fontStyle: FontStyle.italic,
                                color: const Color(0xffffffff),
                              ),
                              children: [
                                TextSpan(
                                  text: '9:4',
                                  style: SafeGoogleFont(
                                    'Montserrat',
                                    fontSize: 14 * ffwidth,
                                    fontWeight: FontWeight.w100,
                                    height: 1.2175 * ffwidth / fwidth,
                                    letterSpacing: -0.2800000012 * fwidth,
                                    fontStyle: FontStyle.italic,
                                    color: const Color(0xffffffff),
                                  ),
                                ),
                                TextSpan(
                                  text: '1',
                                  style: SafeGoogleFont(
                                    'Montserrat',
                                    fontSize: 14 * ffwidth,
                                    fontWeight: FontWeight.w100,
                                    height: 1.2175 * ffwidth / fwidth,
                                    letterSpacing: -0.2800000012 * fwidth,
                                    fontStyle: FontStyle.italic,
                                    color: const Color(0xffffffff),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(
                      1 * fwidth,
                      0 * fwidth,
                      0 * fwidth,
                      0 * fwidth,
                    ),
                    width: 38 * fwidth,
                    height: 6 * fwidth,
                    child: Image.asset(
                      // 3 dots image
                      'asset/images/3dots.png',
                      width: 38 * fwidth,
                      height: 6 * fwidth,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(
                20 * fwidth,
                30 * fwidth,
                20 * fwidth,
                30 * fwidth,
              ),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(
                      0 * fwidth,
                      0 * fwidth,
                      0 * fwidth,
                      39.5 * fwidth,
                    ),
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: SizedBox(
                        width: double.infinity,
                        height: 55 * fwidth,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                0 * fwidth,
                                0 * fwidth,
                                119 * fwidth,
                                0 * fwidth,
                              ),
                              width: 196 * fwidth,
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
                                    child: Text(
                                      'Ksh 40,999',
                                      style: SafeGoogleFont(
                                        'Montserrat',
                                        fontSize: 22 * ffwidth,
                                        fontWeight: FontWeight.w600,
                                        height: 1.2175 * ffwidth / fwidth,
                                        color: const Color(0xffdc2f2f),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: double.infinity,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          '1,200 sq.ft',
                                          style: SafeGoogleFont(
                                            'Montserrat',
                                            fontSize: 14 * ffwidth,
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
                                            fontSize: 14 * ffwidth,
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
                                            fontSize: 14 * ffwidth,
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
                                            fontSize: 14 * ffwidth,
                                            fontWeight: FontWeight.w500,
                                            height: 1.2175 * ffwidth / fwidth,
                                            color: const Color(0xff929ea3),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5 * fwidth,
                                        ),
                                        Text(
                                          '2 Bath',
                                          style: SafeGoogleFont(
                                            'Montserrat',
                                            fontSize: 14 * ffwidth,
                                            fontWeight: FontWeight.w500,
                                            height: 1.2175 * ffwidth / fwidth,
                                            color: const Color(0xff363636),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                0 * fwidth,
                                1 * fwidth,
                                0 * fwidth,
                                0 * fwidth,
                              ),
                              width: 20 * fwidth,
                              height: 20 * fwidth,
                              child: const Icon(
                                Icons.heart_broken_outlined,
                                size: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    //horizontal line
                    margin: EdgeInsets.fromLTRB(
                      0 * fwidth,
                      0 * fwidth,
                      0 * fwidth,
                      29.5 * fwidth,
                    ),
                    width: 335 * fwidth,
                    height: 1 * fwidth,
                    child: Image.asset(
                      'assets/images/line.png',
                      width: 335 * fwidth,
                      height: 1 * fwidth,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(
                      0 * fwidth,
                      0 * fwidth,
                      7 * fwidth,
                      20 * fwidth,
                    ),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                            Icons.info_outline_rounded,
                            color: Colors.redAccent,
                            size: 16,
                          ),
                        ),
                        Container(
                          constraints: BoxConstraints(
                            maxWidth: 294 * fwidth,
                          ),
                          child: Text(
                            'Exclusive apartments near your Area. With over 200+ Amenities, this is one to die for!',
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 12 * ffwidth,
                              fontWeight: FontWeight.w400,
                              height: 1.6666666667 * ffwidth / fwidth,
                              color: const Color(0xff363636),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(
                      0 * fwidth,
                      0 * fwidth,
                      190 * fwidth,
                      20 * fwidth,
                    ),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
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
                            Icons.people_alt_outlined,
                            size: 16,
                          ),
                        ),
                        Text(
                          'Contact: John Doe',
                          style: SafeGoogleFont(
                            'Montserrat',
                            fontSize: 12 * ffwidth,
                            fontWeight: FontWeight.w400,
                            height: 1.6666666667 * ffwidth / fwidth,
                            color: const Color(0xff363636),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(
                      0 * fwidth,
                      0 * fwidth,
                      6 * fwidth,
                      75 * fwidth,
                    ),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
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
                              Icons.card_giftcard_outlined,
                              color: Colors.redAccent,
                              size: 16,
                            )),
                        Text(
                          'New users - Flat 15% OFF on your first transaction',
                          style: SafeGoogleFont(
                            'Montserrat',
                            fontSize: 12 * ffwidth,
                            fontWeight: FontWeight.w400,
                            height: 1.6666666667 * ffwidth / fwidth,
                            color: const Color(0xff363636),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 44 * fwidth,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(
                            0 * fwidth,
                            0 * fwidth,
                            10 * fwidth,
                            0 * fwidth,
                          ),
                          width: 155 * fwidth,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0x33b1adad),
                            ),
                            color: const Color(0xfff8f8f8),
                            borderRadius: BorderRadius.circular(
                              10 * fwidth,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Ask a Question',
                              style: SafeGoogleFont(
                                'Montserrat',
                                fontSize: 12 * ffwidth,
                                fontWeight: FontWeight.w700,
                                height: 1.2175 * ffwidth / fwidth,
                                color: const Color(0xff363636),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 170 * fwidth,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color: const Color(0xffdc2f2f),
                            borderRadius: BorderRadius.circular(
                              10 * fwidth,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Express Interest',
                              style: SafeGoogleFont(
                                'Montserrat',
                                fontSize: 12 * ffwidth,
                                fontWeight: FontWeight.w700,
                                height: 1.2175 * ffwidth / fwidth,
                                color: const Color(0xffffffff),
                              ),
                            ),
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
    );
  }
}
