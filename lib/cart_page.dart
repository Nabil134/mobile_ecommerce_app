import 'package:flutter/material.dart';
import 'package:mobile_app/data.dart';
class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  /*removeItemfromCart start here*/
  void removeItemfromCart(Mobile mobile){
    setState(() {
      cartItems.remove(mobile);
    });

  }

  /*removeItemfromCart end here*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
    body:cartItems.isEmpty?Center(child: Text('No Items added to the cart'),) :ListView.builder(
      itemCount: cartItems.length,
        itemBuilder: (context,index){
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 8),
        child: ListTile(
          style: ListTileStyle.list,
          shape: RoundedRectangleBorder(
            side: BorderSide(width:1,color: Colors.grey),
            borderRadius: BorderRadius.circular(12),
          ),
          leading: CircleAvatar(
            child: Image.asset(cartItems[index].image),
            radius: 25,
          ),
          title: Text(cartItems[index].name),
          subtitle: Text(cartItems[index].price),
          trailing: IconButton(onPressed: (){

            removeItemfromCart(cartItems[index]);
          }, icon: Icon(Icons.delete_forever_outlined,color: Colors.red,),),
        ),
      );
    }),
    );
  }
}
