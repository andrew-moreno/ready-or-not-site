import 'package:flutter/material.dart';
import 'package:ready_or_not/widgets/book_info.dart';
import 'package:ready_or_not/widgets/contact.dart';
import 'package:ready_or_not/widgets/paypal.dart';
import 'package:ready_or_not/widgets/ready_or_not_title.dart';

class Home extends StatefulWidget {
  const Home({super.key, required this.title});

  final String title;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
