import 'package:flutter/material.dart';
import 'package:mobile_app/data.dart';
class CartItem extends StatefulWidget {
  const CartItem({super.key,required this.mobile});
  final Mobile mobile;

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  /*removeItemfromCart start here*/
  void removeItemfromCart(Mobile mobile){
    setState(() {
      cartItems.remove(mobile);
    });

  }

  /*removeItemfromCart end here*/
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 8),
      child: ListTile(
        style: ListTileStyle.list,
        shape: RoundedRectangleBorder(
          side: BorderSide(width:1,color: Colors.grey),
          borderRadius: BorderRadius.circular(12),
        ),
        leading: CircleAvatar(
          child: Image.asset(widget.mobile.image),
          radius: 25,
        ),
      title: Text(widget.mobile.name),
        subtitle: Text(widget.mobile.price),
        trailing: IconButton(onPressed: (){
          removeItemfromCart(widget.mobile);
        }, icon: Icon(Icons.delete_forever_outlined,color: Colors.red,),),
      ),
    );
  }
}
