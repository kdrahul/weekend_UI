import 'package:flutter/material.dart';

class PerSubjectMarks {
  int iaMarks;
  int externalMarks;
  int semId;
  PerSubjectMarks(
      {@required this.semId,
      @required this.iaMarks,
      @required this.externalMarks});
}

List<PerSubjectMarks> allSemMarks = [
  PerSubjectMarks(semId: 1, iaMarks: 10, externalMarks: 40),
  PerSubjectMarks(semId: 1, iaMarks: 20, externalMarks: 40),
  PerSubjectMarks(semId: 4, iaMarks: 20, externalMarks: 21),
];

class PreviousYearMarks extends StatelessWidget {
  const PreviousYearMarks({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
