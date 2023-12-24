import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:ready_or_not/constraints.dart';

class BookInfo extends StatelessWidget {
  const BookInfo({super.key});

  @override
  Widget build(BuildContext context) {
    double spacerWidth = MediaQuery.of(context).size.width * 0.06;

    return FractionallySizedBox(
      widthFactor: kWidthFraction,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: kPaddingVertical,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: (MediaQuery.of(context).size.width * kWidthFraction -
                      spacerWidth) /
                  2,
              child: Image.asset("assets/images/info.jpg"),
            ),
            SizedBox(width: spacerWidth),
            SizedBox(
              width: (MediaQuery.of(context).size.width * kWidthFraction -
                      spacerWidth) /
                  2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText(
                    "Two Landlubbers from Patagonia Take to the Sea",
                    style: Theme.of(context).textTheme.titleMedium,
                    maxLines: 2,
                  ),
                  AutoSizeText(
                    "\"American author Ernest Hemingway, who knew his way around the sea, wrote you must live life and deal with its problems to the best of your ability. Man is not made for defeat. Neither it seems were these two landlubbers from Patagonia.\" \n- R.M Davies, Pacific Yachting Magazine",
                    style: Theme.of(context).textTheme.bodyMedium,
                    maxLines: 6,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
