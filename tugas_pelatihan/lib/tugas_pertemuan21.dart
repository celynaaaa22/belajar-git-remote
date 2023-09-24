import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Input Data Flutter',
      home: InputDataScreen(),
    );
  }
}

class InputDataScreen extends StatefulWidget {
  @override
  _InputDataScreenState createState() => _InputDataScreenState();
}

class _InputDataScreenState extends State<InputDataScreen> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _addressController = TextEditingController();
  String _displayData = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input Data Flutter'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Nama'),
            ),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: _phoneController,
              decoration: InputDecoration(labelText: 'Nomor HP'),
            ),
            TextField(
              controller: _addressController,
              decoration: InputDecoration(labelText: 'Alamat'),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  String name = _nameController.text;
                  String email = _emailController.text;
                  String phone = _phoneController.text;
                  String address = _addressController.text;

                  _displayData =
                      'Nama: $name\nEmail: $email\nNomor HP: $phone\nAlamat: $address';
                });
              },
              child: Text('Simpan Data'),
            ),
            SizedBox(height: 20.0),
            Text(
              'Data Inputan:',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Text(
              _displayData,
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _addressController.dispose();
    super.dispose();
  }
}
