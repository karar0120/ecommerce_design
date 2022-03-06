import 'package:ecommerceu/json/constant.dart';
import 'package:ecommerceu/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class store extends StatefulWidget {
  @override
  _storeState createState() => _storeState();
}

class _storeState extends State<store> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: getbody(),
    );
  }
  Widget getbody(){
    return SafeArea(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30,left: 20,right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Phnom Penh",style: TextStyle(
                    fontSize:16,
                ),),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  FontAwesomeIcons.mapMarkedAlt,
                  size: 20,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Text("Find all \nstores here ",style: TextStyle(
              fontWeight: FontWeight.w400,
              height: 1.5,
              fontSize: 30
            ),),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    width:double.infinity ,
                    height: 40,
                    decoration: BoxDecoration(
                      color: grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        cursorColor: primary,
                        decoration: InputDecoration(
                          hintText: "Search",
                          border: InputBorder.none,
                          suffixIcon:Icon(
                            Feather.search,
                            size: 20.0,
                            color: grey,
                          )

                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: black,
                  ),
                  child: Center(
                    child: Icon(
                      FontAwesomeIcons.mapMarkedAlt,size: 20,color: white,
                    ),
                  ),
                ),

              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Divider(
            color: grey.withOpacity(0.8),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Text(
              "All store",
              style: TextStyle(
                fontSize: 22,
                color: black,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children:List.generate(storeList.length, (index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 20,left: 20,right: 20),
                child: Container(
                  height: 200.0,
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Container(
                        height: 200,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                            image:NetworkImage("${storeList[index]['img']}"),
                            fit: BoxFit.cover,
                          )
                        ),
                      ),
                      Container(
                        height: 200,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: black.withOpacity(0.35),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  width: 65,
                                  height: 25,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(4)
                                  ),
                                  child: storeList[index]['open']==0?Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text("Close",style: TextStyle(
                                        fontSize: 10,
                                        fontWeight:FontWeight.bold,
                                        color: black
                                    ),),
                                    Container(
                                      width: 8,
                                      height: 8,
                                      decoration: BoxDecoration(
                                        shape:BoxShape.circle,
                                        color: Colors.redAccent,
                                      ),
                                    )
                                  ],
                                ):Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text("Open",style: TextStyle(
                                          fontSize: 10,
                                          fontWeight:FontWeight.bold,
                                          color: black
                                      ),),
                                      Container(
                                        width: 8,
                                        height: 8,
                                        decoration: BoxDecoration(
                                          shape:BoxShape.circle,
                                          color: Colors.greenAccent,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: Row(
                                children: [
                                  Icon(
                                    FontAwesomeIcons.mapMarkedAlt,
                                    size: 20,
                                    color: white,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("${storeList[index]['name']}",style: TextStyle(
                                      color: white,
                                    fontSize: 18
                                  ),)
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),


                    ],
                  ),
                ),
              );
            }),
          ),
        ],

      ),
    );
  }
}
