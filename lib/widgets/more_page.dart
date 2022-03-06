
import 'package:ecommerceu/json/constant.dart';
import 'package:ecommerceu/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class morePage extends StatefulWidget {
  @override
  _morePageState createState() => _morePageState();
}

class _morePageState extends State<morePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: getbody(),
    );
  }
  Widget getbody(){
    var size=MediaQuery.of(context).size;
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 25,right: 25,top:25),
          child: Row(
            children: [
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: NetworkImage(profileUrl),
                    fit: BoxFit.cover,
                  )
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Column (
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Daniel",style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 25,
                  ),),
                  SizedBox(
                    height: 10,
                  ),
                  Text("4 Orders",style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 25,
                  ),),
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Divider(
          color: grey.withOpacity(0.8),
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30,right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(menusMore.length, (index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('${menusMore[index]}',style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),)
                  ],
                ),
              );
            }),
          ),
        ),
        /*SizedBox(
          height: 30,
        ),*/
        Padding(
          padding: const EdgeInsets.only(left: 25,right: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: (size.width-100)/2,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: black,
                ),
                child: Center(
                  child: Text("Settings",style: TextStyle(
                    color: white,
                    fontSize: 15,
                  ),),
                ),

              ),
              Container(
                width: (size.width-100)/2,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: black,
                ),
                child: Center(
                  child: Text("Sign Out",style: TextStyle(
                    color: white,
                    fontSize: 15,
                  ),),
                ),

              )
            ],
          ),
        )
        
      ],
    );
  }
}
