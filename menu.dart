import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: MyAppBar(),
        body: Center(
          child: Text("App Content"),
        ),
      ),
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("My App"),
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () {
          // Show the menu options
          showMenu(context, onSelected: (value) {  }, context: null);
        },
      ),
    );
  }

  void showMenu(BuildContext context, {required Null Function(dynamic value) onSelected, required BuildContext context}) {
    final RenderBox appBarRenderBox = context.findRenderObject() as RenderBox;
    final offset = Offset(
      appBarRenderBox.size.width,
      appBarRenderBox.size.height,
    );
    
    // Display the PopupMenuButton
    showMenu(
      context: context,
      position: RelativeRect.fromRect(
        offset & Size(40, 40), // Adjust the size as needed
        Offset.zero & appBarRenderBox.size,
      ),
      items: [
        PopupMenuItem(
          child: Text("Dashboard"),
          value: "dashboard",
        ),
        PopupMenuItem(
          child: Text("Create Class"),
          value: "create_class",
        ),
        PopupMenuItem(
          child: Text("Add Faculty"),
          value: "add_faculty",
        ),
        PopupMenuItem(
          child: Text("Attendance"),
          value: "attendance",
        ),
        PopupMenuItem(
          child: Text("Absenties"),
          value: "absenties",
        ),
      ],
      onSelected: (value) {
        // Handle menu item selection
        print("Selected: $value");
      },
    );
  }
}