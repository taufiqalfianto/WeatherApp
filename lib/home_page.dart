import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:weather/login_page.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _weatherData = '';
  @override
  void initState() {
    super.initState();
    _fetchWeatherData();
  }

  Future<void> _fetchWeatherData() async {
    final response = await http.get(
      Uri.parse(
          'https://api.openweathermap.org/data/2.5/weather?q=tangerang&units=metric&appid=7bbc9ad65116317352d47cfb16cc7853'),
    );
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      DateTime now = DateTime.now();
      String formatdate = DateFormat.yMMMEd().format(now);
      setState(() {
        _weatherData =
            'Today is ${formatdate}, weather in ${jsonData['name']}  and the weather is ${jsonData['weather'][0]['description']} with a temperature of ${jsonData['main']['temp']}°C';
      });
    } else {
      setState(() {
        _weatherData = 'Failed to load weather data';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome to Weather Apps!',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                _weatherData,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  wordSpacing: 5,
                ),
              ),
              SizedBox(
                height: 24,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
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
                      'Logout',
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
      ),
    );
  }
}
