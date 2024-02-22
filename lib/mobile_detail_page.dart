import 'package:flutter/material.dart';
import 'package:mobile_app/data.dart';

class MobileDetailPage extends StatefulWidget {
  const MobileDetailPage({super.key,required this.currentMobile});
  final Mobile currentMobile;

  @override
  State<MobileDetailPage> createState() => _MobileDetailPageState();
}

class _MobileDetailPageState extends State<MobileDetailPage> {
  /*additemToCart start here*/
  void additemToCart(Mobile mobile){
    cartItems.add(mobile);
  }
  /*additemToCart end here*/
  String buttonText='Add To Cart';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.currentMobile.name),
      ),
   body:SingleChildScrollView(child: Column(children: [
     /*first portion Portion start here*/
     Padding(
       padding: const EdgeInsets.symmetric(vertical: 12),
       child: Image.asset(widget.currentMobile.image,
         height: 220,
       ),
     ),
     /*first portion Portion end here*/
     /*second portion start here*/
     Padding(padding: const EdgeInsets.symmetric(horizontal: 12),
       child: SingleChildScrollView(child: Container(
         width: double.infinity,
         decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(20),
           color: widget.currentMobile.color.withOpacity(0.25),
           border: Border.all(
             color: widget.currentMobile.color.withOpacity(1),
             width: 1,
           ),
         ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: const EdgeInsets.symmetric(
            vertical: 8,
            horizontal: 24,
          ),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 16,
              ),
            child: Text(widget.currentMobile.name,style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 24,bottom: 12,
            ),
            child: Text(widget.currentMobile.price,style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),),
          ),
        SizedBox(height: 410,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              /*company name portion start here*/
              Padding(padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 80,
                  width: 314,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: widget.currentMobile.color.withOpacity(0.5),
                      border: Border.all(
                        color: widget.currentMobile.color.withOpacity(0.5),
                        width: 1.5,
                      ),
                    ),
                  child: GridTile(child: Column(children: [
                    const Padding(padding: const EdgeInsets.only(
                      top: 12,
                      bottom: 2,
                    ),
                      child: Text("Company",style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),),
                    ),
                     Padding(padding: const EdgeInsets.all(
                      4.0
                    ),
                      child: Text(widget.currentMobile.company,style: TextStyle(
                        fontSize: 15,
                      ),),
                    ),
                  ],),),
                  ),
                ),
              ),
/*company name portion end here*/
              /*description portion start here*/
              Padding(padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  height: 100,
                  width: 314,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color:widget.currentMobile.color.withOpacity(0.5),
                      border: Border.all(
                        color:widget.currentMobile.color.withOpacity(1),
                        width: 1.5,
                      ),
                    ),
                    child: GridTile(child: Column(children: [
                      const Padding(padding: const EdgeInsets.only(
                        top: 10,
                        bottom: 2,
                      ),
                        child: Text("Description",
                          style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),),
                      ),
                      Padding(padding: const EdgeInsets.all(
                          2.0
                      ),
                        child: Text(widget.currentMobile.description,style: TextStyle(
                          fontSize: 15,
                        ),),
                      ),
                    ],),),
                  ),
                ),
              ),
/*description portion end here*/
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              InfoCard(currentSpec:'Camera', currentSpecAnswer: widget.currentMobile.camera,
                currentColor: widget.currentMobile.color,
              ),
              InfoCard(currentSpec:'Storage', currentSpecAnswer: widget.currentMobile.storage,
                currentColor: widget.currentMobile.color,
              ),
            ],),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                InfoCard(currentSpec:'Dimensions', currentSpecAnswer: widget.currentMobile.size,
                  currentColor: widget.currentMobile.color,
                ),
                InfoCard(currentSpec:'Display', currentSpecAnswer: widget.currentMobile.display,
                  currentColor: widget.currentMobile.color,
                ),
              ],),
          ],),
        ),
        ],),
       ),),

     ),
     /*second portion end here*/
     /*last portion start here*/
     Padding(padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 10),
       child: ElevatedButton.icon(
         style: ElevatedButton.styleFrom(
           backgroundColor: Colors.grey.shade900,
           foregroundColor: Colors.grey.shade200,
           maximumSize:const Size(double.infinity,54),
         ),
         onPressed: (){
           cartItems.contains(widget.currentMobile)?ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("${widget.currentMobile.name} "
               "Already exists in the Cart"))):
           setState(() {
           additemToCart(widget.currentMobile);
           ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("${widget.currentMobile.name} Added To Cart")));
           buttonText="Added To Cart";
           print(cartItems);
           });
         }, icon: Icon(Icons.shopping_cart_outlined),
           label: Text(buttonText,style: TextStyle(
             fontSize: 20,
           ),),),
     ),
     /*last portion end here*/

   ],),),
    );
  }
}
/*InfoCard start here*/
class InfoCard extends StatelessWidget {
  const InfoCard({super.key,required this.currentSpec,required this.currentSpecAnswer,required this.currentColor});
  final String currentSpecAnswer,currentSpec;
  final Color currentColor;


  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 80,
        width: 150,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: currentColor.withOpacity(0.5),
            border: Border.all(
              color: currentColor.withOpacity(1),
              width: 1,
            ),
          ),
        child: GridTile(child: Column(children: [
           Padding(padding: const EdgeInsets.only(
            top: 12,
            bottom: 2,
          ),
            child: Text(currentSpec,style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),),
          ),
          Padding(padding: const EdgeInsets.all(
              4.0
          ),
            child: Text(
              currentSpecAnswer,style: TextStyle(
              fontSize: 15,
            ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],),),
        ),
      ),
    );

  }
}

/*InfoCard end here*/