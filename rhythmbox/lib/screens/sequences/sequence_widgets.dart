import 'package:flutter/material.dart';
import 'package:rhythmbox/theme.dart';

class SequenceNameField extends StatelessWidget {
  final TextEditingController controller;

  const SequenceNameField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Name:', style: headerTextStyle()),
        TextField(
          controller: controller,
          decoration: const InputDecoration(
            hintText: 'Enter sequence name',
          ),
        ),
      ],
    );
  }
}

class CountInDropdown extends StatelessWidget {
  final String? value;
  final Function(String?) onChanged;

  const CountInDropdown({super.key, required this.value, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Count-In:', style: headerTextStyle()),
        DropdownButton<String>(
          value: value,
          isExpanded: true,
          items: ['Yes', 'No'].map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: onChanged,
        ),
      ],
    );
  }
}

class VolumeSlider extends StatelessWidget {
  final double value;
  final Function(double) onChanged;

  const VolumeSlider({super.key, required this.value, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Volume:', style: headerTextStyle()),
        Slider(
          value: value,
          min: 0,
          max: 100,
          divisions: 100,
          label: value.round().toString(),
          onChanged: onChanged,
        ),
      ],
    );
  }
}

class BpmField extends StatelessWidget {
  final TextEditingController controller;

  const BpmField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('BPM:', style: headerTextStyle()),
        TextField(
          controller: controller,
          decoration: const InputDecoration(
            hintText: 'Enter BPM',
          ),
          keyboardType: TextInputType.number,
        ),
      ],
    );
  }
}

class LoopCountField extends StatelessWidget {
  final TextEditingController controller;

  const LoopCountField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Loop Count:', style: headerTextStyle()),
        TextField(
          controller: controller,
          decoration: const InputDecoration(
            hintText: 'Enter loop count',
          ),
          keyboardType: TextInputType.number,
        ),
      ],
    );
  }
}

class MeterListTile extends StatelessWidget {
  final int index;
  final Map<String, dynamic> meter;
  final Function(int) onEdit;
  final Function(int) onDelete;

  const MeterListTile({super.key,
    required this.index,
    required this.meter,
    required this.onEdit,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text('${index + 1}'),
      title: Text(meter['meter']),
      subtitle: Text('Volume: ${meter['volume']}% | Loops: ${meter['loopCount']}'),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {
              onEdit(index);
            },
          ),
          IconButton(
            icon: const Icon(Icons.play_arrow),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.arrow_upward),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.arrow_downward),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () {
              onDelete(index);
            },
          ),
        ],
      ),
    );
  }
}
