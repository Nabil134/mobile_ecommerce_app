import 'package:flutter/material.dart';

class Mobile{
  final String name;
  final String company;
  final String price;
  final String description;
  final String storage;
  final String camera;
  final String display;
  final String size;
  final String image;
  final Color color;
  final bool ispopular;

  Mobile({
    required this.name,
    required this.company,
    required this.price,
    required this.description,
    required this.storage,
    required this.camera,
    required this.display,
    required this.size,
    required this.image,
    required this.color,
    required this.ispopular,
});
}

List<Mobile> mobiles = [
  Mobile(
    name: "Pixel 7 Pro",
    company: "Google",
    price: "\$899",
    description: "The powerful smartphone that fits in your pocket.",
    storage: "128GB, 256GB, 512GB",
    camera: "Triple rear camera (50MP main, 48MP telephoto, 12MP ultrawide), 10.8MP front-facing camera",
    display: "6.4 inch, 120Hz refresh rate",
    size: "6.1 x 2.8 x 0.87 inches",
    image: "assets/pixel_7_pro.jpg",
    color: Color(0xFF0000FF), // Blue
 ispopular: true,
  ),
  Mobile(
    name: "Galaxy S23 Ultra",
    company: "Samsung",
    price: "\$1,188",
    description: "The ultimate premium smartphone experience.",
    storage: "256GB, 512GB, 1TB",
    camera: "Quad rear camera (200MP main, 10-100x zoom telephoto, 12MP ultrawide, 10MP front-facing)",
    display: "6.8 inch, 120Hz refresh rate",
    size: "6.8 x 3.0 x 0.88 inches",
    image: "assets/samsung_galaxy_S21.jpg",
    color: Color(0xFF00FFFF), // Cyan
  ispopular: true,
  ),
  Mobile(
    name: "iPhone 15 Pro",
    company: "Apple",
    price: "\$1,099",
    description: "The most advanced iPhone ever.",
    storage: "128GB, 256GB, 512GB, 1TB",
    camera: "Triple rear camera (48MP main, 48MP telephoto, 12MP ultrawide), 12MP front-facing camera",
    display: "6.7 inch, 120Hz refresh rate",
    size: "6.3 x 3.0 x 0.82 inches",
    image: "assets/iphone15promax.jpg",
    color: Color(0xFF000000), // Black
  ispopular: true,
  ),
  Mobile(
    name: "OnePlus 11 Pro",
    company: "OnePlus",
    price: "\$799",
    description: "The flagship killer with all the bells and whistles.",
    storage: "128GB, 256GB, 512GB",
    camera: "Triple rear camera (50MP main, 48MP telephoto, 12MP ultrawide), 16MP front-facing camera",
    display: "6.7 inch, 120Hz refresh rate",
    size: "6.4 x 2.9 x 0.85 inches",
    image: "assets/one_plus_11_pro.jpg",
    color: Color(0xFFCC00FF), // Magenta
    ispopular: false,
  ),
  Mobile(
    name: "Xiaomi 13 Pro",
    company: "Xiaomi",
    price: "\$699",
    description: "The best value flagship on the market.",
    storage: "128GB, 256GB, 512GB",
    camera: "Triple rear camera (50MP main, 50MP telephoto, 50MP ultrawide), 32MP front-facing camera",
    display: "6.73 inch, 120Hz refresh rate",
    size: "6.4 x 3.0 x 0.87 inches",
    image: "assets/xiaomi_13_pro.jpg",
    color: Color(0xFF00FF00), // Green
    ispopular: false,
  ),
  Mobile(
    name: "Pixel 7 Pro",
    company: "Google",
    price: "\$899",
    description: "The powerful smartphone that fits in your pocket.",
    storage: "128GB, 256GB, 512GB",
    camera: "Triple rear camera (50MP main, 48MP telephoto, 12MP ultrawide), 10.8MP front-facing camera",
    display: "6.4 inch, 120Hz refresh rate",
    size: "6.1 x 2.8 x 0.87 inches",
    image: "assets/pixel_7_pro.jpg",
    color: Color(0xFF0000FF), // Blue
    ispopular: false,
  ),
  Mobile(
    name: "Galaxy S23 Ultra",
    company: "Samsung",
    price: "\$1,188",
    description: "The ultimate premium smartphone experience.",
    storage: "256GB, 512GB, 1TB",
    camera: "Quad rear camera (200MP main, 10-100x zoom telephoto, 12MP ultrawide, 10MP front-facing)",
    display: "6.8 inch, 120Hz refresh rate",
    size: "6.8 x 3.0 x 0.88 inches",
    image: "assets/samsung_galaxy_S21.jpg",
    color: Color(0xFF00FFFF), // Cyan
    ispopular: false,
  ),
  Mobile(
    name: "iPhone 15 Pro",
    company: "Apple",
    price: "\$1,099",
    description: "The most advanced iPhone ever.",
    storage: "128GB, 256GB, 512GB, 1TB",
    camera: "Triple rear camera (48MP main, 48MP telephoto, 12MP ultrawide), 12MP front-facing camera",
    display: "6.7 inch, 120Hz refresh rate",
    size: "6.3 x 3.0 x 0.82 inches",
    image: "assets/iphone15promax.jpg",
    color: Color(0xFF000000), // Black
    ispopular: false,
  ),
  Mobile(
    name: "Galaxy S23 Ultra",
    company: "Samsung",
    price: "\$1,188",
    description: "The ultimate premium smartphone experience.",
    storage: "256GB, 512GB, 1TB",
    camera: "Quad rear camera (200MP main, 10-100x zoom telephoto, 12MP ultrawide, 10MP front-facing)",
    display: "6.8 inch, 120Hz refresh rate",
    size: "6.8 x 3.0 x 0.88 inches",
    image: "assets/samsung_galaxy_S21.jpg",
    color: Color(0xFF00FFFF), // Cyan
    ispopular: false,
  ),
];
List<Mobile> popularMobilePhones=mobiles.where((element) =>element.ispopular==true).toList();
List<Mobile> otherMobilePhones=mobiles.where((element) =>element.ispopular==false).toList();
List<Mobile> cartItems=[];
List<Mobile> favoriteItems=[];




