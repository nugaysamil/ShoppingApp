import 'package:calisma/detail.dart';
import 'package:calisma/notification.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'bottombar_widget.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Row(
            children: [
              Text(
                'Shopping App',
                style: GoogleFonts.lato(
                    color: Colors.black,
                    letterSpacing: 4,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        actions: <Widget>[
          IconButton(
            color: Colors.black,
            icon: const Icon(Icons.search),
            iconSize: 20,
            onPressed: () {},
          ),
          IconButton(
            color: Colors.black,
            icon: const Icon(Icons.notifications),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Noti(),
                ),
              );
            },
          ),
        ],
      ),
      bottomNavigationBar: const NavigatorBar(),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              textLabel2('Man'),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.height * 0.500,
            height: MediaQuery.of(context).size.height * 0.355,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                DetailPage(
                  name: 'Checkered shirt ',
                  ImagePath: 'lib/images/man.jpg.webp',
                  Price: 50.00,
                ),
                DetailPage(
                  name: 'Classic Jacket',
                  ImagePath: 'lib/images/images-2.jpg',
                  Price: 70.00,
                ),
                DetailPage(
                  name: 'Basic Tshirt',
                  ImagePath: 'lib/images/manken2.jpg',
                  Price: 10.00,
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          textLabel2('Woman'),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: 430,
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                DetailPage(
                  name: 'Nighty Pyjamas',
                  ImagePath: 'lib/images/manken4.jpg',
                  Price: 10.00,
                ),
                DetailPage(
                  name: 'Daily Bag',
                  ImagePath: 'lib/images/manken6.jpg',
                  Price: 30.00,
                ),
                DetailPage(
                  name: 'Nighty Pyjamas',
                  ImagePath: 'lib/images/manken5.webp',
                  Price: 20.00,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget textLabel2(text1) {
    return Text(
      text1,
      style: GoogleFonts.lato(
          color: Colors.black, letterSpacing: 10, fontWeight: FontWeight.bold),
    );
  }
}
