import 'package:flutter/material.dart';
import 'login.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile Page")),
      body: Column(
        children: [
          ElevatedButton(onPressed: () {}, child: Text("Select Image")),
          Card(
            child: ListTile(
              title: Text("Name"),
              subtitle: Text("Malam Jamilu"),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Email:"),
              subtitle: Text("admin@idga.com.ng"),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Phone Number"),
              subtitle: Text("08011223344"),
            ),
          ),
          SizedBox(height: 50),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Login()),
              );
            },
            child: Text("Logout"),
          ),
        ],
      ),
    );
  }
}
