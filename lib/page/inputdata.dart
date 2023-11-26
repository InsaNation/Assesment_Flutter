import 'package:flutter/material.dart';

class AddDatas extends StatefulWidget {
  const AddDatas({Key? key}) : super(key: key);

  @override
  _AddDatasState createState() => _AddDatasState();
}

class _AddDatasState extends State<AddDatas> {
  String _name = '';
  String _price = '';
  String _imageUrl = '';
  String dropdownValue = 'Appetizer';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Input Data'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                hintText: 'Masukan Nama Produk',
                labelText: 'Nama Produk',
              ),
              onChanged: (String value) {
                setState(() {
                  _name = value;
                });
              },
            ),
            TextField(
              decoration: const InputDecoration(
                hintText: 'Masukan Harga Produk',
                labelText: 'Harga Produk',
              ),
              onChanged: (String value) {
                setState(() {
                  _price = value;
                });
              },
            ),
            const SizedBox(height: 20),
            DropdownButtonFormField<String>(
              value: dropdownValue,
              decoration: InputDecoration(
                labelText: 'Select Category',
                border: OutlineInputBorder(),
              ),
              onChanged: (String? value) {
                setState(() {
                  dropdownValue = value!;
                });
              },
              items: <String>['Appetizer', 'Snack', 'Dessert', 'Seafood']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            TextField(
              decoration: const InputDecoration(
                hintText: 'Masukan URL Gambar',
                labelText: 'Link Gambar',
              ),
              onChanged: (String value) {
                setState(() {
                  _imageUrl = value;
                });
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text(
                'Submit',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Nama Produk : $_name'),
                          Text('Harga Produk : $_price'),
                          Text('Kategori :  $dropdownValue'),
                          if (_imageUrl.isNotEmpty) Image.network(_imageUrl),
                        ],
                      ),
                    );
                  },
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFF6F6F6),
              ),
            ),
          ],
        ),
      ),
    );
  }
}