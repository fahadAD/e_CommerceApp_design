
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:practiseuntitled4/Home/main2.dart';
import 'package:practiseuntitled4/Home/main3.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}
 class _HomePageState extends State<HomePage> {

   @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.blueGrey,

       body:SingleChildScrollView(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [

             Container(

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.white
            ),
               margin: EdgeInsets.all(10),
               padding: EdgeInsets.all(10),
               width: MediaQuery.of(context).size.width,
               height: 240,
               child: Card(
                   elevation: 100,

                 child: Image.network("https://mir-s3-cdn-cf.behance.net/project_modules/1400/c3b2d328705775.55cdb4486c1ca.jpg",
                fit: BoxFit.fill,

                 ),
               ),
             ),
             SizedBox(height: 10,),

             Row(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [

                Expanded(
                  flex: 1,
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25)
                      ),
                    margin: EdgeInsets.fromLTRB(20, 0, 5, 15),
                    height: 200,
                      width: MediaQuery.of(context).size.width,

                      child: Column(
                        children: [
                         Center(
                           child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSW0KTZ1MgBVLP7UyyGEI9JDOKWiguDlbiHazoZ8ZqcshFXQI65qXaz2LwzUEjOUAvVH_w&usqp=CAU",
                             height: 160,

                           ),
                         ),
                     Text("Cosmetic",style: TextStyle(fontWeight: FontWeight.bold,fontSize:30 ,color: Colors.black),)
                        ],
                      )),
                ),


                 Expanded(
                   flex: 1,
                   child: Container(
decoration: BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.circular(25)
),
                       margin: EdgeInsets.fromLTRB(10,0, 20, 15),
                       height: 200,
                       width: MediaQuery.of(context).size.width,

                       child: Column(
                         children: [
                           Center(
                             child: Image.network("https://cdn-icons-png.flaticon.com/512/1198/1198307.png",
                               height: 160,

                             ),
                           ),
                           Text("Fashion",style: TextStyle(fontWeight: FontWeight.bold,fontSize:30 ,color: Colors.black),)
                         ],
                       )),
                 ),
               ],
             ),

             Row(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [

                 Expanded(
                   flex: 1,
                   child: Container(
                       decoration: BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.circular(25)
                       ),
                       margin: EdgeInsets.fromLTRB(20, 0, 5, 15),
                       height: 200,
                       width: MediaQuery.of(context).size.width,

                       child: Column(
                         children: [
                           Center(
                             child: Image.network("https://previews.123rf.com/images/djvstock/djvstock1706/djvstock170611443/80685909-taxi-cab-service-icon-vector-illustration-graphic-design.jpg",
                               height: 160,

                             ),
                           ),
                           Text("Cab Services",style: TextStyle(fontWeight: FontWeight.bold,fontSize:30 ,color: Colors.black ),)
                         ],
                       )),
                 ),


                 Expanded(
                   flex: 1,
                   child: Container(
                       decoration: BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.circular(25)
                       ),
                       margin: EdgeInsets.fromLTRB(10,0, 20, 15),
                       height: 200,
                       width: MediaQuery.of(context).size.width,

                       child: Column(
                         children: [
                           Center(
                             child: Image.network("https://cdn-icons-png.flaticon.com/512/1261/1261163.png",
                               height: 160,

                             ),
                           ),
                           Padding(
                             padding: const EdgeInsets.all(2.0),
                             child: Text("Food Grocery",style: TextStyle(fontWeight: FontWeight.bold,fontSize:30 ,color: Colors.black ),),
                           )
                         ],
                       )),
                 ),
               ],
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [

                 Expanded(
                   flex: 1,
                   child: Container(
                       decoration: BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.circular(25)
                       ),
                       margin: EdgeInsets.fromLTRB(20, 0, 5, 15),
                       height: 200,
                       width: MediaQuery.of(context).size.width,

                       child: Column(
                         children: [
                           Center(
                             child: Image.network("data:image/png;base64,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",
                               height: 160,

                             ),
                           ),
                           Padding(
                             padding: const EdgeInsets.all(2.0),
                             child: Text("Bill Pay",style: TextStyle(fontWeight: FontWeight.bold,fontSize:30 ,color: Colors.black ),),
                           )
                         ],
                       )),
                 ),


                 Expanded(
                   flex: 1,
                   child: Container(
                       decoration: BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.circular(25)
                       ),
                       margin: EdgeInsets.fromLTRB(10,0, 20, 15),
                       height: 200,
                       width: MediaQuery.of(context).size.width,

                       child: Column(
                         children: [
                           Center(
                             child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSt4qCaBTzmLECrJhQ6UY8eLw32_ziD0gqeHA&usqp=CAU",
                               height: 160,


                             ),
                           ),
                           Text("Resturant",style: TextStyle(fontWeight: FontWeight.bold,fontSize:34 ),)
                         ],
                       )),
                 ),
               ],
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [

                 Expanded(
                   flex: 1,
                   child: Container(
                       decoration: BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.circular(25)
                       ),
                       margin: EdgeInsets.fromLTRB(20, 0, 5, 15),
                       height: 200,
                       width: MediaQuery.of(context).size.width,

                       child: Column(
                         children: [
                           Center(
                             child: Image.network("https://thumbs.dreamstime.com/b/home-electronics-appliances-circle-infographics-template-concept-icons-design-your-product-web-mobile-applications-134260642.jpg",
                               height: 160,

                             ),
                           ),
                           Text("Electronic Shop",style: TextStyle(fontWeight: FontWeight.bold,fontSize:30 ,color: Colors.black ),)
                         ],
                       )),
                 ),


                 Expanded(
                   flex: 1,
                   child: Container(
                       decoration: BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.circular(25)
                       ),
                       margin: EdgeInsets.fromLTRB(10,0, 20, 15),
                       height: 200,
                       width: MediaQuery.of(context).size.width,

                       child: Column(
                         children: [
                           Center(
                             child: Image.network("https://cdn-icons-png.flaticon.com/512/2421/2421762.png",
                               height: 160,

                             ),
                           ),
                           Text("Book Shop",style: TextStyle(fontWeight: FontWeight.bold,fontSize:30 ,color: Colors.black  ),)
                         ],
                       )),
                 ),
               ],
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [

                 Expanded(
                   flex: 1,
                   child: Container(
                       decoration: BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.circular(25)
                       ),
                       margin: EdgeInsets.fromLTRB(20, 0, 5, 15),
                       height: 200,
                       width: MediaQuery.of(context).size.width,

                       child: Column(
                         children: [
                           Center(
                             child: Image.network("https://cdn.iconscout.com/icon/free/png-256/foodpanda-1613373-1369420.png",
                               height: 160,

                             ),
                           ),
                           Text("Food Panda",style: TextStyle(fontWeight: FontWeight.bold,fontSize:30 ,color: Colors.black ),)
                         ],
                       )),
                 ),


                 Expanded(
                   flex: 1,
                   child: Container(
                       decoration: BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.circular(25)
                       ),
                       margin: EdgeInsets.fromLTRB(10,0, 20, 15),
                       height: 200,
                       width: MediaQuery.of(context).size.width,

                       child: Column(
                         children: [
                           Center(
                             child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSMe317HMyQ4R2OZMeEW9XJrBD-K5fD_QgTQ&usqp=CAU",
                               height: 160,

                             ),
                           ),
                           Text("Hotel Booking",style: TextStyle(fontWeight: FontWeight.bold,fontSize:30 ,color: Colors.black  ),)
                         ],
                       )),
                 ),
               ],
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [

                 Expanded(
                   flex: 1,
                   child: Container(
                       decoration: BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.circular(25)
                       ),
                       margin: EdgeInsets.fromLTRB(20, 0, 5, 15),
                       height: 200,
                       width: MediaQuery.of(context).size.width,

                       child: Column(
                         children: [
                           Center(
                             child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBccZQ2-HnCbbXcgXhmKpY2XBba2aUw4IWWl-l8g5QSjjbiGVpGSmOv8isRjQbk66oaY8&usqp=CAU",
                               height: 160,

                             ),
                           ),
                           Text("Book Your Train",style: TextStyle(fontWeight: FontWeight.bold,fontSize:30 ,color: Colors.black ),)
                         ],
                       )),
                 ),


                 Expanded(
                   flex: 1,
                   child: Container(
                       decoration: BoxDecoration(
                           color: Colors.white,
                           borderRadius: BorderRadius.circular(25)
                       ),
                       margin: EdgeInsets.fromLTRB(10,0, 20, 15),
                       height: 200,
                       width: MediaQuery.of(context).size.width,

                       child: Column(
                         children: [
                           Center(
                             child: Image.network("https://thumbs.dreamstime.com/b/jet-plane-icon-jet-plane-icon-blue-white-background-120405606.jpg",
                               height: 160,

                             ),
                           ),
                           Text("Book Your Flight",style: TextStyle(fontWeight: FontWeight.bold,fontSize:25 ,color: Colors.black  ),)
                         ],
                       )),
                 ),
               ],
             ),
           ],
         ),
       ),

    );
  }
}
