import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

import 'bottombar_widget.dart';

class Noti extends StatelessWidget {
  const Noti({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: const NavigatorBar(),
      appBar: AppBar(
        title: Text(
          'Announcements',
          style: GoogleFonts.oswald(
              fontSize: 25, fontWeight: FontWeight.normal, color: Colors.black),
        ),
        iconTheme: const IconThemeData(color: Colors.black, size: 25),
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: () {},
            iconSize: 30,
            icon: const Icon(Icons.search),
            color: Colors.black,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Column(
          children: [
            Container(
              width: 450,
              height: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: new AssetImage('lib/images/images-3.jpeg')),
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.red),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                ),
              ),
              child: Center(
                child: Text(
                  'End-of-season sales can be a bargain shoppers dream. Unlike unanticipated flash sales, end-of-season sales occur around the same time each year  retailers offer discounts on items associated with the season thats about to end, to make room for the new seasons items. But to take full advantage of these seasonal sales, you have to plan ahead. In preparation, heres a bargain shoppers comprehensive guide to end-of-season sales.',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.oswald(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
