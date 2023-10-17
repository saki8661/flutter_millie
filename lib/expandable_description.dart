import 'package:flutter/material.dart';

class ExpandableDescription extends StatefulWidget {
  final String title;
  final String description;

  ExpandableDescription({required this.title, required this.description});

  @override
  State<ExpandableDescription> createState() => _ExpandableDescriptionState();
}

class _ExpandableDescriptionState extends State<ExpandableDescription> {
  bool isExpanded = false;

  void toggleDescription() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(widget.title),
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(16.0),
          child: Text(
            widget.description,
            style: TextStyle(fontSize: 16.0),
          ),
        ),
      ],
      initiallyExpanded: isExpanded,
      onExpansionChanged: (bool expanding) {
        toggleDescription();
      },
    );
  }
}
