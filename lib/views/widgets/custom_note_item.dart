import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, this.color});
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
      decoration: BoxDecoration(
        color: color,
        //const Color(0xffFFCC80)
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            contentPadding: const EdgeInsets.all(0),
            title: const Text(
              "Flutter Tips",
              style: TextStyle(
                color: Colors.black,
                fontSize: 26,
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text(
                'Build your career woth me',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontSize: 18,
                ),
              ),
            ),
            trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  FontAwesomeIcons.trash,
                  color: Colors.black,
                  size: 24,
                )),
          ),
          Text('may21,2022',
              style:
                  TextStyle(fontSize: 16, color: Colors.black.withOpacity(0.5)))
        ],
      ),
    );
  }
}
