import 'package:flutter/material.dart';
import 'package:ready_or_not/constraints.dart';

class ReadyOrNotTitle extends StatelessWidget {
  const ReadyOrNotTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        SizedBox(
          width: double.infinity,
          child: Image.asset(
            "assets/images/title.jpg",
            fit: BoxFit.fitWidth,
          ),
        ),
        Padding(
          padding: kPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Ready or Not",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: Colors.white),
              ),
              Text(
                "A book by Richard R. Moreno",
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: Colors.white),
              ),
              Text(
                "Fetured in Pacific Yachting Magazine November, 2023",
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: Colors.white),
              )
            ],
          ),
        ),
      ],
    );
  }
}
