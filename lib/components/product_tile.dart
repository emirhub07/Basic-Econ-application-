import 'package:ecom_app_/models/products.dart';
import 'package:ecom_app_/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyProductTile extends StatelessWidget {
  final Product product;

  //add to cart method
  void addToCart(BuildContext context){
     showDialog(
      context: context,
      builder: (context)=> AlertDialog(
        content: Text('Add This Item To Your Cart'),
      actions: [
        MaterialButton(onPressed: ()=> Navigator.pop(context),
        child: Text("Cancel"),),


         MaterialButton(
          onPressed: () {
            Navigator.pop(context);
            
            context.read<Shop>().addToCart(product);
          },
        child: Text("Yes"),)
      ],
      ));
  }
  
  
  const MyProductTile({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return  Container(
      
      width: 300,
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(
          
          borderRadius: BorderRadius.circular(24),
          color: Theme.of(context).colorScheme.primary
        ),
      
        margin: EdgeInsets.all(15),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
      Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           //image
          
             
        
          AspectRatio(
            aspectRatio: 1,
            child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(25),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Theme.of(context).colorScheme.secondary
                    ),
                    
                    child: Image.asset(product.imagepath)),
          ),
        
        SizedBox(height: 20,),
             
                
        // productname
        Text(          
          product.name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30
          ),),
      
      
        //product desc
        Text(product.description,
        style: TextStyle(
          color: Theme.of(context).colorScheme.inversePrimary
        ),),
        
        
        
        ],
      ),
         
      
      
      
      
        // product price and add to cart button
            Row(              
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              
              children: [
                
                Text('\$ ' +product.price.toStringAsFixed(2)),
             
           Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(12)
            ),
             child: IconButton(
              onPressed: () => addToCart(context), 
              icon: Icon(Icons.add)
             ),
           )
            
              ],
            )


          ],
        ),
      );
    
  }
}



