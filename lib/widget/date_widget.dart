import 'package:flutter/material.dart';

class DateWidget extends StatefulWidget {
  final int date;
  final String day;
  final void Function(int) tapHandler;
  final bool isSelected;
  const DateWidget({
    Key? key,
    required this.date,
    required this.day,
    required this.tapHandler,
    required this.isSelected,
  }) : super(key: key);

  @override
  State<DateWidget> createState() => _DateWidgetState();
}

class _DateWidgetState extends State<DateWidget> {
  var selectedDate = 19;

  Color switchColor() {
    if (widget.isSelected) {
      return Colors.black.withOpacity(0.8);
    } else {
      return Colors.grey.withOpacity(0.2);
    }
  }

  Color switchContentColor() {
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
        borderRadius: BorderRadius.circular(30.0),
        color: switchColor(),
      ),
      width: 60.0,
      height: 60.0,
      child: InkWell(
        onTap: () {
          widget.tapHandler(widget.date);
        },
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 7.0),
              Text(
                widget.date.toString(),
                style: TextStyle(
                    fontFamily: 'Nunito',
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                    color: switchContentColor()),
              ),
              Text(
                widget.day,
                style: TextStyle(
                    fontFamily: 'FiraSans',
                    fontSize: 15.0,
                    color: switchContentColor()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
