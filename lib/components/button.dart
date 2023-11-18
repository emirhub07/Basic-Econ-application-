import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
final void Function()? onTap;
  final Widget child;
   const MyButton({super.key, required this.onTap, required this.child});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onTap ,
      child: Container(
        child: child,
        decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(80),
          color: Theme.of(context).colorScheme.primary
        ),
        height: 50,
        width: 150,
        padding: EdgeInsets.all(10),

      ),
    );
  }
}