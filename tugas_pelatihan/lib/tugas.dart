import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InputForm(),
    );
  }
}

class InputForm extends StatefulWidget {
  @override
  _InputFormState createState() => _InputFormState();
}

class _InputFormState extends State<InputForm> {
  final _Nama = 'MIKEl';
  final _Nrp = '(6122797)';
  String? _pilihStatus;
  String? _pilihDepartement;
  String? _pilihJabatan;
  String? _pilihLokasi;
  TimeOfDay _pilihJam = TimeOfDay.now();
  String _hasilAbsen = '';

  // List Status absen, Depertement dan Jabatan

  final List<String> listStatus = [
    'Masuk', 
    'Pulang'
    ];

  final List<String> listDepartement = [
    'Plant',
    'Produksi',
    'Human Capital',
    'Safety',
    'Finance',
    'Information Technology',
    'Supply Management',
    'General Service',
  ];

  final List<String> listJabatan = [
    'Operator',
    'Mekanik',
    'Admin',
    'Group Leader',
    'Section Head',
    'Departement Head',
  ];

  final List<String> listLokasi = [
    'Office Site',
    'Workshop Plant',
    'Office Produksi',
    'Bandara Produksi',
    'Change Shift Pit',
    'Post Security',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Input Absensi Karyawan'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person),
                ),
                title: Text(
                  'Haloo, Selamat Datang MIKEL 6122797',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0,
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              DropdownButtonFormField<String>(
                value: _pilihStatus,
                items: listStatus.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    _pilihStatus = newValue;
                  });
                },
                decoration: InputDecoration(
                  labelText: 'Status Absensi',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20.0),
              DropdownButtonFormField<String>(
                value: _pilihDepartement,
                items: listDepartement.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    _pilihDepartement = newValue;
                  });
                },
                decoration: InputDecoration(
                  labelText: 'Departement',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20.0),
              DropdownButtonFormField<String>(
                value: _pilihJabatan,
                items: listJabatan.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    _pilihJabatan = newValue;
                  });
                },
                decoration: InputDecoration(
                  labelText: 'Jabatan',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20.0),
              DropdownButtonFormField<String>(
                value: _pilihLokasi,
                items: listLokasi.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    _pilihLokasi = newValue;
                  });
                },
                decoration: InputDecoration(
                  labelText: 'Lokasi',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20.0),
              ListTile(
                title: Text('Jam',),
                subtitle: Text('${DateFormat.Hm().format(DateTime.now())}'),
                trailing: Icon(Icons.access_time),
                onTap: () {
                  setState(() {
                    _pilihJam = TimeOfDay.now();
                  });
                },
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                child: Text('Absen'),
                onPressed: () {
                  final Status = _pilihStatus;
                  final Departement = _pilihDepartement;
                  final Jabatan = _pilihJabatan;
                  final Lokasi = _pilihLokasi;
                  final Jam = '${_pilihJam.hour}:${_pilihJam.minute}';

                  if (Status != null && Departement != null && Jabatan != null && Lokasi != null ) {
                    setState(() {
                      _hasilAbsen =
                          'Nama:  $_Nama\nNRP: $_Nrp\nStatus: $Status\nDepartement: $Departement\nJabatan:  $Jabatan\nLokasi: $Lokasi\nJam: $Jam';
                    });
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Data yang diisi belum lengkap'),
                      ),
                    );
                  }
                }, 
              ),
              SizedBox(height: 20.0),
              Text(
                'Hasil Absensi:',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                _hasilAbsen,
                style: TextStyle(
                  fontSize: 16.0 ,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}