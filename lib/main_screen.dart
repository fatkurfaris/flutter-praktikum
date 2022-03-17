import 'dart:html';

import 'package:flutter/material.dart';
import 'package:quiz_123190130/data_hotel.dart';
import 'package:quiz_123190130/detail_hotel.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Hotel"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final DataHotel hotel = hotelList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailHotel(
                  name: hotel.name,
                  harga: hotel.roomPrice,
                  bintang: hotel.stars,
                  location: hotel.location,
                  gambar: hotel.imageUrl[0],
                  halaman: hotel.websiteLink,
                );
              }));
            },
            child: Card(
              child: Row(
                children: [
                  Image.network(
                    hotel.imageUrl[0],
                    fit: BoxFit.cover,
                    // width: MediaQuery.of(context).size.width,
                    width: 600.00,
                    height: 200.09,
                  ),
                  // Text("tesr")
                  // Text("test")
                ],
              ),
            ),
          );
        },
        itemCount: hotelList.length,
      ),
    );
  }
}

              // decoration: BoxDecoration(
              //     color: Colors.black,
              //     borderRadius: BorderRadius.circular(15),
              //     boxShadow: [
              //       BoxShadow(
              //           color: Colors.black.withOpacity(0.6),
              //           offset: Offset(0.0, 10.0),
              //           blurRadius: 10.0,
              //           spreadRadius: -6.0),
              //     ],
              //     image: DecorationImage(
              //         colorFilter: ColorFilter.mode(
              //             Colors.black.withOpacity(0.35), BlendMode.multiply),
              //         Image.network(hotel.imageUrl[0]))),