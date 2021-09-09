import 'package:flutter/foundation.dart';

class PickForYou {
  final String id;
  final String title;
  final String duration;
  final String category;
  final String imageUrl;
  const PickForYou({
    @required this.id,
    @required this.title,
    this.category,
    @required this.imageUrl,
    this.duration,
  });
}
