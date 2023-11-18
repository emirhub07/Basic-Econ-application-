import 'package:flutter/material.dart';


class MyListTile extends StatelessWidget {
final String text;
final IconData icon;
final void Function()? onTap;



  const MyListTile({super.key,
required this.text,
required this.onTap,
required this.icon,
  
  
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Icon(
          icon,
          color: Colors.black,
        ),
       title: Text(text),

       onTap: onTap,
      



    );
  }
}
