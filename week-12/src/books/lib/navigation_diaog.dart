import 'package:flutter/material.dart';

class NavigationDialogScreen extends StatefulWidget {
  const NavigationDialogScreen({super.key});

  @override
  State<NavigationDialogScreen> createState() => _NavigationDialogScreenState();
}

class _NavigationDialogScreenState extends State<NavigationDialogScreen> {
  Color color = Colors.blue.shade700;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title: const Text('Navigation Dialog Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Change Color'),
          onPressed: () {
            _showColorDialog(context);
          },
        ),
      ),
    );
  }

  _showColorDialog(BuildContext context) async {
    final selectedColor = await showDialog(
        barrierDismissible: false,
        context: context,
        builder: (_) {
          return AlertDialog(
            title: const Text('Very important question'),
            content: const Text('Please choode a color'),
            actions: <Widget>[
              TextButton(
                child: const Text('Red soft'),
                onPressed: () {
                  // color = Colors.red.shade700;
                  Navigator.pop(context, Colors.red.shade300);
                },
              ),
              TextButton(
                child: const Text('Purple'),
                onPressed: () {
                  // color = Colors.green.shade700;
                  Navigator.pop(context, Colors.purple.shade400);
                },
              ),
              TextButton(
                child: const Text('Blue'),
                onPressed: () {
                  // color = Colors.blue.shade700;
                  Navigator.pop(context, Colors.blue.shade700);
                },
              ),
            ],
          );
        });
    if (selectedColor != null) {
      setState(() {
        color = selectedColor;
      });
    }
  }
}
