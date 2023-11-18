
import 'package:ecom_app_/components/listtile.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      //drawer logo
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            
            children: [
              //drawer logo
              DrawerHeader(
                margin: EdgeInsets.all(0),
                child: Center(
                  child: Icon(
                    Icons.shopping_basket_outlined,
                    size: 70,
                    color: Theme.of(context).colorScheme.inversePrimary,
                    
                    ),
                )),
          
                SizedBox(height: 20,),
          
               
                
                  MyListTile(
                    text: 'Home',
                    onTap: () => Navigator.pop(context),
                    icon: Icons.home
                      ),

                MyListTile(
                  text: 'Cart Page',
                  onTap: (){
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/cartpage');


                    
                  },
                  icon: Icons.shopping_cart
                  ),
               
          
          
          
                
          
          
          
          
          
          
            ],
          ),
          Padding(
            padding:  const EdgeInsets.only(bottom: 30),
            child: MyListTile(text: 'Exit',
             onTap: () => Navigator.pushNamedAndRemoveUntil(
              context, '/intropage', 
              (route) => false),
              icon: Icons.logout,
              ),
          ),
        ],
      ),
      
    );
  }
}
