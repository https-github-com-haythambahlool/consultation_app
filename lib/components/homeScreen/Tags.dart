import 'package:consultation_app/model/TagsModel.dart';
import 'package:flutter/material.dart';
import 'package:material_tag_editor/tag_editor.dart';

class Tags extends StatelessWidget {
  Tags({
    super.key,
    required this.tags,
  });
  List<TagModel> tags;
  List tag = [];
  Set nTags = {};
  @override
  Widget build(BuildContext context) {
    for (var tag in tags) {
      nTags.add(tag.name);
    }
    for (var ntag in nTags) {
      tag.add(ntag);
    }
    return TagEditor(
        minTextFieldWidth: 0,
        length: tag.length,
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
              '${tag[index]}',
              style: TextStyle(
                fontSize: 17,
                color: Colors.grey[700],
              ),
            ),
          );
        });
  }
}
