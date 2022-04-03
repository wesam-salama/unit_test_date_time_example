import 'package:flutter/material.dart';
import 'package:unit_test_date_time_example/utils/date_time_helper.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/${DateTimeHelper.instance.getTimeOfTheDay(DateTime.now())}.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height - 80,),
            Center(
              child: Text(
                'Good ${DateTimeHelper.instance.getTimeOfTheDay(DateTime.now())}',
                style: const TextStyle(
                  fontSize: 33,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
