import 'package:flutter/material.dart';
import 'package:mobile_app/data.dart';
class MobileCard extends StatefulWidget {
  const MobileCard({super.key,required this.currentList});
  final currentList;

  @override
  State<MobileCard> createState() => _MobileCardState();
}

class _MobileCardState extends State<MobileCard> {
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 113,
      width: 120,
      child: Card(
        elevation: 0,
        color: Color.fromARGB(255, 253, 244, 244),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(left:70),
              child: GestureDetector(
                onTap: () {
                  /*
                  setState(() {
                    favoriteItems.add(widget.currentList);
                  });
                   */
                  // Add the current item to the favoriteItems list
                  favoriteItems.contains(widget.currentList)?ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("${widget.currentList.name} "
                      "Already exists in the Favorite"))):
                  setState(() {
                    favoriteItems.add(widget.currentList);
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("${widget.currentList.name} Added To Favorite")));

                  });

                  print(widget.currentList);
                },
                child: Icon(
                  favoriteItems.contains(widget.currentList)
                      ? Icons.favorite
                      : Icons.favorite_border,
                  color: favoriteItems.contains(widget.currentList)
                      ? Colors.red
                      : Colors.grey,
                ),
              ),
            ),
            const SizedBox(height: 2,),
            Image.asset(widget.currentList.image,height: 80,),
            const SizedBox(height: 16,),
            Text(widget.currentList.name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),),
            const SizedBox(height: 4,),
            Text(widget.currentList.price,style: TextStyle(
              fontSize: 14,
            ),),
          ],),
        ),
      ),
    );
  }
}
