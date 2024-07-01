import 'package:flutter/material.dart';
import 'package:weather/home_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final name = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/weather-icon-with-rain-cloud-with-water-drops.webp',
              scale: 32,
            ),
            SizedBox(
              height: 14,
            ),
            TextFormField(
              controller: name,
              decoration: InputDecoration(
                hintText: 'Username',
                label: Text('Username'),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 14,
            ),
            TextFormField(
              controller: password,
              decoration: InputDecoration(
                hintText: 'Password',
                label: Text('Password'),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
              ),
            ),
            SizedBox(height: 24),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.amber,
                ),
                width: double.infinity,
                height: 56,
                child: Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
