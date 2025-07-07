
import 'package:flutter/material.dart';
import 'habit_card.dart';

void main() {
  runApp(HabitTrackerApp());
}

class HabitTrackerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Habit Tracker',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HabitListScreen(),
    );
  }
}

class HabitListScreen extends StatelessWidget {
  final List<String> habits = ['Meditation', 'Exercise', 'Reading', 'Water'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Daily Habits')),
      body: ListView.builder(
        itemCount: habits.length,
        itemBuilder: (context, index) {
          return HabitCard(title: habits[index]);
        },
      ),
    );
  }
}
