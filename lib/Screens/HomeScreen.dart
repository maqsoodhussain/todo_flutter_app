import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  DateFormat date = DateFormat('d MMM');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF4044C9),
      body: Column(
        children: [
          SizedBox(height: 20),
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                color: Color(0xFF4044C9),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.blur_on, color: Colors.white, size: 40),
                        Text(
                          date.format(DateTime.now()),
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        Icon(Icons.alarm, color: Colors.white, size: 40),
                      ],
                    ),
                    SizedBox(height: 50),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Today",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                              ),
                            ),
                            Text(
                              date.format(DateTime.now()),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 8,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(70)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
