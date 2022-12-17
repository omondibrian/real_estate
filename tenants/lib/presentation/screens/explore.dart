import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tenants/application/property/bloc/property_bloc.dart';
import 'package:tenants/presentation/screens/listings.dart';
import 'package:tenants/presentation/widgets/cards/card_info.dart';
import 'package:tenants/presentation/widgets/cards/horizontal_info_card.dart';
import 'package:tenants/presentation/widgets/custom_app_bar.dart';
import 'package:tenants/presentation/widgets/search_bar.dart';

import '../utils.dart';

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fwidth = MediaQuery.of(context).size.width / baseWidth;
    double ffwidth = fwidth * 0.97;

    context.read<PropertyBloc>().add(
          const PropertyEvent.fetchListings(),
        );
    return BlocConsumer<PropertyBloc, PropertyState>(
      listener: (context, state) {
        print(state.runtimeType);
        print(state);
      },
      builder: (context, state) {
        var loading = state.mapOrNull(
              loadingState: (value) => value.state,
            ) ??
            false;

        var listings =
            state.mapOrNull(initial: ((value) => value.listings)) ?? [];
        if (loading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (listings.isEmpty) {
          return const Center(
            child: Text("No Listings found"),
          );
        }

        return SingleChildScrollView(
          child: Container(
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
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  width: 380 * fwidth,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        width: double.infinity,
                        height: 24 * fwidth,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                0 * fwidth,
                                0 * fwidth,
                                115 * fwidth,
                                0 * fwidth,
                              ),
                              child: Text(
                                'Normal Homes',
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
                        height: 230 * fwidth,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: listings[2]
                                .propertyUnits
                                .map((unit) => InkWell(
                                      onTap: () {
                                         Navigator.of(context).pushReplacement(
                                            MaterialPageRoute(
                                              builder: ((context) => Listing(unit: unit,)),
                                             ),
                                         );
                                        print("tapped");
                                      },
                                      child: HorizontalInfoCard(
                                        fwidth: fwidth,
                                        addr: unit.contact,
                                        description:
                                            "${unit.baths} Baths ${unit.bedroom} bedrooms",
                                        imageUrl: "assets/images/sofa.png",
                                        pricePerUnit: "Ksh. 30,000",
                                      ),
                                    ))
                                .toList(),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 700 * fwidth,
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(
                          0 * fwidth,
                          0 * fwidth,
                          20 * fwidth,
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
                                'Luxurious Homes',
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
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
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
                                imageUrl: "assets/images/sofa.png",
                                pricePerUnit: "Ksh. 30,000",
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  width: 380 * fwidth,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 20.0),
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
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
                                'Budget Homes',
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
                        height: 230 * fwidth,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              HorizontalInfoCard(
                                fwidth: fwidth,
                                addr: "252 1st avenue",
                                description: "1 Baths 2 bedrooms",
                                imageUrl: "assets/images/livingroom.png",
                                pricePerUnit: "Ksh. 30,000",
                              ),
                              HorizontalInfoCard(
                                fwidth: fwidth,
                                addr: "252 1st avenue",
                                description: "1-4 Baths 2-3 bedrooms",
                                imageUrl: "assets/images/sofa.png",
                                pricePerUnit: "Ksh. 30,000",
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
