import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tenants/presentation/screens/search_screen.dart';
import 'package:tenants/presentation/widgets/input.dart';

import '../../application/property/bloc/property_bloc.dart';
import '../utils.dart';

class SearchBar extends StatelessWidget {
  SearchBar({
    Key? key,
    required this.fwidth,
  }) : super(key: key);
  final double fwidth;
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PropertyBloc, PropertyState>(builder: (context, state) {
      return Container(
        margin: EdgeInsets.fromLTRB(
          5 * fwidth,
          0 * fwidth,
          10 * fwidth,
          10 * fwidth,
        ),
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0x33b1adad)),
          color: const Color(0xfff8f8f8),
          borderRadius: BorderRadius.circular(
            10 * fwidth,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            DefaultInput(
              hintText: 'Search by Location, Area or Pin Code',
              controller: _controller,
              validator: requiredValidator,
              icon: Icons.search,
            ),
            InkWell(
              onTap: () {
                print(_controller.text);
                context.read<PropertyBloc>().add(
                      PropertyEvent.search(query: _controller.text),
                    );
               
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(
                  24 * fwidth,
                  0 * fwidth,
                  0 * fwidth,
                  10 * fwidth,
                ),
                width: 12 * fwidth,
                height: 12 * fwidth,
                child: const Icon(
                  Icons.arrow_forward_ios,
                  size: 24,
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
