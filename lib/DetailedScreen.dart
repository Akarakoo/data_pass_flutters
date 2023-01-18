import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DetailedScreen extends StatefulWidget {
  const DetailedScreen({super.key, this.items});
  final items;

  @override
  State<DetailedScreen> createState() => _DetailedScreenState();
}

class _DetailedScreenState extends State<DetailedScreen> {
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("item "+widget.items["id"]),
    
        ),
    
        body: Column(
          
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  width: screenwidth*0.9,
                 height: 300,
                 color: Colors.grey,
                 child: SizedBox.fromSize(
                  size: Size.fromHeight(300),
              child: Image.asset('../Assets/'+widget.items["img_1"], fit: BoxFit.cover),
    
                 ),
                ),
              ],
            ),
    
            Container(
              width: screenwidth*0.9,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
    
                children: [
                  Text("Item "+widget.items["id"],
                  style: TextStyle(
                   fontSize: 22,
                   fontWeight: FontWeight.bold
                  ),
                  ),
                  SizedBox(height: 9,),
                  Text(widget.items["price"],
    
             style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold
             ),
             ),
                ],
              ),
            ),
    
          SizedBox(
            height: 150,
          ),
           
            Container(
              color: Colors.grey,
              height: 50,
              width: screenwidth*0.6,
              child: ElevatedButton(
                onPressed: () {},
                
                
                 child: Text("Add card")
                 ),
            )
    
          ],
        ),
    
      ),
    );
  }
}