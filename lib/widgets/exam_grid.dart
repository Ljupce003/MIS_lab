import 'package:flutter/material.dart';
import 'package:lab1/models/exam_model.dart';
import 'package:lab1/widgets/exam_card.dart';

class ExamGrid extends StatelessWidget{

  final List<ExamModel> exams;

  const ExamGrid({super.key, required this.exams});

  @override
  Widget build(BuildContext context) {

    return ListView.separated(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => ExamCard(exam: exams[index]),
      separatorBuilder: (context, index) => SizedBox(height: 5),
      itemCount: exams.length,
    );

  }


}