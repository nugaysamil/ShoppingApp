import 'package:calisma/button.dart';
import 'package:calisma/cardwidget.dart';
import 'package:calisma/detail.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'bottombar_widget.dart';

class PaymentOrder extends StatelessWidget {
  PaymentOrder({super.key, required this.detailPage1});

  final DetailPage detailPage1;

  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black, size: 25),
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: () {},
            iconSize: 32,
            icon: const Icon(Icons.search),
            color: Colors.black,
          ),
        ],
      ),
      body: Column(
        children: [
          Text(
            'Complete The Payment',
            style: GoogleFonts.lato(
                fontSize: 20,
                color: Colors.black,
                letterSpacing: 4,
                fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(10, 30, 20, 20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: ListTile(
                      leading: Image.asset(
                        detailPage1.ImagePath,
                        height: 100,
                      ),
                      title: Text(detailPage1.name),
                      subtitle: Text(
                        '\$ ${detailPage1.Price}',
                      ),
                      trailing: IconButton(
                        icon: const Icon(Icons.cancel),
                        onPressed: () {},
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          // ignore: sized_box_for_whitespace
          Padding(
            padding: const EdgeInsets.only(bottom: 10, top: 0),
            child: Container(
              height: 170,
              child: PageView(
                controller: _controller,
                scrollDirection: Axis.horizontal,
                children: [
                  const MyCard(
                    balance: 5250.20,
                    cardNumber: 1234567,
                    expiryMonth: 10,
                    expiryYear: 24,
                    color: Colors.black,
                  ),
                  const MyCard(
                    balance: 4322.20,
                    cardNumber: 5673434,
                    expiryMonth: 5,
                    expiryYear: 24,
                    color: Colors.grey,
                  ),
                  MyCard(
                    balance: 34234.20,
                    cardNumber: 654654,
                    expiryMonth: 10,
                    expiryYear: 14,
                    color: Colors.grey[700],
                  ),
                ],
              ),
            ),
          ),
          //const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.only(bottom: 0),
            child: SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(activeDotColor: Colors.grey.shade800),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 170),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                MyButton(
                  iconImagePath: 'lib/images/images.png',
                  buttonText: 'Send',
                ),
                MyButton(
                  iconImagePath:
                      'lib/images/transparent-payment-icon-pay-icon-5e23bb6173a2d7.9616891315794000334737.jpg',
                  buttonText: 'Pay',
                ),
                MyButton(
                  iconImagePath: 'lib/images/552791.png',
                  buttonText: 'Bills',
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: const NavigatorBar(),
    );
  }
}
