
import 'package:ecom_app_/components/button.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body:   Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            
            Icon(Icons.shopping_basket_rounded,
            size: 80,
            color: Theme.of(context).colorScheme.inversePrimary,
           
            
            ),
            SizedBox(height: 20,),

            const Text("ECOM APP..!",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              
            ),),

            const Text("For Premium Products",
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 15
            ),),

          SizedBox(height: 20,),

          MyButton(onTap: ()=> Navigator.pushNamed(context, '/homepage'),
           child: Icon(Icons.login_outlined),)


          ],

        ),
      ),
    );
  }
}