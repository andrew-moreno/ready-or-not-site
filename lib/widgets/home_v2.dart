import 'package:flutter/material.dart';

class Homev2 extends StatelessWidget {
  const Homev2({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Column(
          children: [
            Text(
              "Ready or Not",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Colors.black),
            ),
            Text(
              "A book by Richard R. Moreno",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: Colors.black),
            ),
            Text(
              "Fetured in Pacific Yachting Magazine November, 2023",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: Colors.black),
            )
          ],
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                "assets/images/title.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
