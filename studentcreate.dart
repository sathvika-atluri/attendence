import 'package:flutter/material.dart';

class CreateStudentScreen extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController rollNoController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController classSectionController = TextEditingController();
  final TextEditingController phoneNoController = TextEditingController();

  void _createStudent() {
    // Here, you would handle the submission and API call to create the student
    // You can access the values from the controllers: nameController.text, rollNoController.text, etc.
    // Make sure to add validation and API integration based on your requirements.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Student'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/ps2.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 20,),
              Text(
                'Welcome!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
            // Text(
            //   'Please provide your student information below',
            //   style: TextStyle(fontSize: 16),
            // ),
              SizedBox(height: 20,),
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(labelText: 'Name',border: OutlineInputBorder(borderRadius:BorderRadius.circular(10.0) )),
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: rollNoController,
                decoration: InputDecoration(labelText: 'Roll No',border: OutlineInputBorder(borderRadius:BorderRadius.circular(10.0) )),
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(labelText: 'Email',border: OutlineInputBorder(borderRadius:BorderRadius.circular(10.0) )),
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: classSectionController,
                decoration: InputDecoration(labelText: 'Class',border: OutlineInputBorder(borderRadius:BorderRadius.circular(10.0) )),
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: phoneNoController,
                decoration: InputDecoration(labelText: 'Phone No',border: OutlineInputBorder(borderRadius:BorderRadius.circular(10.0) )),
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _createStudent,
                child: Text('Create Student'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
