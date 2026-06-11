import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';
import 'auth_services.dart';
// Removed import of nonexistent file 'library/register_page.dart'
// If you need a register page, add the file and import it here.

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: Text('Quick Consult'),
            backgroundColor: Colors.blue,
          ),
          body: ListView(
            padding: EdgeInsets.all(20),
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Consult()),
                  );
                },

                child: Card(
                  color: Colors.lightBlue[50],
                  child: ListTile(
                    leading: Icon(Icons.local_hospital),
                    title: Text(
                      'Consult a doctor',
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text('Get quick advice from a doctor'),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Booking()),
                  );
                },
                child: Card(
                  color: Colors.lightBlue[50],
                  child: ListTile(
                    leading: Icon(Icons.book_online),
                    title: Text(
                      'Book an appointment',
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text('Book an appointment with a doctor'),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Medicine()),
                  );
                },
                child: Card(
                  color: Colors.lightBlue[50],
                  child: ListTile(
                    leading: Icon(Icons.local_pharmacy),
                    title: Text(
                      'Order medicine online',
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text('Order medicine online'),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Payment()),
                  );
                },
                child: Card(
                  color: Colors.lightBlue[50],
                  child: ListTile(
                    leading: Icon(Icons.payment),
                    title: Text(
                      'Pay hospital bills online',
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text('Pay hospital bills online'),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ContactUs()),
                  );
                },
                child: Card(
                  color: Colors.lightBlue[50],
                  child: ListTile(
                    leading: Icon(Icons.contact_mail),
                    title: Text(
                      'Contact Us for more information',
                      style: TextStyle(
                        color: Colors.orange,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text('Contact Us for more information'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Consult extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Consult a doctor')),
      body: Center(child: Text('Consult page content goes here.')),
    );
  }
}

class Booking extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Book an appointment')),
      body: Center(child: Text('Booking page content goes here.')),
    );
  }
}

class Medicine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Order medicine online')),
      body: Center(child: Text('Medicine page content goes here.')),
    );
  }
}

class Payment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pay hospital bills online')),
      body: Center(child: Text('Payment page content goes here.')),
    );
  }
}

class ContactUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contact Us')),
      body: Center(child: Text('Contact information page content goes here.')),
    );
  }
}
