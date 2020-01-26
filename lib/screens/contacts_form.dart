import 'package:bytebank/models/contact.dart';
import 'package:flutter/material.dart';

class ContactsForm extends StatefulWidget {
  @override
  _ContactsFormState createState() => _ContactsFormState();
}

class _ContactsFormState extends State<ContactsForm> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _accountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Contact"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: "Full Name",
                labelStyle: TextStyle(fontSize: 24),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: TextField(
                controller: _accountController,
                decoration: InputDecoration(
                  labelText: "Account Number",
                  labelStyle: TextStyle(fontSize: 24),
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24.0),
              child: SizedBox(
                width: double.maxFinite,
                child: RaisedButton(
                  child: Text("Create"),
                  onPressed: () {
                    Contact newContact = Contact(_nameController.text,
                        int.tryParse(_accountController.text));
                    Navigator.pop(context, newContact);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
