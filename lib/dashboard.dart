import 'package:flutter/material.dart';
import 'booking.dart';
import 'consult.dart';
import 'medicine.dart';
import 'contact_us.dart';
import 'profile.dart';
import 'database_service.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  static final DatabaseService _databaseService = DatabaseService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quick Consult'),
        actions: [
          IconButton(
            icon: const Icon(Icons.account_circle),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Profile()),
              );
            },
          ),
        ],
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          GestureDetector(
            onTap: () async {
              print("Sending data to Firebase silently...");

              await _databaseService.create(
                path: 'app_services/service_001',
                data: {
                  'name': 'General Consultation',
                  'type': 'service',
                  'price': 50,
                  'description': 'General health checkup session',
                },
              );

              print("Firebase data created successfully!");

              if (context.mounted) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Consult()),
                );
              }
            },
            child: const Card(
              child: ListTile(
                leading: Icon(Icons.local_hospital),
                title: Text('Consult a doctor'),
              ),
            ),
          ),

          // 2. Booking Card
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Booking()),
            ),
            child: const Card(
              child: ListTile(
                leading: Icon(Icons.book_online),
                title: Text('Book an appointment'),
              ),
            ),
          ),

          // 3. Medicine Card
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Medicine()),
            ),
            child: const Card(
              child: ListTile(
                leading: Icon(Icons.local_pharmacy),
                title: Text('Order medicine online'),
              ),
            ),
          ),

          // 4. Contact Us Card
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ContactUs()),
            ),
            child: const Card(
              child: ListTile(
                leading: Icon(Icons.contact_mail),
                title: Text('Contact Us'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
