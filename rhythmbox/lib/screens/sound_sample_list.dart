import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rhythmbox/widgets/custom_app_bar.dart';

class SoundSampleListScreen extends StatelessWidget {
  final List<String> soundSamples = [
    'Silence',
    'Mixkit/Bell Ding',
    'Mixkit/Cowbell Sharp Hit',
    // Add more items here
  ];

  SoundSampleListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Sound Sample List'),
      body: ListView.builder(
        itemCount: soundSamples.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Text('${index + 1}'),
            title: Text(soundSamples[index]),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: const Icon(Icons.edit),
                  onPressed: () {
                    context.go('/sound_sample_specification');
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
          context.go('/sound_sample_specification');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
