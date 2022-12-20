import 'package:calisma/detail.dart';
import 'package:calisma/order.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'bottombar_widget.dart';

class ListDetail extends StatefulWidget {
  ListDetail({
    super.key,
    required this.detailPage,
  });

  final DetailPage detailPage;

  @override
  State<ListDetail> createState() => _ListDetailState();
}

class _ListDetailState extends State<ListDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return PaymentOrder(detailPage1: widget.detailPage);
            },
          ),
        ),
        backgroundColor: Colors.black87,
        child: Icon(Icons.shopping_bag),
      ),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black, size: 25),
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            iconSize: 30,
            padding: const EdgeInsets.only(right: 15),
            onPressed: () {},
            icon: const Icon(Icons.favorite_border),
            color: Colors.black,
          ),
          IconButton(
            onPressed: () {},
            iconSize: 32,
            icon: const Icon(Icons.search),
            color: Colors.black,
          ),
        ],
      ),
      bottomNavigationBar: const NavigatorBar(),
      body: Container(
        padding: const EdgeInsets.fromLTRB(15, 20, 0, 0),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 355,
                  width: 320,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.horizontal(
                        right: Radius.circular(7)),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(widget.detailPage.ImagePath),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          buildSizeButton(title: "S", isSelected: false),
                          buildSizeButton(title: "M", isSelected: true),
                          buildSizeButton(title: "L", isSelected: false),
                          buildSizeButton(title: "XL", isSelected: false),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(
                right: 200,
              ),
              child: Text(
                widget.detailPage.name,
                style: GoogleFonts.oswald(
                    fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(
                right: 330,
              ),
              child: Text(
                'Details',
                style: GoogleFonts.oswald(
                    fontSize: 15, fontWeight: FontWeight.normal),
              ),
            ),
            const SizedBox(height: 15),
            labelText('Material  : ', 'The product is 100% Acryli and corded.'),
            const SizedBox(height: 15),
            labelText('Shipping : ', 'According to the cargo company density'),
            const SizedBox(height: 15),
            labelText('Returns : ', 'ithin 30 days'),
            const SizedBox(height: 20),
            buildSizeButton3(),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget buildSizeButton({title, isSelected}) {
    return MaterialButton(
      height: 40,
      minWidth: 20,
      elevation: 0,
      color: isSelected ? Colors.black : const Color(0xffe8e8e8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            color: isSelected ? Colors.white : const Color(0xff727274),
          ),
        ),
      ),
      onPressed: () {},
    );
  }

  Widget buildSizeButton3() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
            child: Container(
              width: 150,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.black87,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.all(12),
              child: Column(
                children: <Widget>[
                  IconButton(
                    splashColor: Colors.red.shade900,
                    iconSize: 25,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.shopping_bag_outlined,
                      size: 25,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 0,
                  ),
                  Text(
                    '\$${widget.detailPage.Price}',
                    style: GoogleFonts.oswald(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget labelText(text1, text2) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Text(
            text1,
            style:
                GoogleFonts.oswald(fontSize: 15, fontWeight: FontWeight.w700),
          ),
        ),
        Text(text2),
      ],
    );
  }
}
