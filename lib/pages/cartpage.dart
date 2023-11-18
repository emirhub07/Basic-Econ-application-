

import 'package:ecom_app_/components/button.dart';
import 'package:ecom_app_/models/products.dart';
import 'package:ecom_app_/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class CartPage extends StatelessWidget {
  const CartPage({super.key});
  //remove from cart

  void removeItemFromCart(BuildContext context, Product product){
showDialog(
      context: context,
      builder: (context)=> AlertDialog(
        content: Text('Remove This Item FromYour Cart'),
      actions: [
        MaterialButton(onPressed: ()=> Navigator.pop(context),
        child: Text("Cancel"),),


         MaterialButton(
          onPressed: () {
            Navigator.pop(context);
            
            context.read<Shop>().removeFromCart(product);
          },
        child: Text("Yes"),)
      ],
      ));
  }

// user pressed pay button
void payButtonPressed(BuildContext context){
showDialog(
  context: context, 
  builder: (context)=> AlertDialog(
            content: Text('user wants to pay'),
  ));
}



  @override
  Widget build(BuildContext context) {
    final cart = context.watch<Shop>().cart;

    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Cart Page'),
        elevation: 0,
      ),
      body: Column(
        children: [
          //cart lst
          Expanded(
            child: cart.isEmpty? 
            Center(child: Text('Your Cart Is Empty'))
            :ListView.builder(
              itemCount: cart.length,
              itemBuilder: (context, index){

                final item = cart[index];


                return ListTile(
                  title: Text(item.name),
                  subtitle: Text(item.price.toStringAsFixed(2)),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: ()=> removeItemFromCart(context,item),)
                     
                );

              }
              )
              ),




          //pay button
          Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: MyButton(onTap: ()=> payButtonPressed(context), 
            child: Center(child: Text('PAY NOW'))),
          )

      ]),
    );
  }
}