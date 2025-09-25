import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  bool isChecked = true;
  DateFormat date = DateFormat('d MMM');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF4044C9),
      body: Column(
        children: [
          SizedBox(height: 40),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Today",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '  6 Tasks',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 50,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(70)),
                          ),
                          child: Center(
                            child: Text(
                              "Add Task",
                              style: TextStyle(
                                color: Color(0xFF4044C9),
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
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
              child: ListView.builder(
                itemCount: 6,
                itemBuilder: (BuildContext context, int index) {
                  if (index == 0) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(width: 10),
                        DayNameBuilder(dayName: "MON"),
                        DayNameBuilder(dayName: "TUE"),
                        DayNameBuilder(dayName: "WED"),
                        DayNameBuilder(dayName: "THU"),
                        DayNameBuilder(dayName: "FIR"),
                        DayNameBuilder(dayName: "SAT"),
                        DayNameBuilder(dayName: "SUN"),
                        SizedBox(width: 5),
                      ],
                    );
                  }
                  return Padding(
                    padding: const EdgeInsets.only(
                      left: 30,
                      right: 20,
                      top: 10,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${(index).toString()}. Lets Make Tutorial Video',
                                ),
                                Text(
                                  'Feb 10, 2021__Priority High',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                            Transform.scale(
                              scale:
                                  1.3, // Adjust this value for your preferred size (1.0 is default)
                              child: Checkbox(
                                value: isChecked,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked = value ?? false;
                                  });
                                },
                                fillColor: WidgetStateProperty.resolveWith((
                                  states,
                                ) {
                                  if (states.contains(WidgetState.selected)) {
                                    return const Color.fromARGB(
                                      255,
                                      42,
                                      164,
                                      48,
                                    );
                                  }
                                  return const Color.fromARGB(
                                    255,
                                    255,
                                    255,
                                    255,
                                  );
                                }),
                                checkColor: Colors.white,
                                side: const BorderSide(
                                  color: Color.fromARGB(255, 143, 106, 106),
                                  width: 2.0,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DayNameBuilder extends StatelessWidget {
  DayNameBuilder({required this.dayName});
  final String dayName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: Color(0xFF4044C9),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Center(
          child: Text(
            '$dayName\n Day',
            style: TextStyle(
              color: Colors.white,
              fontSize: 10,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
