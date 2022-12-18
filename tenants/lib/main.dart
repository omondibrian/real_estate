import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:tenants/application/property/bloc/property_bloc.dart';
import 'package:tenants/application/tenant/bloc/tenant_bloc.dart';
import 'package:tenants/presentation/screens/splash.dart';

import 'injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencyInjection(Environment.prod);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (ctx) => getIt<TenantBloc>()),
        BlocProvider(create: (ctx) => getIt<PropertyBloc>()),
      ],
      child: MaterialApp(
        title: 'Realtors',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
         
          primarySwatch: Colors.red,
        ),
        home: const SplashScreen(),
      ),
    );
  }
}
