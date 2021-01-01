import 'package:flutter/material.dart';
import 'package:what_todo/main.dart';

class TaskCardWidget extends StatelessWidget {
  final String title;
  final String desc;

  TaskCardWidget({this.title, this.desc});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        vertical: 32.0,
        horizontal: 24.0,
      ),
      margin: EdgeInsets.only(
        bottom: 20.0,
      ),
      decoration: BoxDecoration(
        color: darkMode ? Color(0xFF3450A1): Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title ?? "(Unnamed Task)",
            style: TextStyle(
              color: darkMode ? Color(0xFFFAF9FA): Color(0xFF211551),
              fontWeight: FontWeight.bold,
              fontSize: 20,
              letterSpacing: .2,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 10.0,
            ),
            child: Text(
              desc ?? "No Description Added",
              style: TextStyle(
                fontSize: 16,
                color: darkMode ? Color(0xFF7793E0): Color(0xFF86829D),
                height: 1.5,
                fontWeight: FontWeight.w500,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class TodoWidget extends StatelessWidget {
  final String text;
  final bool isDone;

  TodoWidget({this.text, @required this.isDone});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.0,
        vertical: 8.0,
      ),
      child: Row(
        children: [
          Container(
            width: 20.0,
            height: 20.0,
            margin: EdgeInsets.only(
              right: 12.0,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              border: isDone ? null : Border.all(
                color: darkMode ? Color(0xFF7349FE): Color(0xFF86829D),
                width: 1.5,
              ),
              color: isDone ? Color(0xFF7349FE) : Colors.transparent,
            ),
            child: Icon (
              Icons.check,
              color:  isDone ? Color( 0xFFFAF9FA) : Colors.transparent,
              size: 15,
            ),
          ),

          Flexible(
            child: Text(
              text ?? "(Unnamed Todo)",

              style: TextStyle(
                color: darkMode ? isDone ? Color(0xFF9AA1B4) : Color(0xFFFAF9FA): isDone ? Color(0xFF86829D): Color(0xFF211551),
                fontSize: 16,
                fontWeight: isDone ?FontWeight.w500 : FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NoGlowBehaviour extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
    BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}