import 'package:flutter/material.dart';

class ExerciseTile extends StatelessWidget {
  final Color iconColor;
  final IconData icon;
  final String exerciseName;
  final int numberOfExercises;

  const ExerciseTile(
      {super.key,
      required this.iconColor,
      required this.icon,
      required this.exerciseName,
      required this.numberOfExercises});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(30)),
        child: ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Container(
                color: iconColor,
                padding: EdgeInsets.all(16),
                child: Icon(
                  icon,
                  color: Colors.white,
                )),
          ),
          title: Text(
            exerciseName,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          subtitle: Text("$numberOfExercises Exercises",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.grey)),
        ),
      ),
    );
  }
}
