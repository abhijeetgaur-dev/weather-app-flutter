import 'package:flutter/material.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Weather App',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: () {
              print('refresh');
            },
            child: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: Column(
        children: [
          //main card
          Card(child: Column(children: [Text('300 K')])),
          const SizedBox(height: 20),
          //weather forecast card
          const Placeholder(fallbackHeight: 150),
          const SizedBox(height: 20),
          //additional information
          const Placeholder(fallbackHeight: 150),
        ],
      ),
    );
  }
}
