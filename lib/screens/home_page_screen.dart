import 'package:flutter/material.dart';
import 'package:lab1/models/exam_model.dart';
import 'package:lab1/widgets/exam_grid.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late List<ExamModel> exams;

  @override
  void initState() {
    super.initState();

    exams = [
      ExamModel("Data Structures", DateTime(2026, 1, 10, 9, 0), [
        "Room 101",
        "Room 102",
      ]),
      ExamModel("Algorithms", DateTime(2025, 1, 13, 14, 0), [
        "Room 201",
        "Room 203",
      ]),
      ExamModel("Database Systems", DateTime(2026, 1, 15, 10, 0), [
        "Lab A",
        "Lab B",
      ]),
      ExamModel("Operating Systems", DateTime(2025, 1, 17, 9, 0), ["Room 105"]),
      ExamModel("Computer Networks", DateTime.now().add(Duration(minutes: 15)), [
        "Room 207",
        "Room 208",
      ]),
      ExamModel("Artificial Intelligence", DateTime(2025, 1, 22, 9, 0), [
        "Room 110",
      ]),
      ExamModel("Machine Learning", DateTime(2025, 1, 25, 11, 0), ["Lab C"]),
      ExamModel("Software Engineering", DateTime(2025, 1, 27, 10, 0), [
        "Room 202",
        "Room 204",
      ]),
      ExamModel("Web Development", DateTime(2025, 1, 29, 15, 0), ["Lab D"]),
      ExamModel("Computer Architecture", DateTime(2025, 2, 2, 9, 0), [
        "Room 301",
      ]),
      ExamModel("Cyber Security", DateTime(2025, 2, 4, 14, 0), ["Room 107"]),
      ExamModel("Compiler Design", DateTime(2025, 2, 6, 10, 30), ["Room 206"]),
      ExamModel("Human-Computer Interaction", DateTime(2025, 2, 8, 9, 0), [
        "Lab UX1",
      ]),
      ExamModel("Parallel Computing", DateTime(2025, 2, 10, 13, 0), [
        "Room 309",
      ]),
      ExamModel("Cloud Computing", DateTime(2025, 2, 12, 11, 0), [
        "Room 401",
        "Room 402",
      ]),
    ];

    exams.sort((e1, e2) => e1.dateTime.compareTo(e2.dateTime));

    //
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text("Распоред за испити - 221563", textAlign: TextAlign.center),
        centerTitle: true,
      ),
      body: Center(
        child: ListView(
          children: [
            ExamGrid(exams: exams),
            SizedBox(height: 10),

            Container(
              padding: EdgeInsetsGeometry.symmetric(horizontal: 15, vertical: 0,),
              alignment: Alignment.centerRight,
              child: Badge(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                label: Text("${exams.length}", style: TextStyle(fontSize: 18)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
