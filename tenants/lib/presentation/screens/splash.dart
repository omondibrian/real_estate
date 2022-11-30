import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:tenants/application/tenant/bloc/tenant_bloc.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // initializeApp();
  }

  @override
  Widget build(BuildContext context) {
    // Load a Lottie file from your assets
    return BlocBuilder<TenantBloc, TenantState>(builder: (context, state) {
      
      return Center(
        child: Lottie.asset('assets/splash.json'),
      );
    });
  }
}
