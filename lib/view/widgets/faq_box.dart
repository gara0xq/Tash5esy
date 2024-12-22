import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FaqBox extends StatefulWidget {
  FaqBox({
    super.key,
    required this.title,
    required this.data,
  });
  String title, data;

  @override
  State<FaqBox> createState() => _FaqBoxState();
}

class _FaqBoxState extends State<FaqBox> {
  bool visable = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InkWell(
          onTap: () => setState(() => visable = !visable),
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          child: Container(
            height: 60,
            decoration: BoxDecoration(
              color: Colors.blue[100],
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: Text(widget.title)),
                Icon(Icons.keyboard_arrow_down_rounded),
              ],
            ),
          ),
        ),
        visable
            ? Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: Text(
                  widget.data,
                  textAlign: TextAlign.left,
                ),
              )
            : SizedBox(),
      ],
    );
  }
}
