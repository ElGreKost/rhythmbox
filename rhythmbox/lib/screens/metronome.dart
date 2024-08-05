import 'package:flutter/material.dart';
import 'package:rhythmbox/theme.dart';
import 'package:rhythmbox/widgets/custom_app_bar.dart';

class MetronomeScreen extends StatelessWidget {
  const MetronomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Metronome',
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('BPM:', style: headerTextStyle()),
            const TextField(),
            const SizedBox(height: 8),
            Text('Volume:', style: headerTextStyle()),
            Slider(
              value: 0,
              min: 0,
              max: 100,
              divisions: 100,
              label: '0',
              onChanged: (double value) {},
            ),
            const SizedBox(height: 8),
            Text('Sound:', style: headerTextStyle()),
            DropdownButton<String>(
              items: ['Mixkit/Tap1', 'Mixkit/Tap2']
                  .map((String value) => DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              ))
                  .toList(),
              onChanged: (_) {},
            ),
            const SizedBox(height: 16),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                child: const Icon(Icons.play_arrow),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
