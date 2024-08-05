import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const CustomAppBar({super.key, required this.title});

  // @override
  // Widget build(BuildContext context) {
  //   return AppBar(
  //     title: Text(title),
  //     backgroundColor: Colors.teal,
  //     actions: [
  //       TextButton(
  //         onPressed: () {
  //           context.go('/');
  //         },
  //         child: const Text('Sound Samples', style: TextStyle(color: Colors.white)),
  //       ),
  //       TextButton(
  //         onPressed: () {
  //           context.go('/metronome');
  //         },
  //         child: const Text('Metronome', style: TextStyle(color: Colors.white)),
  //       ),
  //       TextButton(
  //         onPressed: () {
  //           context.go('/beat_accent_list');
  //         },
  //         child: const Text('Beat Accents', style: TextStyle(color: Colors.white)),
  //       ),
  //       TextButton(
  //         onPressed: () {
  //           context.go('/meter_list');
  //         },
  //         child: const Text('Meters', style: TextStyle(color: Colors.white)),
  //       ),
  //       TextButton(
  //         onPressed: () {
  //           context.go('/sequence_list');
  //         },
  //         child: const Text('Sequences', style: TextStyle(color: Colors.white)),
  //       ),
  //     ],
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      backgroundColor: Colors.teal,
      actions: [
        IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.library_music),
                      title: Text('Sound Samples'),
                      onTap: () {
                        context.go('/');
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.electric_meter_rounded),
                      title: Text('Metronome'),
                      onTap: () {
                        context.go('/metronome');
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.music_note),
                      title: Text('Beat Accents'),
                      onTap: () {
                        context.go('/beat_accent_list');
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.line_weight),
                      title: Text('Meters'),
                      onTap: () {
                        context.go('/meter_list');
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.list),
                      title: Text('Sequences'),
                      onTap: () {
                        context.go('/sequence_list');
                        Navigator.pop(context);
                      },
                    ),
                  ],
                );
              },
            );
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
