import 'package:flutter/material.dart';
import 'package:rhythmbox/widgets/custom_app_bar.dart';
import 'package:rhythmbox/screens/sequences/sequence_widgets.dart';

class SequenceSpecificationScreen extends StatefulWidget {
  const SequenceSpecificationScreen({super.key});

  @override
  _SequenceSpecificationScreenState createState() => _SequenceSpecificationScreenState();
}

class _SequenceSpecificationScreenState extends State<SequenceSpecificationScreen> {
  final TextEditingController _nameController = TextEditingController();
  String? _countIn = 'Yes';
  double _volume = 50.0;
  final TextEditingController _bpmController = TextEditingController();
  final TextEditingController _loopCountController = TextEditingController();

  final List<Map<String, dynamic>> meters = [
    {'meter': 'Ελληνικά - Παλιό Ζεϊμπέκικο', 'volume': 100, 'loopCount': 4},
    {'meter': 'Ελληνικά - Νέο Ζεϊμπέκικο', 'volume': 100, 'loopCount': 4},
    // Add more items here as needed
  ];

  @override
  void initState() {
    super.initState();
    _nameController.text = 'Το Ζεϊμπέκικο της Ευδοκίας';
    _bpmController.text = '110';
    _loopCountController.text = '1';
  }

  void _showEditDialog(int index) {
    TextEditingController meterController = TextEditingController(text: meters[index]['meter']);
    TextEditingController volumeController = TextEditingController(text: meters[index]['volume'].toString());
    TextEditingController loopCountController = TextEditingController(text: meters[index]['loopCount'].toString());

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Sequence Segment Specification'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              DropdownButtonFormField<String>(
                value: meters[index]['meter'],
                items: ['Ελληνικά - Παλιό Ζεϊμπέκικο', 'Ελληνικά - Νέο Ζεϊμπέκικο']
                    .map((String value) => DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                ))
                    .toList(),
                onChanged: (newValue) {
                  setState(() {
                    meters[index]['meter'] = newValue!;
                  });
                },
                decoration: const InputDecoration(
                  labelText: 'Meter',
                ),
              ),
              TextField(
                controller: volumeController,
                decoration: const InputDecoration(
                  labelText: 'Volume (0-100%)',
                ),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: loopCountController,
                decoration: const InputDecoration(
                  labelText: 'Loops (0-100)',
                ),
                keyboardType: TextInputType.number,
              ),
            ],
          ),
          actions: <Widget>[
            ElevatedButton(
              child: const Text('OK'),
              onPressed: () {
                setState(() {
                  meters[index]['meter'] = meterController.text;
                  meters[index]['volume'] = int.parse(volumeController.text);
                  meters[index]['loopCount'] = int.parse(loopCountController.text);
                });
                Navigator.of(context).pop();
              },
            ),
            ElevatedButton(
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Sequence Specification'),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SequenceNameField(controller: _nameController),
            const SizedBox(height: 16),
            CountInDropdown(
              value: _countIn,
              onChanged: (newValue) {
                setState(() {
                  _countIn = newValue;
                });
              },
            ),
            const SizedBox(height: 16),
            VolumeSlider(
              value: _volume,
              onChanged: (value) {
                setState(() {
                  _volume = value;
                });
              },
            ),
            const SizedBox(height: 16),
            BpmField(controller: _bpmController),
            const SizedBox(height: 16),
            LoopCountField(controller: _loopCountController),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: meters.length,
                itemBuilder: (context, index) {
                  return MeterListTile(
                    index: index,
                    meter: meters[index],
                    onEdit: _showEditDialog,
                    onDelete: (index) {
                      setState(() {
                        meters.removeAt(index);
                      });
                    },
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
                  child: const Text('Play'),
                ),
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
