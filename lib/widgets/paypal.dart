import 'package:flutter/material.dart';
import 'package:ready_or_not/constraints.dart';
import 'package:url_launcher/url_launcher.dart';

class Paypal extends StatelessWidget {
  const Paypal({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          height: 500,
          width: double.infinity,
          child: Image.asset(
            "assets/images/title.jpg",
            fit: BoxFit.fitWidth,
          ),
        ),
        Padding(
          padding: kPadding,
          child: Center(
            child: Column(
              children: [
                Text(
                  "Purchase Ready or Not",
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Colors.white,
                      ),
                ),
                const SizedBox(height: 40),
                Text(
                  "PDF Version\n\$10.00 CAD",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                ),
                const SizedBox(height: 40),
                ElevatedButton(
                  style: const ButtonStyle(
                    padding: MaterialStatePropertyAll(
                      EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                    ),
                  ),
                  onPressed: () async {
                    final Uri url = Uri.parse('https://flutter.dev');
                    if (!await launchUrl(url)) {
                      throw Exception('Could not launch $url');
                    }
                  },
                  child: Text(
                    "Buy Now",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
