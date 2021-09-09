import 'package:flutter/material.dart';

class Exercise {
  final String title;
  final List<String> categories;
  final String id;
  final int sets;
  final Duration duration;
  final String url;
  final List<String> Steps;
  final int reps;
  const Exercise({
    @required this.duration,
    @required this.title,
    @required this.id,
    @required this.url,
    @required this.categories,
    @required this.reps,
    @required this.sets,
    @required this.Steps,
  });
}
