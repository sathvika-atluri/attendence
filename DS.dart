import 'package:flutter/material.dart';

import 'last.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dropdown Example',
      home: DropdownExample(),
    );
  }
}

class DropdownExample extends StatefulWidget {
  @override
  _DropdownExampleState createState() => _DropdownExampleState();
}

class _DropdownExampleState extends State<DropdownExample> {
  String selectedDSOption = 'DS-A 1ST';
  String selectedITOption = 'IT 1ST';

  List<String> dsOptions = [
    'DS-A 1ST',
    'DS-B 1ST',
    'DS-C 1ST',
    'DS-A 2ND',
    'DS-B 2ND',
    'DS-C 2ND',
    'DS-A 3RD',
    'DS-B 3RD',
    'DS-A 4TH',
  ];

  List<String> itOptions = [
    'IT 1ST',
    'IT 2ND',
    'IT 3RD',
    'IT 4TH',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dropdown Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              padding: EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  showDSOptionsDialog();
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                ),
                child: Text(selectedDSOption),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              padding: EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  showITOptionsDialog();
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                ),
                child: Text(selectedITOption),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showDSOptionsDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Select DS Option'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: dsOptions.map((option) {
              return ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MyWidget()));

                  setState(() {
                    selectedDSOption = option;
                  });
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                ),
                child: Text(option),
              );
            }).toList(),
          ),
        );
      },
    );
  }

  void showITOptionsDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Select IT Option'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: itOptions.map((option) {
              return ElevatedButton(
                onPressed: () {
                  setState(() {
                    selectedITOption = option;
                  });
                  Navigator.pop(context); // Close the dialog
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                ),
                child: Text(option),
              );
            }).toList(),
          ),
        );
      },
    );
  }
}
