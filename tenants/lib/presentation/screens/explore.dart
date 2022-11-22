import 'package:flutter/material.dart';
import '../components/custome_app_bar.dart';

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: const <Widget>[
          SizedBox(height: 12,),
           CustomeAppBar()

        ],
      ),
    );
  }
}
