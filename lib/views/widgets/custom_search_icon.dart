import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color:const Color.fromARGB(255, 255, 255, 255).withOpacity(.09),
          borderRadius:const BorderRadius.all(Radius.circular(12)),
        ),
        child:const Center(
          child: Icon(Icons.search,size: 36),
        ),

        );
  }
}