import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key , required this.hint, required this.icon});
  final String hint;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return  Row(
      
      children: [
        
        Text(
          hint,
          style:const TextStyle(fontSize: 34),
        ),
     const   SizedBox(width: 198, ),
        CustomSearchIcon(icon: icon,),
      
      ],
    );
  }
}


