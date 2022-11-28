import 'package:flutter/material.dart';

class CustomeAppBar extends StatelessWidget {
  const CustomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InkWell(
          onTap: (() => {}),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: const BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.all(Radius.circular(12))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const <Widget>[
                Icon(
                  Icons.location_on_outlined,
                  color: Colors.red,
                  size: 16,
                ),
                SizedBox(width: 8.0,),
                Text(
                  "My Location",
                  softWrap: false,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(width: 8.0,),
                Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: Colors.red,
                  size: 16,
                )
              ],
            ),
          ),
        ),
        InkWell(
          onTap: (() => {}),
          child: const Icon(
            Icons.settings,
            size: 32,
          ),
        )
      ],
    );
  }
}
