import 'dart:html';

import 'package:data_pass/DetailedScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';



class HomePage extends StatefulWidget {
  
     
  const HomePage({super.key,});

  @override
  State<HomePage> createState() => _HomePageState();
}
   

    
    

class _HomePageState extends State<HomePage> {
  List _items= [
      {
        "id":"1",
        "price":"200\$",
        "img_1":"2.jpg",
        "img_2":"3.jpg",
      },
       {
        "id":"2",
        "price":"400\$",
        "img_1":"3.jpg",
        "img_2":"4.jpg",
      },
       {
        "id":"3",
        "price":"300\$",
        "img_1":"4.jpg",
        "img_2":"2.jpg",
       },
  ];
  
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
    
        appBar: AppBar(
          title: Text("home"),
        ),
    
    
        body:
        
        Center(
          child: Container(
     width: screenwidth *0.9,
    
            child: ListView.builder(itemBuilder: (context, index) {
              return InkWell
              
              (
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DetailedScreen(items: _items[index],),));
                },
                child: Container_Items(screenwidth: screenwidth,items: _items[index],));
              
            },
            itemCount: 3,
            ),
          ),
        )
    
        
    
      ),
    );
  }
}

class Container_Items extends StatelessWidget {
  const Container_Items({
    Key? key,
    required this.screenwidth, this.items,
  }) : super(key: key);

  final double screenwidth;
  final items;

  @override
  Widget build(BuildContext context) {
    return Container(
     
      margin: EdgeInsets.only(bottom: 20,top: 20),
      height: 300,
      color: Colors.grey,
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
        Container(

          child: ClipRRect(
            child: SizedBox.fromSize(
              size: Size.fromHeight(300),
           child: Image.asset('../Assets/'+items["img_1"], fit: BoxFit.cover),

            ),
          ),

        ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
          width: screenwidth*0.87,
          margin: EdgeInsets.only(bottom: 5),
          height: 100,
          color: Colors.white,
         child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

                Text("item "+items["id"],
                style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold

                ),
                ),
                Text(items["price"],
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),
                ),

              ],

            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  
                    
                    decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(40)
                    ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(40),
                     child: Image.asset('../Assets/'+items["img_2"], fit: BoxFit.cover),
                    ),
                  ),
                )
              ],
            )

          ],
         ),
        ),
        ],
      ),
      
    );
  }
}