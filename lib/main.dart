import 'package:flutter/material.dart';

void main() {
  runApp(const PointsCounter());
}

class PointsCounter extends StatefulWidget {
  const PointsCounter({super.key});

  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamAPoints = 0;

  int teamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text("Points Counter"),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      "Team A",
                      style: TextStyle(
                        fontSize: 38,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "$teamAPoints",
                      style: const TextStyle(
                        fontSize: 130,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                      ),
                      onPressed: () {
                        setState(() {
                          teamAPoints++;
                        });
                      },
                      child: const Text(
                        "Add 1 Point",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                      ),
                      onPressed: () {
                        setState(() {
                          teamAPoints = teamAPoints + 2;
                        });
                      },
                      child: const Text(
                        "Add 2 Point",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                      ),
                      onPressed: () {
                        setState(() {
                          teamAPoints = teamAPoints + 3;
                        });
                      },
                      child: const Text(
                        "Add 3 Point",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 500,
                  child: const VerticalDivider(
                    indent: 50,
                    thickness: 2,
                  ),
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      "Team B",
                      style: TextStyle(
                        fontSize: 38,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "$teamBPoints",
                      style: const TextStyle(
                        fontSize: 130,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                      ),
                      onPressed: () {
                        setState(() {
                          teamBPoints++;
                        });
                      },
                      child: const Text(
                        "Add 1 Point",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                      ),
                      onPressed: () {
                        setState(() {
                          teamBPoints = teamBPoints + 2;
                        });
                      },
                      child: const Text(
                        "Add 2 Point",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                      ),
                      onPressed: () {
                        setState(() {
                          teamBPoints = teamBPoints + 3;
                        });
                      },
                      child: const Text(
                        "Add 3 Point",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                minimumSize: const Size(140, 40),
              ),
              onPressed: () {
                setState(() {
                  teamAPoints = 0;
                  teamBPoints = 0;
                });
              },
              child: const Text(
                "Reset",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
