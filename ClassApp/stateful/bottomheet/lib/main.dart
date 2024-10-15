import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomSheetExample(),
    );
  }
}

class BottomSheetExample extends StatefulWidget {
  @override
  _BottomSheetExampleState createState() => _BottomSheetExampleState();
}

class _BottomSheetExampleState extends State<BottomSheetExample> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _ageController = TextEditingController();
  TextEditingController _companyController = TextEditingController();

  
  String _name = '';
  String _age = '';
  String _company = '';

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
          
            children: [
              TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: 'Enter Name',
                  
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: _ageController,
                decoration: InputDecoration(
                  labelText: 'Enter Age',
                ),
                keyboardType: TextInputType.number, 
              ),
              SizedBox(height: 10),
              TextField(
                controller: _companyController,
                decoration: InputDecoration(
                  labelText: 'Enter Company',
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _name = _nameController.text;
                    _age = _ageController.text;
                    _company = _companyController.text;
                    _nameController.clear();
                  });
                  Navigator.pop(context); // Close the bottom sheet
                },
                child: Text('Submit'),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Sheet Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Display submitted data
            Text('Name: $_name', 
            style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('Age: $_age', 
            style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text('Company: $_company', 
            style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showBottomSheet(context),
        child: Icon(Icons.add),
      ),
    );
  }
}