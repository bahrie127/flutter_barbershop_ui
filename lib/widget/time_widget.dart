import 'package:flutter/material.dart';

class TimeWidget extends StatefulWidget {
  final String time;
  final void Function(String) tapHandler;
  final bool isSelected;
  const TimeWidget({
    Key? key,
    required this.time,
    required this.tapHandler,
    required this.isSelected,
  }) : super(key: key);

  @override
  State<TimeWidget> createState() => _TimeWidgetState();
}

class _TimeWidgetState extends State<TimeWidget> {
  Color switchTimeColor() {
    if (widget.isSelected) {
      return Colors.black.withOpacity(0.8);
    } else {
      return Colors.grey.withOpacity(0.2);
    }
  }

  Color switchTimeContentColor() {
    if (widget.isSelected) {
      return Colors.white;
    } else {
      return Colors.black;
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeIn,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0), color: switchTimeColor()),
      height: 50.0,
      width: 75.0,
      child: InkWell(
        onTap: () {
          widget.tapHandler(widget.time);
        },
        child: Center(
          child: Text(
            widget.time,
            style: TextStyle(
              fontFamily: 'Nunito',
              fontSize: 17.0,
              fontWeight: FontWeight.bold,
              color: switchTimeContentColor(),
            ),
          ),
        ),
      ),
    );
  }
}
