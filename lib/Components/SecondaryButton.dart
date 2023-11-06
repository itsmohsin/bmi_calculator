import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  final VoidCallback onPress;
  final IconData icon;
  const SecondaryButton({super.key, required this.onPress, required this.icon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).colorScheme.primary,
        ),
        child: Icon(
          icon,
          size: 20,
          color: Theme.of(context).colorScheme.primaryContainer,
        ),
      ),
    );
  }
}
