import 'package:flutter/material.dart';
import 'package:rhythmbox/theme.dart';
import 'package:rhythmbox/widgets/custom_app_bar.dart';
import 'package:file_picker/file_picker.dart';

class SoundSampleSpecificationScreen extends StatefulWidget {
  const SoundSampleSpecificationScreen({super.key});

  @override
  _SoundSampleSpecificationScreenState createState() => _SoundSampleSpecificationScreenState();
}

class _SoundSampleSpecificationScreenState extends State<SoundSampleSpecificationScreen> {
  final TextEditingController _nameController = TextEditingController();
  String? _fileName;

  Future<void> _pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['wav', 'mp3', 'ogg'],
    );

    if (result != null) {
      setState(() {
        _fileName = result.files.single.name;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Sound Sample Specification'),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name:', style: headerTextStyle()),
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                hintText: 'Enter sound name',
              ),
            ),
            const SizedBox(height: 16),
            Text('Audio file (wav/mp3/ogg):', style: headerTextStyle()),
            Row(
              children: [
                ElevatedButton(
                  onPressed: _pickFile,
                  child: const Text('Select File'),
                ),
                const SizedBox(width: 16),
                Text(_fileName ?? 'No file selected'),
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
