import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tenants/application/tenant/bloc/tenant_bloc.dart';
import 'package:tenants/presentation/screens/auth/log_in.dart';
import 'package:tenants/presentation/screens/profile.dart';

import '../utils.dart';

// ignore: constant_identifier_names
enum FilterOptions { Profile, LogOut }

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
    required this.fwidth,
  }) : super(key: key);
  final double fwidth;
  @override
  Widget build(BuildContext context) {
    double ffwidth = fwidth * 0.97;
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(
              0 * fwidth,
              0 * fwidth,
              10 * fwidth,
              25,
            ),
            width: 20 * fwidth,
            height: 20 * fwidth,
            child: const Icon(
              Icons.location_on_outlined,
              color: Colors.red,
              size: 24,
            ),
          ),
          SizedBox(
            width: 330 * fwidth,
            height: 65,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(
                          0 * fwidth,
                          0 * fwidth,
                          0 * fwidth,
                          0 * fwidth,
                        ),
                        child: Text(
                          'Realtors',
                          style: SafeGoogleFont(
                            'Montserrat',
                            fontSize: 14 * ffwidth,
                            fontWeight: FontWeight.w600,
                            height: 1.2175 * ffwidth / fwidth,
                            color: const Color(0xff363636),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 200,
                      ),
                      BlocBuilder<TenantBloc, TenantState>(
                          builder: (context, state) {
                        return PopupMenuButton(
                          icon: const Icon(
                            Icons.settings,
                          ),
                          onSelected: (FilterOptions selectedValue) {
                            if (selectedValue == FilterOptions.Profile) {
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                  builder: ((context) => const ProfileScreen()),
                                ),
                              );
                            }

                            if (selectedValue == FilterOptions.LogOut) {}
                          },
                          itemBuilder: (context) => [
                            const PopupMenuItem(
                              value: FilterOptions.Profile,
                              child: Text('Profile'),
                            ),
                            PopupMenuItem(
                              value: FilterOptions.LogOut,
                              onTap: () {
                                context
                                    .read<TenantBloc>()
                                    .add(const TenantEvent.logout());
                                Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                    builder: ((context) => LogIn()),
                                  ),
                                );
                              },
                              child: const Text('Logout'),
                            ),
                          ],
                        );
                      })
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
