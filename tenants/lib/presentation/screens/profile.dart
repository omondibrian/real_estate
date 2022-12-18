import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tenants/application/tenant/bloc/tenant_bloc.dart';
import 'package:tenants/domain/Tenant/entity/tenant_entity.dart';
import 'package:tenants/presentation/realtors.dart';
import 'package:tenants/presentation/screens/edit_profile.dart';

import '../widgets/profile_widgets.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<TenantBloc>().add(const TenantEvent.fetchProfile());

    return BlocBuilder<TenantBloc, TenantState>(
      builder: (context, state) {
        var user = state.mapOrNull(initial: (value) => value.tenant);
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
          body: user == null
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 150.0, bottom: 30,top: 40),
                      child: Text(
                        "Profile",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                    ),
                    ProfileWidget(
                      imagePath:
                          "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                      onClicked: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => const EditScreen()),
                        );
                      },
                    ),
                    const SizedBox(height: 24),
                    buildName(user),
                    const SizedBox(height: 24),
                    buildPlaceMentDate(user),
                  ],
                ),
        );
      },
    );
  }

  Widget buildName(TenantEntity user) {
    return Column(
      children: [
        Text(
          user.name,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        const SizedBox(height: 4),
        Text(
          user.email,
          style: const TextStyle(color: Colors.grey),
        )
      ],
    );
  }

  Widget buildPlaceMentDate(TenantEntity user) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Placement Date',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              user.placementDate,
              style: const TextStyle(fontSize: 16, height: 1.4),
            ),
          ],
        ),
      );
}
