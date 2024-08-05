import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rhythmbox/widgets/custom_app_bar.dart';

class SequenceListScreen extends StatelessWidget {
  final List<String> sequences = ['Το Ζεϊμπέκικο της Ευδοκίας'];

  SequenceListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Sequence List'),
      body: ListView.builder(
        itemCount: sequences.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Text('${index + 1}'),
            title: Text(sequences[index]),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: const Icon(Icons.edit),
                  onPressed: () {
                    context.go('/sequence_specification');
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
          context.go('/sequence_specification');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
