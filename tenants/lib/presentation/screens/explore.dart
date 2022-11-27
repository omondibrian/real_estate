import 'package:flutter/material.dart';
import 'package:tenants/presentation/widgets/cards/card_info.dart';
import 'package:tenants/presentation/widgets/cards/horizontal_info_card.dart';
import 'package:tenants/presentation/widgets/custom_app_bar.dart';
import 'package:tenants/presentation/widgets/search_bar.dart';
import '../components/custome_app_bar.dart';
import '../utils.dart';

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fwidth = MediaQuery.of(context).size.width / baseWidth;
    double ffwidth = fwidth * 0.97;
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xffffffff),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(fwidth: fwidth),
          SearchBar(fwidth: fwidth),
          Container(
            margin: EdgeInsets.fromLTRB(
              0 * fwidth,
              0 * fwidth,
              0 * fwidth,
              40 * fwidth,
            ),
            width: 380 * fwidth,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(
                    0 * fwidth,
                    0 * fwidth,
                    49 * fwidth,
                    20 * fwidth,
                  ),
                  width: double.infinity,
                  height: 24 * fwidth,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(
                          0 * fwidth,
                          0 * fwidth,
                          211 * fwidth,
                          0 * fwidth,
                        ),
                        child: Text(
                          'Just In',
                          style: SafeGoogleFont(
                            'Montserrat',
                            fontSize: 20 * ffwidth,
                            fontWeight: FontWeight.w700,
                            height: 1.2175 * ffwidth / fwidth,
                            color: const Color(0xff363636),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(
                          0 * fwidth,
                          1 * fwidth,
                          0 * fwidth,
                          0 * fwidth,
                        ),
                        child: Text(
                          'View All',
                          style: SafeGoogleFont(
                            'Montserrat',
                            fontSize: 12 * ffwidth,
                            fontWeight: FontWeight.w600,
                            height: 1.2175 * ffwidth / fwidth,
                            color: const Color(0xffb0acac),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 217 * fwidth,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      HorizontalInfoCard(
                        fwidth: fwidth,
                        addr: "252 1st avenue",
                        description: "1-4 Baths 2-3 bedrooms",
                        imageUrl: "assets/images/livingroom.png",
                        pricePerUnit: "Ksh. 30,000",
                      ),
                      HorizontalInfoCard(
                        fwidth: fwidth,
                        addr: "252 1st avenue",
                        description: "1-4 Baths 2-3 bedrooms",
                        imageUrl: "assets/images/livingroom.png",
                        pricePerUnit: "Ksh. 30,000",
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: 605 * fwidth,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(
                    0 * fwidth,
                    0 * fwidth,
                    270 * fwidth,
                    20 * fwidth,
                  ),
                  width: double.infinity,
                  height: 24 * fwidth,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(
                          0 * fwidth,
                          0 * fwidth,
                          110 * fwidth,
                          0 * fwidth,
                        ),
                        child: Text(
                          'Designer Homes',
                          style: SafeGoogleFont(
                            'Montserrat',
                            fontSize: 20 * ffwidth,
                            fontWeight: FontWeight.w700,
                            height: 1.2175 * ffwidth / fwidth,
                            color: const Color(0xff363636),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(
                          0 * fwidth,
                          1 * fwidth,
                          0 * fwidth,
                          0 * fwidth,
                        ),
                        child: Text(
                          'View All',
                          style: SafeGoogleFont(
                            'Montserrat',
                            fontSize: 12 * ffwidth,
                            fontWeight: FontWeight.w600,
                            height: 1.2175 * ffwidth / fwidth,
                            color: const Color(0xffb0acac),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 140 * fwidth,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CardInfo(
                        fwidth: fwidth,
                        imageUrl: "assets/images/livingroom.png",
                        pricePerUnit: "Ksh. 30,000",
                      ),
                      CardInfo(
                        fwidth: fwidth,
                        imageUrl: "assets/images/livingroom.png",
                        pricePerUnit: "Ksh. 30,000",
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(
              0 * fwidth,
              0 * fwidth,
              0 * fwidth,
              40 * fwidth,
            ),
            width: 380 * fwidth,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(
                    0 * fwidth,
                    0 * fwidth,
                    49 * fwidth,
                    20 * fwidth,
                  ),
                  width: double.infinity,
                  height: 24 * fwidth,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(
                          0 * fwidth,
                          0 * fwidth,
                          211 * fwidth,
                          0 * fwidth,
                        ),
                        child: Text(
                          'Near You',
                          style: SafeGoogleFont(
                            'Montserrat',
                            fontSize: 20 * ffwidth,
                            fontWeight: FontWeight.w700,
                            height: 1.2175 * ffwidth / fwidth,
                            color: const Color(0xff363636),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(
                          0 * fwidth,
                          1 * fwidth,
                          0 * fwidth,
                          0 * fwidth,
                        ),
                        child: Text(
                          'View All',
                          style: SafeGoogleFont(
                            'Montserrat',
                            fontSize: 12 * ffwidth,
                            fontWeight: FontWeight.w600,
                            height: 1.2175 * ffwidth / fwidth,
                            color: const Color(0xffb0acac),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 217 * fwidth,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      HorizontalInfoCard(
                        fwidth: fwidth,
                        addr: "252 1st avenue",
                        description: "1-4 Baths 2-3 bedrooms",
                        imageUrl: "assets/images/livingroom.png",
                        pricePerUnit: "Ksh. 30,000",
                      ),
                      HorizontalInfoCard(
                        fwidth: fwidth,
                        addr: "252 1st avenue",
                        description: "1-4 Baths 2-3 bedrooms",
                        imageUrl: "assets/images/livingroom.png",
                        pricePerUnit: "Ksh. 30,000",
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
