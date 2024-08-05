import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rhythmbox/widgets/custom_app_bar.dart';

class BeatAccentListScreen extends StatelessWidget {
  final List<String> beatAccents = [
    'Silent',
    'Count-in',
    'Weaker',
    'Weak',
    'Medium',
    'Strong',
    'Stronger',
  ];

  BeatAccentListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Beat Accent List'),
      body: ListView.builder(
        itemCount: beatAccents.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Text('${index + 1}'),
            title: Text(beatAccents[index]),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: const Icon(Icons.edit),
                  onPressed: () {
                    context.go('/beat_accent_specification');
                  },
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
        onPressed: () {
          context.go('/beat_accent_specification');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
