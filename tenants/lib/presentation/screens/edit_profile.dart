import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tenants/application/tenant/bloc/tenant_bloc.dart';
import 'package:tenants/presentation/widgets/profile_widgets.dart';

class EditScreen extends StatefulWidget {
  const EditScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _EditScreenState createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TenantBloc, TenantState>(
      builder: (context, state) {
        final user = state.mapOrNull(initial: (value) => value.tenant);
        return Scaffold(
          appBar: buildAppBar(context),
          body: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            physics: const BouncingScrollPhysics(),
            children: [
              ProfileWidget(
                imagePath: user!.profileImage,
                isEdit: true,
                onClicked: () async {},
              ),
              const SizedBox(height: 24),
              TextFieldWidget(
                label: 'Full Name',
                text: user.name,
                onChanged: (name) {},
              ),
              const SizedBox(height: 24),
              TextFieldWidget(
                label: 'Email',
                text: user.email,
                onChanged: (email) {},
              ),
              const SizedBox(height: 24),
              TextFieldWidget(
                label: 'placement Date',
                text: user.placementDate,
                maxLines: 5,
                onChanged: (about) {},
              ),
            ],
          ),
        );
      },
    );
  }
}
