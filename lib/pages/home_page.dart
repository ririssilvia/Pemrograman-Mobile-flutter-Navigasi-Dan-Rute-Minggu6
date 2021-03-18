import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:praktikum5/models/item.dart';

import 'item_page.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(judul: 'Laskar Pelangi', namapengarang: 'Andrea Hirata',jumlah: 10 , harga: 100000),
    Item(judul: 'Sang Pemimpi', namapengarang: 'Andrea Hirata',jumlah: 5 , harga: 70000),
    Item(judul: 'Ceros dan Batozar', namapengarang: 'Tere Liye',jumlah: 2 , harga: 150000),
    Item(judul: 'Kata', namapengarang: 'Rintik Sendu',jumlah: 5 , harga: 80000),
   
  ];

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
          leading: Icon(Icons.book),
          title: Text("Book List"),
          backgroundColor: Colors.amberAccent[700],
          centerTitle: true,
        ),
      body: Container(
          color: Colors.blueGrey[900],
          margin: EdgeInsets.all(8),
          child: ListView.builder(
            padding: EdgeInsets.all(8),
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                    builder: (context) => ItemPage(tempItem: item)
                    ),
                  );
                },
                // {
                //   Navigator.pushNamed(context, '/item');
                // },
                child: Card(
                  child: Container(
                    margin: EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Expanded(child: Text(item.judul)),
                        Expanded(child: Text(item.namapengarang)),
                        Expanded(
                            child: Text(
                          item.jumlah.toString(),
                          textAlign: TextAlign.end,
                        ),
                        ),
                        Expanded(
                            child: Text(
                          item.harga.toString(),
                          textAlign: TextAlign.end,
                        ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

