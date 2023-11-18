import 'package:ecom_app_/models/products.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier{

final List<Product> _shop = [
//product 1
Product(
name: "Nike Shoes",
price: 99.9,
description: "comfortables shoes with luxory branding",
imagepath: 'assets/shoe.png'
),



//product 2
Product(
name: "Head Phones",
price: 60.9,
description: "connectivity with phones via bluetooth",
imagepath: 'assets/download.png'
),

//product 3
Product(
name: "Smart Watch",
price: 70.9,
description: "connectivity with phones via bluetooth",
imagepath: 'assets/wa.png'
),


//product 4
Product(
name: "Iphone",
price: 999.9,
description: "Aesthetic Smart phone",
imagepath: 'assets/iphone.png'
)


];

// user cart
List<Product> _cart =[];



// get product list
List<Product> get shop => _shop;

//get user cart
List<Product> get cart => _cart;


// add item to cart
void addToCart(Product item){
  _cart.add(item);
  notifyListeners();
}

//remove item from the cart

void removeFromCart(Product item){
  _cart.remove(item);
  notifyListeners();
}



}