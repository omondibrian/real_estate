import 'package:flutter/material.dart';
import 'package:tenants/presentation/utils.dart';
import 'package:tenants/presentation/widgets/cards/search_result.dart';
import 'package:tenants/presentation/widgets/search_input.dart';
import 'package:tenants/presentation/widgets/search_params.dart';

class SearchResults extends StatelessWidget {
  const SearchResults({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fwidth = MediaQuery.of(context).size.width / baseWidth;
    double ffwidth = fwidth * 0.97;
    return SingleChildScrollView(
      child: SizedBox(
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
                  20 * fwidth,
                  10 * fwidth,
                  20 * fwidth,
                  0 * fwidth,
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
                        21 * fwidth,
                      ),
                      padding: EdgeInsets.fromLTRB(
                        10 * fwidth,
                        11 * fwidth,
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
                      child: SearchInput(
                        fwidth: fwidth,
                        query: '2 BHK Residential',
                      ),
                    ),
                    const SearchParams(),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                        0 * fwidth,
                        0 * fwidth,
                        0 * fwidth,
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
                              108 * fwidth,
                              0 * fwidth,
                            ),
                            child: Text(
                              '32 Results Found',
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
                              5 * fwidth,
                              0 * fwidth,
                              4 * fwidth,
                            ),
                            height: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // sortRLP (522:549)
                                  margin: EdgeInsets.fromLTRB(
                                    0 * fwidth,
                                    0 * fwidth,
                                    5 * fwidth,
                                    0 * fwidth,
                                  ),
                                  child: Text(
                                    'Sort',
                                    style: SafeGoogleFont(
                                      'Montserrat',
                                      fontSize: 12 * ffwidth,
                                      fontWeight: FontWeight.w600,
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
                                  width: 16 * fwidth,
                                  height: 10 * fwidth,
                                  child: Image.asset(
                                    'assets/images/funnel-sort.png',
                                    width: 16 * fwidth,
                                    height: 10 * fwidth,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          
                        ],
                      ),
                    ),
                    Container(
                            padding: EdgeInsets.zero,
                            margin: EdgeInsets.fromLTRB(
                              0 * fwidth,
                              0 * fwidth,
                              0 * fwidth,
                              30 * fwidth,
                            ),
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SearchResultCard(
                                  fwidth: fwidth,
                                  imageUrl: "assets/images/livingroom.png",
                                  pricePerUnit: "Ksh. 30,000",
                                ),
                                SearchResultCard(
                                  fwidth: fwidth,
                                  imageUrl: "assets/images/livingroom.png",
                                  pricePerUnit: "Ksh. 30,000",
                                ),
                                SearchResultCard(
                                  fwidth: fwidth,
                                  imageUrl: "assets/images/livingroom.png",
                                  pricePerUnit: "Ksh. 30,000",
                                )
                              ],
                            ),
                          ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
