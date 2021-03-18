import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:praktikum5/models/item.dart';

class ItemPage extends StatelessWidget {
  final Item tempItem;
  const ItemPage({Key key, this.tempItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Prakitkum 5',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.shopping_cart_outlined),
          title: Text("Detail Book "),
          backgroundColor: Colors.amberAccent[700],
        ),
        body: Container(
          margin: EdgeInsets.all(10),
          child: Card(
            color: Colors.yellow.shade200,
            child: InkWell(
              child: SizedBox(
                width: 1000,
                height: 300,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Text(
                          "Nama : " + tempItem.judul,
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Candara',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Text(
                          "Nama Pengarang : " + tempItem.namapengarang,
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Candara',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Text(
                          "Jumlah : " + tempItem.jumlah.toString(),
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Candara',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Text(
                          "Harga : " + tempItem.harga.toString(),
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Candara',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(20),
                        width: 100,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.red,
                        ),
                        // ignore: deprecated_member_use
                        child: RaisedButton(
                          child: Text('Kembali'),
                          textColor: Colors.white,
                          color: Colors.transparent,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
