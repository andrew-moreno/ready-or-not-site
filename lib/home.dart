import 'package:flutter/material.dart';
import 'package:ready_or_not/widgets/book_info.dart';
import 'package:ready_or_not/widgets/contact.dart';
import 'package:ready_or_not/widgets/home_v2.dart';
import 'package:ready_or_not/widgets/paypal.dart';
import 'package:ready_or_not/widgets/ready_or_not_title.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool v2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: (v2)
          ? const Homev2()
          : Container(
              // color: Colors.red,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const ReadyOrNotTitle(),
                    const BookInfo(),
                    const Paypal(),
                    Contact(),
                  ],
                ),
              ),
            ),
    );
  }
}
