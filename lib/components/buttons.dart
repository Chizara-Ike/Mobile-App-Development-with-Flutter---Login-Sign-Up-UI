import 'package:flutter/material.dart';

class MyButton extends StatelessWidget{

  final Function()? onTap;
  final String text;

  const MyButton({
    super.key,
    required this.onTap,
    required this.text,
    // required Center child
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.symmetric(horizontal: 100),
        decoration: BoxDecoration(
          color: Colors.green.shade800,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }

// @override
  // Widget build(BuildContext context) {
  // return GestureDetector(
  //   onTap: onTap ,
  //   child: Container(
  //     padding: const EdgeInsets.all(15),
  //     margin: const EdgeInsets.symmetric(horizontal: 150),
  //     decoration: BoxDecoration(
  //         color: Colors.green.shade800,
  //       borderRadius:BorderRadius.circular(8)
  //     ),
  //     child: const Center(
  //       child: Text(
  //         text,
  //         style: TextStyle(
  //             color: Colors.white,
  //             fontWeight: FontWeight.bold,
  //             fontSize: 16
  //         ),
  //       ),
  //     ),
  //   ));


  }


