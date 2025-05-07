import 'package:flutter/material.dart';

void main() {
  runApp(ProfileCard());
}

// ignore: use_key_in_widget_constructors
class ProfileCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ProfileCardApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: Profile(),
    );
  }
}

// ignore: use_key_in_widget_constructors
class Profile extends StatelessWidget {
  get children => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile')),
      body: Center(
        child: Container(
          width: 350,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 20,
                offset: Offset(0, 10),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                radius: 48,
                backgroundImage: AssetImage('assets/Images/IMG_1405.JPG'),
              ),

              SizedBox(height: 16),

              Text(
                //Name of Person
                'Shabeer Shah',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),

              //Title
              Text(
                'App developer',
                style: TextStyle(fontSize: 16, color: Colors.grey[600]),
              ),

              SizedBox(height: 20),

              Row(
                children: [
                  Icon(Icons.email, color: Colors.deepPurple),
                  SizedBox(width: 10),
                  Text('shabeershah4777@gmail.com'),
                ],
              ),

              SizedBox(height: 12),

              Row(
                children: [
                  Icon(Icons.phone, color: Colors.deepPurple),
                  SizedBox(width: 10),
                  Text('(+92) 300-1412-777'),
                ],
              ),

              SizedBox(height: 12),

              Row(
                children: [
                  Icon(Icons.location_on, color: Colors.deepPurple),
                  SizedBox(width: 10),
                  Text('Bhakkar, Punjab'),
                ],
              ),

              SizedBox(height: 24),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlinedButton(
                    onPressed: () {
                      print('Message in process');
                    },
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      side: BorderSide(color: Colors.grey.shade300),
                      padding: EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 12,
                      ),
                    ),
                    child: Text(
                      'Message',
                      style: TextStyle(color: Colors.black87),
                    ),
                  ),

                  SizedBox(width: 3),

                  OutlinedButton(
                    onPressed: () {
                      print('Follow Done');
                    },
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      side: BorderSide(color: Colors.deepPurple),
                      padding: EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 12,
                      ),
                    ),
                    child: Text(
                      'Follow',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
