import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon(
      {super.key, required this.icon, required this.noPressed});
  final void Function()? noPressed;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255).withOpacity(
          .09,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: Center(
        child: Icon(
          icon,
          size: 32,
          
        ),
      ),
    );
  }
}
