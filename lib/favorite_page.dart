import 'package:flutter/material.dart';
import 'package:mobile_app/data.dart';
class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  /*removeItemfromFavorite start here*/
  void removeItemfromFavorite(Mobile mobile){
    setState(() {
      favoriteItems.remove(mobile);
    });

  }

  /*removeItemfromFavorite end here*/
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Favorite'),
      ),
    body:favoriteItems.isEmpty?Center(child: Text('No Items added to the favorite'),): ListView.builder(
      itemCount: favoriteItems.length,
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
            child: Image.asset(favoriteItems[index].image),
            radius: 25,
          ),
          title: Text(favoriteItems[index].name),
          subtitle: Text(favoriteItems[index].price),
          trailing: IconButton(onPressed: (){
removeItemfromFavorite(favoriteItems[index]);

          }, icon: Icon(Icons.favorite,color: Colors.red,),),
        ),
      );
    }),
    );
  }
}
