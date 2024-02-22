import 'package:flutter/material.dart';
import 'package:mobile_app/data.dart';
import 'package:mobile_app/mobile_card.dart';
import 'package:mobile_app/mobile_detail_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
   body: SingleChildScrollView(
     child: Column(children: <Widget>[
       /*first portion start here*/
       Padding(
         padding: const EdgeInsets.symmetric(horizontal: 6),
         child: Container(
           height: 280,
           width: double.infinity,
           decoration: BoxDecoration(
             color: Color.fromARGB(255, 196, 227, 253),
             borderRadius: BorderRadius.circular(16),
           ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Padding(
            padding: const EdgeInsets.only(left: 12,top: 12),
            child: Text('Popular Brands ✨',style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),),
          ),
            SizedBox(height: 200,
              child: ListView.builder(
                scrollDirection:Axis.horizontal,
                itemCount: popularMobilePhones.length,
                  itemBuilder:(context,index){
                return GestureDetector(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) =>
                        MobileDetailPage(currentMobile:popularMobilePhones[index]),
                    ),
                    );
                  },
                  child:MobileCard(currentList: popularMobilePhones[index]),
                );

              }),
            ),
        ],),
         ),
       ),
       /*first portion end here*/
       SizedBox(height: 22,),
       /*second portion start here*/
       Padding(
         padding: const EdgeInsets.symmetric(horizontal: 6),
         child: Container(
         //  height: 500,
           width: double.infinity,
           decoration: BoxDecoration(
           color: Color.fromARGB(255, 253, 205, 196),
           borderRadius: BorderRadius.circular(16),
         ),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Padding(
        padding: const EdgeInsets.only(left: 12,top: 12),
      child: Text('Others 🔥',style: TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 16,
      ),),
        ),
       SizedBox(
        // height: 450,
         child: GridView.builder(
             itemCount: otherMobilePhones.length,
            shrinkWrap: true,
             physics: NeverScrollableScrollPhysics(),
             gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
           crossAxisCount: 2,
           mainAxisSpacing: 2,
         crossAxisSpacing: 2,
               mainAxisExtent: 200,
         ),
             itemBuilder: (context,index){
               return GestureDetector(
                 onTap: (){
                   Navigator.push(context,MaterialPageRoute(builder: (context) =>
                       MobileDetailPage(currentMobile:otherMobilePhones[index]),
                   ),
                   );
                 },
                 child: MobileCard(currentList: otherMobilePhones[index]),
               );
             }
         ),
       ),
        ]),
      ),

       ),
       /*second portion end here*/
       const SizedBox(height: 12,),
       /*third portion start here*/
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: SizedBox(
           width: double.infinity,
           child: ElevatedButton(
             style: ElevatedButton.styleFrom(
               backgroundColor: Color.fromARGB(255, 36, 36, 36),
               foregroundColor: Color.fromARGB(255, 238, 238, 238),
               fixedSize: Size(double.infinity, 60),
             ),
             onPressed: (){}, child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: Text('See All',style: TextStyle(
               fontSize: 12,
           ),),
             ),
           ),
         ),
       ),
       /*third portion end here*/
     ],),
   ),
    );
  }
}
