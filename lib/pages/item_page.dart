
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:praktikum5/models/item.dart';

class ItemPage extends StatelessWidget {

  final Item tempItem;
  const ItemPage({Key key, this.tempItem}) : super(key: key);
  
   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Shopping List'),
        ),
          body: Container(
            alignment: Alignment.center,
           // color: Colors.black87,
            child:
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Text(
                  "Nama : " + tempItem.name,
                  
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                child: Text(
                  "Price : " + tempItem.price.toString(),
                  
                ),
              ),
            ],
            ),
          )),
    );
  }

}