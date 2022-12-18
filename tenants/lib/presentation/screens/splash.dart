import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:tenants/application/tenant/bloc/tenant_bloc.dart';
import 'package:tenants/domain/Tenant/datasources/internal_datasource.dart';
import 'package:tenants/injection.dart';
import 'package:tenants/presentation/realtors.dart';
import 'package:tenants/presentation/screens/auth/log_in.dart';
import 'package:tenants/presentation/utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 15000), initializeApp);
  }

  Future<void> initializeApp() async {
    final authState = await getIt<InternalDataSource>().isAuthenticated();
    authState.fold(
      (l) => {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: ((context) => LogIn()),
          ),
        )
      },
      (r) => {
        if (r == true)
          {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: ((context) => const Realtors()),
              ),
            )
          }
        else
          {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: ((context) => LogIn()),
              ),
            )
          }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // Load a Lottie file from your assets
    return Scaffold(
      body: BlocBuilder<TenantBloc, TenantState>(builder: (context, state) {
        return Container(
          color: Colors.white,
          child: Center(
            // child: Text("Splash")
            child: Column(
              children: [
                const SizedBox(height: 30,),
                Lottie.asset('assets/splash.json'),
                const SizedBox(height: 10,),
                Text(
                  "initializing application state ...",
                  style: SafeGoogleFont(
                    'Montserrat',
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    height: 12,
                    color: const Color(0xff363636),
                  ),
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}
