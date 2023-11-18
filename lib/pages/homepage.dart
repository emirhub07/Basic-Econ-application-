import 'package:ecom_app_/components/drawer.dart';
import 'package:ecom_app_/components/product_tile.dart';
import 'package:ecom_app_/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

final products = context.watch<Shop>().shop;

    return  Scaffold(
      appBar: AppBar(
        title: const Text("Home Page",
        style: TextStyle(
          fontWeight: FontWeight.bold
        ),),
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(onPressed: ()=> Navigator.popAndPushNamed(context, '/cartpage'),
           icon: const Icon(Icons.shopping_cart))
        ],

      
      ),

      drawer: MyDrawer(),


      body: ListView(
        children: [
          SizedBox(height: 20,),
        //shop sub
        Center(
          child: Text('Grab Your Favourite Premium Products',
          style: TextStyle(
            fontSize: 18,
            color: Theme.of(context).colorScheme.inversePrimary,
            
          ),),
        ),


        //productlist
        SizedBox(
        height: 550,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.all(20),
          itemCount: products.length,
          itemBuilder: (context,index){
        
            //get each individual from shop
            final product = products[index];
        
            // return as product tile ui
          return MyProductTile(product: product);
        
        
        
        
        
        }),
      ),
        
        
        
        ],
      )
    );
  }
}


