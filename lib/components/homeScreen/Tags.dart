import 'package:flutter/material.dart';
import 'package:material_tag_editor/tag_editor.dart';

class Tags extends StatelessWidget {
  Tags({
    super.key,
    required this.tags,
  });
  List tags;
  @override
  Widget build(BuildContext context) {
    return TagEditor(
        minTextFieldWidth: 0,
        length: tags.length,
        enabled: false,
        // delimiters: [',', ' '],
        hasAddButton: false,
        inputDecoration: const InputDecoration(
          border: InputBorder.none,
          // hintText: 'Hint Text...',
        ),
        onTagChanged: (newValue) {},
        tagBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.only(bottom: 10, left: 5),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(15),
            ),
            child: Text(
              '${tags[index]}',
              style: TextStyle(
                fontSize: 17,
                color: Colors.grey[700],
              ),
            ),
          );
        });
  }
}
