import 'package:flutter/material.dart';
import 'login.dart';
import 'auth_services.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile Page")),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Login()),
              );
            },
            child: Text("Select Image"),
          ),
          Card(
            child: ListTile(
              title: Text("Name"),
              subtitle: Text("Halimah Abubakar"),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Email:"),
              subtitle: Text("halimah@com.ng"),
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
