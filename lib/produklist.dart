import 'package:flutter/material.dart';
//import terlebih dahulu halaman yang diperlukan
import './detailproduk.dart';

class ProdukList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //appbar
        appBar: AppBar(title: Text("Daftar Semua Senapan")),
        //body untuk content
        //menampilkan list
        body: ListView(
          shrinkWrap: true,
          //padding
          padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
          //anggota dari list berupa widget children
          children: <Widget>[
            //GestureDetector untuk menangani gesture pengguna
            new GestureDetector(
              //listener  berupa klik 1x
              onTap: () {
                //navigator.push  untuk berpindah halaman
                Navigator.of(context).push(new MaterialPageRoute(
                  //pemanggilan class DetailProduk beserta pengiriman detail produk
                  builder: (BuildContext context) => DetailProduk(
                    name: "Senapan PCP Mouser",
                    description: "Senapan PCP Mouser memiliki keunggulan tersendiri."
                                  "Selain ringan, bobotnya hanya 4 kg, tampilannya pun elegan."
                                  "Hampir keseluruhan bodynya dilapisi kayu.",
                    price: 2000000,
                    image: "5.jpg",
                    star: 4,
                  ),
                ));
              },
              //memanggil class Productbox
              child: ProductBox(
                  //berisi parameter yang diperlukan di class ProductBox
                  name: "PCP Mouser",
                  description: "Senapan PCP Mouser",
                  price: 2000000,
                  image: "5.jpg",
                  star: 4),
            ),
            new GestureDetector(
                onTap: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => DetailProduk(
                      name: "Senapan Benjamin Marauder Air Rifle",
                      description: "Senapan ini memiliki fitur dan keunggulan yang didambakan para pengguna senapan angin."
                                   "Performanya apik, akurasinya pun tinggi. Plus, semua itu diberikan dengan harga yang tidak terlalu mahal",
                      price: 4000000,
                      image: "4.jpg",
                      star: 5,
                    ),
                  ));
                },
                child: ProductBox(
                    name: "Benjamin Marauder Air Rifle",
                    description: "Senapan Benjamin Marauder Air Rifle",
                    price: 4000000,
                    image: "4.jpg",
                    star: 5)),
              new GestureDetector(
                onTap: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => DetailProduk(
                      name: "Senapan Umarex Gauntlet",
                      description: "Senapan angin ini  memberikan tenaga dan akurasi yang konsisten di setiap tembakannya.",
                      price: 3000000,
                      image: "3.jpg",
                      star: 3,
                    ),
                  ));
                },
                child: ProductBox(
                    name: "Umarex Gauntlet",
                    description: "Senapan Umarex Gauntlet",
                    price: 3000000,
                    image: "3.jpg",
                    star: 3)),
                        new GestureDetector(
                onTap: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => DetailProduk(
                      name: "Senapan Umarex Gauntlet",
                      description: "Senapan angin ini  memberikan tenaga dan akurasi yang konsisten di setiap tembakannya.",
                      price: 4000000,
                      image: "2.jpg",
                      star: 5,
                    ),
                  ));
                },
                child: ProductBox(
                    name: "Umarex Gauntlet",
                    description: "Senapan Umarex Gauntlet",
                    price: 4000000,
                    image: "2.jpg",
                    star: 5)),
new GestureDetector(
                onTap: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => DetailProduk(
                      name: "Senapan Gamo Viper",
                      description: "Senapan angin ini cukup unik. Sesuai namanya, bisa menggunakan dua mode. Mode shotgun dan rifle",
                      
                      price: 5000000,
                      image: "1.jpg",
                      star: 5,
                    ),
                  ));
                },
                child: ProductBox(
                    name: "Gamo Viper",
                    description: "Senapan Gamo Viper",
                    price: 5000000,
                    image: "1.jpg",
                    star: 5)),
          ],
        ));
  }
}

//menggunakan widget StatelessWidget
class ProductBox extends StatelessWidget {
  //deklarasi variabel yang diterima dari MyHomePage
  ProductBox(
      {Key key, this.name, this.description, this.price, this.image, this.star})
      : super(key: key);
  //menampung variabel yang diterima untuk dapat digunakan pada class ini
  final String name;
  final String description;
  final int price;
  final String image;
  final int star;
  final children = <Widget>[];

  Widget build(BuildContext context) {
    for (var i = 0; i < star; i++) {
      children.add(new Icon(
        Icons.star,
        size: 10,
        color: Colors.deepOrange,
      ));
    }
    //menggunakan widget container
    return Container(
        //padding
        padding: EdgeInsets.all(10),
        // height: 120,
        //menggunakan widget card
        child: Card(
            //membuat tampilan secara horisontal antar image dan deskripsi
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //children digunakan untuk menampung banyak widget
                children: <Widget>[
              Image.asset(
                "assets/" + image,
                width: 150,
              ),
              Expanded(
                  //child digunakan untuk menampung satu widget
                  child: Container(
                      padding: EdgeInsets.all(5),
                      //membuat tampilan secara vertikal
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        //ini isi tampilan vertikal tersebut
                        children: <Widget>[
                          //menampilkan variabel menggunakan widget text
                          Text(this.name,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                          Text(this.description),
                          Text(
                            "Price: " + this.price.toString(),
                            style: TextStyle(color: Colors.red),
                          ),
                          //menampilkan widget icon  dibungkus dengan row
                          Row(
                            children: <Widget>[
                              Row(
                                children: children,
                              )
                            ],
                          )
                        ],
                      )))
            ])));
  }
}
