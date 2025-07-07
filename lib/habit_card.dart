
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HabitCard extends StatefulWidget {
  final String title;
  const HabitCard({required this.title});

  @override
  _HabitCardState createState() => _HabitCardState();
}

class _HabitCardState extends State<HabitCard> {
  bool isCompleted = false;
  double progress = 0.0;

  void completeHabit() {
    setState(() {
      isCompleted = true;
      progress = 1.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: completeHabit,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 600),
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: isCompleted ? Colors.green[100] : Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [BoxShadow(color: Colors.grey.shade300, blurRadius: 8)],
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                widget.title,
                style: TextStyle(fontSize: 20),
              ),
            ),
            isCompleted
                ? Lottie.asset('assets/success.json', width: 50, height: 50)
                : Icon(Icons.check_circle_outline, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}
