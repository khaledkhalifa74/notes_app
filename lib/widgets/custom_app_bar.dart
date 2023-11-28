import 'package:flutter/material.dart';
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Notes',
          style: TextStyle(
            fontSize: 28,
          ),
        ),
        const Spacer(),
        IconButton(
            onPressed: (){},
            icon: const Icon(
              Icons.search
            ),
        )
      ],
    );
  }
}
