import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.hint, required this.icon});
  final String hint;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5.0),
      child: Row(
        children: [
          Text(
            hint,
            style: const TextStyle(fontSize: 34),
          ),
          const SizedBox(
            width: 229,
          ),
          CustomSearchIcon(
            icon: icon,
          ),
        ],
      ),
    );
  }
}
