import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tenants/domain/property/entity/request_entity.dart';
import 'package:tenants/domain/property/entity/unit_entity.dart';
import 'package:tenants/presentation/realtors.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../application/property/bloc/property_bloc.dart';
import "../utils.dart";

class Listing extends StatelessWidget {
  const Listing({super.key, required this.unit});
  final UnitEntity unit;

  Future<void> _call(String urlStr) async {
    final Uri url = Uri.parse(urlStr);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fwidth = MediaQuery.of(context).size.width / baseWidth;
    double ffwidth = fwidth * 0.97;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: ((context) => const Realtors()),
                ),
              );
            },
            icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: BlocBuilder<PropertyBloc, PropertyState>(builder: (context, state) {
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
                          "assets/images/sofa.png",
                        ),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 320 * fwidth,
                        ),
                        Stack(
                          alignment: Alignment.topLeft,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                1 * fwidth,
                                0 * fwidth,
                                0 * fwidth,
                                0 * fwidth,
                              ),
                              width: 38 * fwidth,
                              height: 6 * fwidth,
                              // 3 dots image
                              child: Image.asset(
                                "assets/images/dots.png",
                                width: 38 * fwidth,
                                height: 6 * fwidth,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(
                      20 * fwidth,
                      30 * fwidth,
                      20 * fwidth,
                      90 * fwidth,
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
                            19.5 * fwidth,
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                                unit.livingSpace,
                                                style: SafeGoogleFont(
                                                  'Montserrat',
                                                  fontSize: 14 * ffwidth,
                                                  fontWeight: FontWeight.w500,
                                                  height:
                                                      1.2175 * ffwidth / fwidth,
                                                  color:
                                                      const Color(0xff363636),
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
                                                  height:
                                                      1.2175 * ffwidth / fwidth,
                                                  color:
                                                      const Color(0xff929ea3),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 5 * fwidth,
                                              ),
                                              Text(
                                                '${unit.bedroom} Beds',
                                                style: SafeGoogleFont(
                                                  'Montserrat',
                                                  fontSize: 14 * ffwidth,
                                                  fontWeight: FontWeight.w500,
                                                  height:
                                                      1.2175 * ffwidth / fwidth,
                                                  color:
                                                      const Color(0xff363636),
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
                                                  height:
                                                      1.2175 * ffwidth / fwidth,
                                                  color:
                                                      const Color(0xff929ea3),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 5 * fwidth,
                                              ),
                                              Text(
                                                '${unit.baths} Bath',
                                                style: SafeGoogleFont(
                                                  'Montserrat',
                                                  fontSize: 14 * ffwidth,
                                                  fontWeight: FontWeight.w500,
                                                  height:
                                                      1.2175 * ffwidth / fwidth,
                                                  color:
                                                      const Color(0xff363636),
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
                                    child: IconButton(
                                      onPressed: () {
                                        context.read<PropertyBloc>().add(
                                              PropertyEvent.saveUnit(
                                                  unit: unit),
                                            );
                                      },
                                      icon: const Icon(
                                        Icons.heart_broken_outlined,
                                        size: 16,
                                      ),
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
                            19.5 * fwidth,
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
                            10 * fwidth,
                          ),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                  0 * fwidth,
                                  0 * fwidth,
                                  0 * fwidth,
                                  0 * fwidth,
                                ),
                                width: 25 * fwidth,
                                height: 24 * fwidth,
                                child: const Icon(
                                  Icons.info_outline_rounded,
                                  color: Colors.redAccent,
                                  size: 16,
                                ),
                              ),
                              Container(
                                constraints: BoxConstraints(
                                  maxWidth: 280 * fwidth,
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
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                0 * fwidth,
                                0 * fwidth,
                                0 * fwidth,
                                0 * fwidth,
                              ),
                              width: 20 * fwidth,
                              height: 24 * fwidth,
                              child: const Icon(
                                Icons.people_alt_outlined,
                                size: 16,
                                color: Colors.redAccent,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Contact: ',
                              style: SafeGoogleFont(
                                'Montserrat',
                                fontSize: 12 * ffwidth,
                                fontWeight: FontWeight.w400,
                                height: 1.6666666667 * ffwidth / fwidth,
                                color: const Color(0xff363636),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            InkWell(
                                onTap: () => _call("mailto:${unit.contact}"),
                                child: Text(unit.contact))
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                0 * fwidth,
                                0 * fwidth,
                                0 * fwidth,
                                0 * fwidth,
                              ),
                              width: 20 * fwidth,
                              height: 24 * fwidth,
                              child: const Icon(
                                Icons.phone,
                                size: 16,
                                color: Colors.redAccent,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Phone : ',
                              style: SafeGoogleFont(
                                'Montserrat',
                                fontSize: 12 * ffwidth,
                                fontWeight: FontWeight.w400,
                                height: 1.6666666667 * ffwidth / fwidth,
                                color: const Color(0xff363636),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              onTap: () => _call("tel:0716539104"),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: const [SelectableText("0716539104")],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(
                            0 * fwidth,
                            0 * fwidth,
                            0 * fwidth,
                            35 * fwidth,
                          ),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                  margin: EdgeInsets.fromLTRB(
                                    0 * fwidth,
                                    0 * fwidth,
                                    5 * fwidth,
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
                                  5 * fwidth,
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
                              InkWell(
                                onTap: () {
                                  context.read<PropertyBloc>().add(
                                        PropertyEvent.addRequest(
                                          body:
                                              "Expresion Of Interest For The Unit ${unit.room} #${unit.id} property identification ${unit.propertyId}",
                                          type: "Request",
                                          senderId: "637a4fd5bf93a8f4848f1201",
                                        ),
                                      );
                                },
                                child: Container(
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
          ),
        );
      }),
    );
  }
}
