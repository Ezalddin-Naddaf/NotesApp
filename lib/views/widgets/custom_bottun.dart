import 'package:flutter/cupertino.dart';

import '../../constants.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: kPrimaryColor),
      child: const Center(child: Text('Save' , style: TextStyle(fontSize: 21 , fontWeight: FontWeight.bold),)),
    );
  }
}