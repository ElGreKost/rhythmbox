import 'package:flutter/material.dart' show AlertDialog, BuildContext, Color, Colors, Column, Container, CrossAxisAlignment, DropdownButton, DropdownMenuItem, EdgeInsets, ElevatedButton, InputDecoration, MainAxisAlignment, Navigator, Padding, Row, Scaffold, SingleChildScrollView, SizedBox, Slider, Spacer, State, StatefulWidget, Text, TextEditingController, TextField, Widget, showDialog;
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:rhythmbox/theme.dart';
import 'package:rhythmbox/widgets/custom_app_bar.dart';

class BeatAccentSpecificationScreen extends StatefulWidget {
  const BeatAccentSpecificationScreen({super.key});

  @override
  _BeatAccentSpecificationScreenState createState() => _BeatAccentSpecificationScreenState();
}

class _BeatAccentSpecificationScreenState extends State<BeatAccentSpecificationScreen> {
  final TextEditingController _nameController = TextEditingController();
  double _volume = 50.0;
  Color _selectedColor = Colors.grey;
  String? _selectedSoundSample;

  final List<String> soundSamples = [
    'Mixkit/On Off Light Switch Tap',
    'Mixkit/Bell Ding',
    'Mixkit/Cowbell Sharp Hit',
    'Mixkit/Drum Bass Hit',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Beat Accent Specification'),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name:', style: headerTextStyle()),
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                hintText: 'Enter name',
              ),
            ),
            const SizedBox(height: 16),
            Text('Sound Sample:', style: headerTextStyle()),
            DropdownButton<String>(
              value: _selectedSoundSample,
              isExpanded: true,
              hint: const Text('Select a sound sample'),
              items: soundSamples.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (newValue) {
                setState(() {
                  _selectedSoundSample = newValue;
                });
              },
            ),
            const SizedBox(height: 16),
            Text('Volume:', style: headerTextStyle()),
            Slider(
              value: _volume,
              min: 0,
              max: 100,
              divisions: 100,
              label: _volume.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _volume = value;
                });
              },
            ),
            const SizedBox(height: 16),
            Text('Color:', style: headerTextStyle()),
            Row(
              children: [
                Container(
                  width: 24,
                  height: 24,
                  color: _selectedColor,
                ),
                const SizedBox(width: 16),
                ElevatedButton(
                  onPressed: () async {
                    Color? pickedColor = await showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('Pick a color'),
                          content: SingleChildScrollView(
                            child: ColorPicker(
                              pickerColor: _selectedColor,
                              onColorChanged: (Color color) {
                                setState(() {
                                  _selectedColor = color;
                                });
                              },
                            ),
                          ),
                          actions: <Widget>[
                            ElevatedButton(
                              child: const Text('Got it'),
                              onPressed: () {
                                Navigator.of(context).pop(_selectedColor);
                              },
                            ),
                          ],
                        );
                      },
                    );

                    if (pickedColor != null) {
                      setState(() {
                        _selectedColor = pickedColor;
                      });
                    }
                  },
                  child: const Text('Change color'),
                ),
              ],
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  child: const Text('Save (Overwrite)'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  child: const Text('Save New'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
                  child: const Text('Cancel'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
