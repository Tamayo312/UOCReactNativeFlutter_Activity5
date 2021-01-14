import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';

class CopyTextField extends StatelessWidget {
  const CopyTextField({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _controller =
        TextEditingController(text: 'Lorem ipsum dolor');
    return Row(
      children: [
        Expanded(
          child: Semantics(
            hint: "Use the copy button to copy the text inside this form.",
            value: "Lorem ipsum dolor",
            child: ExcludeSemantics(
              child: TextField(
                decoration: InputDecoration(hintText: "Now copy that text!"),
                controller: _controller,
                autocorrect: false,
              ),
            ),
          ),
        ),
        Semantics(
          label: "Copy button.",
          hint: "Double tap to copy the text inside the form.",
          child: ExcludeSemantics(
            child: IconButton(
              icon: Icon(Icons.content_copy),
              onPressed: () {
                FlutterClipboard.copy(_controller.text);
                _controller.text = "";
              },
            ),
          ),
        )
      ],
    );
  }
}
