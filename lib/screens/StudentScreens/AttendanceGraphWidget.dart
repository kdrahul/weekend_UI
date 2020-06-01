import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:weekend/app_theme.dart';

class AttendanceGraph extends StatelessWidget {
  const AttendanceGraph({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool _isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    Color _textColor = _isDark
        ? AppTheme.darkTheme.accentColor
        : AppTheme.lightTheme.accentColor;

    return Container(
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        child: SingleChildScrollView(
          child: Table(
            children: [
              TableRow(children: [
                TableCell(
                    child: Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 0))),
                TableCell(
                    child: Text("8am", style: TextStyle(color: _textColor))),
                TableCell(
                    child: Text("9am", style: TextStyle(color: _textColor))),
                TableCell(
                    child: Text("10am", style: TextStyle(color: _textColor))),
                TableCell(
                    child: Text("11am", style: TextStyle(color: _textColor))),
                TableCell(
                    child: Text("12pm", style: TextStyle(color: _textColor))),
                TableCell(
                    child: Text("1pm", style: TextStyle(color: _textColor))),
                TableCell(
                    child: Text("2am", style: TextStyle(color: _textColor))),
                TableCell(
                    child: Text("3pm", style: TextStyle(color: _textColor))),
                TableCell(
                    child: Text("4pm", style: TextStyle(color: _textColor))),
              ]),
              TableRow(children: [
                TableCell(
                    child: Text("Mon", style: TextStyle(color: _textColor))),
                absent,
                present,
                absent,
                noClass,
                present,
                present,
                present,
                present,
                absent,
              ]),
              TableRow(children: [
                TableCell(
                    child: Text("Tue", style: TextStyle(color: _textColor))),
                TableCell(child: present),
                noClass,
                present,
                noClass,
                present,
                present,
                present,
                present,
                absent,
              ]),
              TableRow(children: [
                TableCell(
                    child: Text("Wed", style: TextStyle(color: _textColor))),
                present,
                present,
                present,
                noClass,
                absent,
                present,
                present,
                present,
                absent,
              ]),
              TableRow(children: [
                TableCell(
                    child: Text("Thu", style: TextStyle(color: _textColor))),
                noClass,
                noClass,
                noClass,
                present,
                present,
                present,
                noClass,
                noClass,
                noClass,
              ]),
              TableRow(children: [
                TableCell(
                    child: Text("Fri", style: TextStyle(color: _textColor))),
                present,
                present,
                absent,
                noClass,
                present,
                present,
                present,
                absent,
                absent,
              ]),
              TableRow(children: [
                TableCell(
                    child: Text("Sat", style: TextStyle(color: _textColor))),
                present,
                absent,
                present,
                noClass,
                absent,
                noClass,
                present,
                present,
                absent,
              ]),
              TableRow(children: [
                TableCell(
                    child: Text("Mon", style: TextStyle(color: _textColor))),
                absent,
                present,
                absent,
                noClass,
                present,
                present,
                present,
                present,
                absent,
              ]),
              TableRow(children: [
                TableCell(
                    child: Text("Mon", style: TextStyle(color: _textColor))),
                absent,
                present,
                absent,
                noClass,
                present,
                present,
                present,
                present,
                absent,
              ]),
              TableRow(children: [
                TableCell(
                    child: Text("Mon", style: TextStyle(color: _textColor))),
                absent,
                present,
                absent,
                noClass,
                present,
                present,
                present,
                present,
                absent,
              ]),
              TableRow(children: [
                TableCell(
                    child: Text("Mon", style: TextStyle(color: _textColor))),
                absent,
                present,
                absent,
                noClass,
                present,
                present,
                present,
                present,
                absent,
              ]),
              TableRow(children: [
                TableCell(
                    child: Text("Mon", style: TextStyle(color: _textColor))),
                absent,
                present,
                absent,
                noClass,
                present,
                present,
                present,
                present,
                absent,
              ]),
              TableRow(children: [
                TableCell(
                    child: Text("Mon", style: TextStyle(color: _textColor))),
                absent,
                present,
                absent,
                noClass,
                present,
                present,
                present,
                present,
                absent,
              ]),
              TableRow(children: [
                TableCell(
                    child: Text("Mon", style: TextStyle(color: _textColor))),
                absent,
                present,
                absent,
                noClass,
                present,
                present,
                present,
                present,
                absent,
              ]),
              TableRow(children: [
                TableCell(
                    child: Text("Mon", style: TextStyle(color: _textColor))),
                absent,
                present,
                absent,
                noClass,
                present,
                present,
                present,
                present,
                absent,
              ]),
            ],
          ),
        ));
  }
}

class NoClassBoxes extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final rect = Offset(8, 0) & Size(12, 12);
    final painter = Paint()..color = Colors.transparent;
    canvas.drawRect(rect, painter);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => oldDelegate != null;
}

class PresentBoxes extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final rect = Offset(8, 0) & Size(12, 12);
    final painter = Paint()..color = Colors.green;
    canvas.drawRect(rect, painter);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => oldDelegate != null;
}

class AbsentBoxes extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final rect = Offset(8, 0) & Size(12, 12);
    final painter = Paint()..color = Colors.red;
    canvas.drawRect(rect, painter);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => oldDelegate != null;
}

Container present = Container(
    padding: EdgeInsets.symmetric(vertical: 10.0),
    child: CustomPaint(
      painter: PresentBoxes(),
      child: Container(
        padding: EdgeInsets.all(8.0),
      ),
    ));

Container absent = Container(
    padding: EdgeInsets.symmetric(vertical: 10.0),
    child: CustomPaint(
      painter: AbsentBoxes(),
      child: Container(
        padding: EdgeInsets.all(8.0),
      ),
    ));

Container noClass = Container(
    child: CustomPaint(
  painter: NoClassBoxes(),
));
