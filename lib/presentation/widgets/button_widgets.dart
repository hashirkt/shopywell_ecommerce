import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  const ButtonWidget({
    super.key, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Theme.of(context).primaryColor,
      ),
      child: Center(
        child: Text(
          text,
          style: Theme.of(context).textTheme.labelLarge,
        ),
      ),
    );
  }
}