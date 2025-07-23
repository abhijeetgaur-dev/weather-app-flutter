import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:weather_app/hourly_forecast_item.dart';
import 'package:weather_app/weather_info.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //main card
            SizedBox(
              width: double.infinity,
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Text(
                            '300 K',
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 20),
                          Icon(Icons.cloud, size: 64),
                          const SizedBox(height: 20),
                          Text('Rain', style: TextStyle(fontSize: 20)),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            //weather forecast card
            Text(
              'Weather Forecast',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  HourlyForecastItem(
                    time: "09:10",
                    temperature: "300K",
                    icon: Icons.cloud,
                  ),
                  HourlyForecastItem(
                    time: "10:30",
                    temperature: "290K",
                    icon: Icons.cloud,
                  ),
                  HourlyForecastItem(
                    time: "02:40",
                    temperature: "280K",
                    icon: Icons.sunny,
                  ),
                  HourlyForecastItem(
                    time: "10:10",
                    temperature: "270K",
                    icon: Icons.cloud,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            //additional information
            Text(
              'Additional Information',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                WeatherInfo(
                  icon: Icons.water_drop,
                  label: 'Wind Speed',
                  value: '7.5',
                ),
                WeatherInfo(icon: Icons.air, label: 'Humidity', value: '91'),
                WeatherInfo(
                  icon: Icons.beach_access,
                  label: 'Pressure',
                  value: '1014',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
