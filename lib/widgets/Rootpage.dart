

// ignore_for_file: prefer_const_constructors

import 'package:ecommerceu/themes/colors.dart';
import 'package:ecommerceu/widgets/Home.dart';
import 'package:ecommerceu/widgets/account_page.dart';
import 'package:ecommerceu/widgets/cart_page.dart';
import 'package:ecommerceu/widgets/more_page.dart';
import 'package:ecommerceu/widgets/store.dart';
import 'package:flutter/material.dart';

import '../json/constant.dart';

class Rootpage extends StatefulWidget {
  @override
  _RootpageState createState() => _RootpageState();
}

class _RootpageState extends State<Rootpage> {
  int tap=0;
  AppBar? appbar=null;
  List spp=[
    0.0,
    0.0,
    60.0,
    60.0,
    60.0,
  ];
  List<String>AppbarText=[
    "",
    "",
    "ACCOUNT",
    "CART",
    "MORE",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar:PreferredSize(child: getAppbar(),preferredSize: Size.fromHeight(spp[tap]),),
      bottomNavigationBar: getbottom(),
      body: getbody(),

    );
  }
 /* Widget? getAppbar() {
    switch (tap) {
      case 0:
        appbar = null;
        break;
      case 1:
        appbar = null;
        break;
      case 2:
        return AppBar(
          elevation: 0.8,
          backgroundColor: white,
          title: Text(
            "ACCOUNT",
            style: TextStyle(color: black),
          ),
        );
        break;
      case 3:
        return AppBar(
          elevation: 0.8,
          backgroundColor: white,
          title: Text(
            "CART",
            style: TextStyle(color: black),
          ),
        );
        break;
      case 4:
        return AppBar(
          elevation: 0.8,
          backgroundColor: white,
          title: Text(
            "MORE",
            style: TextStyle(color: black),
          ),
        );
        break;
      default:
    }
  }*/

 Widget getAppbar(){
  return AppBar(
    elevation: 0.6,
    centerTitle: true,
    backgroundColor: white,
    title: Text("${AppbarText[tap]}",style: TextStyle(color: black),),

  ) ;
 }
  Widget getbottom(){
    return Container(
      height: 80.0,
      decoration: BoxDecoration(
        color:white,
        border: Border(top: BorderSide(color: grey.withOpacity(0.2))),
        //borderRadius: BorderRadius.circular(20.0)
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0,right: 10.0,top:5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(itemsTab.length, (index) {
            return IconButton(onPressed: (){
                            setState(() {
                              tap=index;
                                          });
            },
                icon:Icon(itemsTab[index]['icon'],
                  size: itemsTab[index]['size'],),
            color: tap==index?accent:black,);
          }),
        ),
      ),
    );
  }
  Widget getbody(){
    return IndexedStack(
      index: tap,
      children: [
        Home(),
        store(),
        accountpage(),
        cartPage(),
    morePage(),

      ],
    );
  }
}
