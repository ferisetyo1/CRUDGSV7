import 'package:flutter/material.dart';

class StarRating extends StatelessWidget {
  final int starCount;
  final double rating;
  final double size;
  final Function(double)? onRatingChanged;
  final Color color;

  const StarRating(
      {super.key,
      this.starCount = 5,
      this.rating = .0,
      this.onRatingChanged,
      required this.color,
      this.size = 14});

  Widget buildStar(BuildContext context, int index) {
    Icon icon;
    if (index >= rating) {
      icon = Icon(
        Icons.star_border,
        color: color,
        size: size,
      );
    } else if (index > rating - 1 && index < rating) {
      icon = Icon(
        Icons.star_half,
        color: color,
        size: size,
      );
    } else {
      icon = Icon(
        Icons.star,
        color: color,
        size: size,
      );
    }
    return InkResponse(
      onTap: onRatingChanged == null
          ? null
          : () => onRatingChanged?.call(index + 1.0),
      child: icon,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
        children:
            List.generate(starCount, (index) => buildStar(context, index)));
  }
}
