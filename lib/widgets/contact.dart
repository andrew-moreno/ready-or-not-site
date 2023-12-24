import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:ready_or_not/constraints.dart';
import 'package:http/http.dart' as http;

class Contact extends StatelessWidget {
  Contact({super.key});
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _bodyController = TextEditingController();

  Future<int> sendEmail() async {
    final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
    const serviceId = 'service_kd0jqm2';
    const templateId = 'template_z7j165k';
    const userId = 'j2K3nP_dn7d_LtAs7';
    final response = await http.post(url,
        headers: {
          'Content-Type': 'application/json',
        },
        body: json.encode({
          'service_id': serviceId,
          'template_id': templateId,
          'user_id': userId,
          'template_params': {
            'from_name': _nameController.text,
            'from_email': _emailController.text,
            'message': _bodyController.text
          }
        }));
    return response.statusCode;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FractionallySizedBox(
        widthFactor: kWidthFraction,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: kPaddingVertical,
          ),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Text("Contact the author",
                    style: Theme.of(context).textTheme.titleMedium),
                TextFormField(
                  controller: _nameController,
                  decoration: const InputDecoration(
                    labelText: "Name",
                  ),
                ),
                const SizedBox(height: 30),
                TextFormField(
                  validator: (value) {
                    return null;
                  },
                  controller: _emailController,
                  decoration: const InputDecoration(
                    labelText: "Email",
                  ),
                ),
                const SizedBox(height: 30),
                TextFormField(
                  validator: (value) {
                    return null;
                  },
                  controller: _bodyController,
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  decoration: const InputDecoration(
                    labelText: "Message",
                  ),
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  style: Theme.of(context).elevatedButtonTheme.style,
                  onPressed: () async {
                    int statusCode = await sendEmail();
                    print(statusCode.toString());
                  },
                  child: Text(
                    "Send",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
