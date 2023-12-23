import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  Contact({super.key});
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            validator: (value) {
              return null;
            },
            controller: _nameController,
            decoration: const InputDecoration(
              labelText: "Name",
            ),
          )
        ],
      ),
    );
  }
}
