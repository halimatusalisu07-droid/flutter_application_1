import 'package:flutter/material.dart';
import 'consult.dart';
import 'booking.dart';
import 'medicine.dart';
import 'payment.dart';
import 'contact_us.dart';
import 'profile.dart';

void main() {
  runApp(
    MaterialApp(
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

                class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(), //
    );
  }
}
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
                    MaterialPageRoute(builder: (context) => Consult()),
                  );
                },
                child: Card(
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
    ),
  );
}
