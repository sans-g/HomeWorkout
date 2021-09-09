import 'package:flutter/cupertino.dart';

class Tile {
  final String id;
  final String title;
  final String category;
  final String imageUrl;
  const Tile({
    @required this.category,
    @required this.title,
    @required this.id,
    @required this.imageUrl,
  });
}
