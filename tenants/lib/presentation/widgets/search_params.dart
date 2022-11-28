import 'package:flutter/material.dart';
import 'package:tenants/presentation/utils.dart';

class SearchParams extends StatelessWidget {
  const SearchParams({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fwidth = MediaQuery.of(context).size.width / baseWidth;
    double ffwidth = fwidth * 0.97;
    return Container(
      margin: EdgeInsets.fromLTRB(
        0 * fwidth,
        0 * fwidth,
        2 * fwidth,
        34 * fwidth,
      ),
      height: 29 * fwidth,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 89 * fwidth,
            height: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xff7575ca)),
              color: const Color(0xffffffff),
              borderRadius: BorderRadius.circular(
                6 * fwidth,
              ),
            ),
            child: Center(
              child: Text(
                'Within 2km',
                style: SafeGoogleFont(
                  'Montserrat',
                  fontSize: 12 * ffwidth,
                  fontWeight: FontWeight.w600,
                  height: 1.2175 * ffwidth / fwidth,
                  color: const Color(0xff7575ca),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 15 * fwidth,
          ),
          Container(
            width: 63 * fwidth,
            height: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xff24bb6b)),
              color: const Color(0xffffffff),
              borderRadius: BorderRadius.circular(
                6 * fwidth,
              ),
            ),
            child: Center(
              child: Text(
                'Luxury',
                style: SafeGoogleFont(
                  'Montserrat',
                  fontSize: 12 * ffwidth,
                  fontWeight: FontWeight.w600,
                  height: 1.2175 * ffwidth / fwidth,
                  color: const Color(0xff24bb6b),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 15 * fwidth,
          ),
          Container(
            width: 68 * fwidth,
            height: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xff4a96ff)),
              color: const Color(0xffffffff),
              borderRadius: BorderRadius.circular(
                6 * fwidth,
              ),
            ),
            child: Center(
              child: Text(
                'Schools',
                style: SafeGoogleFont(
                  'Montserrat',
                  fontSize: 12 * ffwidth,
                  fontWeight: FontWeight.w600,
                  height: 1.2175 * ffwidth / fwidth,
                  color: const Color(0xff4a96ff),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 15 * fwidth,
          ),
          Container(
            width: 68 * fwidth,
            height: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xff5f71c2)),
              color: const Color(0xffffffff),
              borderRadius: BorderRadius.circular(
                6 * fwidth,
              ),
            ),
            child: Center(
              child: Text(
                'Security',
                style: SafeGoogleFont(
                  'Montserrat',
                  fontSize: 12 * ffwidth,
                  fontWeight: FontWeight.w600,
                  height: 1.2175 * ffwidth / fwidth,
                  color: const Color(0xff5f71c2),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
