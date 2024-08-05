import 'package:flutter/material.dart';

import '../widgets/custom_app_bar.dart';

class MeterListScreen extends StatelessWidget {
  final List<String> meters = [
    'Ελληνικά - Αργιλαμάς (9/8)',
    'Ελληνικά - Καμηλιέρικο (9/8)',
    // Add more items here
  ];

  MeterListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Meter List',
      ),
      body: ListView.builder(
        itemCount: meters.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Text('${index + 1}'),
            title: Text(meters[index]),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: const Icon(Icons.edit),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.play_arrow),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: () {},
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
