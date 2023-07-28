import 'package:flutter/material.dart';

class Foods {
  final String id;
  final String title;
  final List<String> locations;
  final double rating;
  final String duration;
  final List<String> ingredients;
  final List<String> directions;
  final int serving;
  final String imageUrl;

  const Foods({
    required this.id,
    required this.title,
    required this.rating,
    required this.serving,
    required this.imageUrl,
    required this.locations,
    required this.duration,
    required this.ingredients,
    required this.directions,
  });
}
