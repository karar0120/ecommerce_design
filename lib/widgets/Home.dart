
import 'package:ecommerceu/json/constant.dart';
import 'package:ecommerceu/pages/customSlider.dart';
import 'package:ecommerceu/themes/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: getBody(),
    );
  }
  Widget getBody(){
    var size=MediaQuery.of(context).size;
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        Stack(
         children: [
           Container(
             width: size.width,
             height: 500,
             decoration: BoxDecoration(
               image: DecorationImage(
                 image: NetworkImage(homeImg,
                 ),
                 fit: BoxFit.cover,
               )
             ),
           ),
           Padding(
             padding: const EdgeInsets.only(top:35,right: 10),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.end,
               children: [
                 Icon(
                   Icons.favorite,
                   color: white,
                   size: 28,
                 ),
                 SizedBox(
                   width: 15,
                 ),
                 Icon(
                   Icons.search,
                   color: white,
                   size: 25,
                 )
               ],
             ),
           ),
           Positioned(
             bottom: 20.0,
             child: Padding(
               padding: const EdgeInsets.only(left: 20.0),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text("Winter Collection",style: TextStyle(
                     fontWeight: FontWeight.bold,
                     fontSize: 25,
                     color: white,
                   ),),
                   SizedBox(
                     height: 10 ,
                   ),
                   Row(
                     children: [
                       Text("DISCOVER",style: TextStyle(
                         fontSize: 15,
                         color: white,
                         fontWeight: FontWeight.bold,
                       ),),
                       SizedBox(
                         width: 5,
                       ),
                       Icon(Icons.arrow_forward_ios,
                       color: white,
                       size: 18,
                       ),
                     ],
                   )
                 ],
               ),
             ),
           ),
         ],
        ),
        SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15,right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Categories",style: TextStyle(
                //color: white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),),

       Padding(
           padding: const EdgeInsets.only(left: 15,right: 15),
           child: Row(

                  children: [
                    Text("All",style: TextStyle(
                      color: grey,
                      //fontSize: 18,
                      //fontWeight: FontWeight.bold,
                    ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(Icons.arrow_forward_ios,
                    size: 16,
                      color: grey,
                    )
                  ],
                ),
       ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
    scrollDirection:Axis.horizontal,
          child: Row(
            children:List.generate(categories.length, (index) {
              return Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Container(
                width: 180,
                  height: 220,
                  child:Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage("${categories[index]['imgUrl']}"),
                            fit: BoxFit.cover
                          ),

                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: black.withOpacity(0.1),
                        ),
                      ),
                      Positioned(
                        bottom:5,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text("${categories[index]['title']}",style: TextStyle(
                            color: white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                          ),),
                        ),
                      )
                    ],
                  ) ,
                ),
              );
            })
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15,right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Recommended for you",style: TextStyle(
                //color: white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),),

              Padding(
                padding: const EdgeInsets.only(left: 15,right: 15),
                child: Row(

                  children: [
                    Text("All",style: TextStyle(
                      color: grey,
                      //fontSize: 18,
                      //fontWeight: FontWeight.bold,
                    ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(Icons.arrow_forward_ios,
                      size: 16,
                      color: grey,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),

        SingleChildScrollView(
          scrollDirection:Axis.horizontal,
          child: Row(
              children:List.generate(recommends.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(

                    children: [
                      Container(
                        width: 140,
                        height: 180,
                        decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage("${recommends[index]['imgUrl']}"),
                                    fit: BoxFit.cover
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: 140,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("${recommends[index]["title"]}",style: TextStyle(
                              color: black,
                              height: 1.5,
                              fontWeight: FontWeight.bold
                            ),),
                            SizedBox(
                              height: 5,
                            ),
                            Text("${recommends[index]["price"]}",style: TextStyle(
                                color: grey,
                                height: 1.5,
                                fontWeight: FontWeight.bold
                            ),),
                          ],
                        ),
                      )
                    ],
                  ),

                );
              })
          ),
        ),
        SizedBox(
          height: 40,
        ),
        CustomeCarouselHomePage(items:slider,),
        SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15,right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Recently viewed",style: TextStyle(
                //color: white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),),

              Padding(
                padding: const EdgeInsets.only(left: 15,right: 15),
                child: Row(

                  children: [
                    Text("All",style: TextStyle(
                      color: grey,
                      //fontSize: 18,
                      //fontWeight: FontWeight.bold,
                    ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(Icons.arrow_forward_ios,
                      size: 16,
                      color: grey,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),

        SingleChildScrollView(
          scrollDirection:Axis.horizontal,
          child: Row(
              children:List.generate(recently.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Column(

                    children: [
                      Container(
                        width: 140,
                        height: 180,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage("${recently[index]['imgUrl']}"),
                              fit: BoxFit.cover
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: 140,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("${recently[index]["title"]}",style: TextStyle(
                                color: black,
                                height: 1.5,
                                fontWeight: FontWeight.bold
                            ),),
                            SizedBox(
                              height: 5,
                            ),
                            Text("${recently[index]["price"]}",style: TextStyle(
                                color: grey,
                                height: 1.5,
                                fontWeight: FontWeight.bold
                            ),),
                          ],
                        ),
                      )
                    ],
                  ),

                );
              })
          ),
        ),
        SizedBox(
          height: 40,
        ),




        SizedBox(
          height: 30,
        )
      ],
    );
  }
}
