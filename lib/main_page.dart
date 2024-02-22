import 'package:flutter/material.dart';
import 'package:mobile_app/cart_page.dart';
import 'package:mobile_app/favorite_page.dart';
import 'package:mobile_app/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Widget activePage=HomePage();
  int selectedIndex=0;
  /*changPage start here*/
  void changePage(){
setState(() {
  if(selectedIndex==0){
    activePage=HomePage();
  }
  else if(selectedIndex==1){
    activePage=CartPage();
  }
  else if(selectedIndex==1){
    activePage=CartPage();
  }
  else if(selectedIndex==2){
    activePage=FavoritePage();
  }
});
  }
  /*changPage end  here*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (value){
setState(() {
  selectedIndex=value;
});
changePage();
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined),label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "Favorite"),
        ],
      ),
    );
  }
}
