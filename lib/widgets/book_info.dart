import 'package:flutter/material.dart';
import 'package:ready_or_not/constraints.dart';

class BookInfo extends StatelessWidget {
  const BookInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kPadding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 500,
            child: Image.asset("assets/images/info.jpg"),
          ),
          SizedBox(
            width: 500,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Two Landlubbers from Patagonia Take to the Sea",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Text(
                  "\"American author Ernest Hemingway, who knew his way around the sea, wrote you must live life and deal with its problems to the best of your ability. Man is not made for defeat. Neither it seems were these two landlubbers from Patagonia.\" \n- R.M Davies, Pacific Yachting Magazine",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
