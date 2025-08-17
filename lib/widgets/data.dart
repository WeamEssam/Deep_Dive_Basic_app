import 'package:basics_app/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class DataWidget extends StatefulWidget {
  const DataWidget({
    super.key,
    required this.appBarColor,
    required this.onColorChanged,
  });
  final Color appBarColor;
  final Function(Color) onColorChanged;
  @override
  State<DataWidget> createState() => _DataWidgetState();
}

class _DataWidgetState extends State<DataWidget> {
  double value = 0;
  Color color = Colors.red;
  Color textColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(child: Container(width: 100, height: 100, color: color)),
          Slider(
            activeColor: color,
            min: 0,
            max: 100,
            value: value,
            onChanged: (newValue) {
              setState(() {
                value = newValue;
              });
            },
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    color = Colors.red;
                    textColor = Colors.red;
                  });
                  widget.onColorChanged(Colors.red);
                },
                child: Text('Red'),
              ),
              Padding(padding: const EdgeInsets.only(left: 16)),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    color = Colors.green;
                    textColor = Colors.green;
                  });
                  widget.onColorChanged(Colors.green);
                },
                child: Text('Green'),
              ),
            ],
          ),

          CustomText(title: 'weam', textColor: textColor),
          CustomText(title: 'essam', textColor: textColor),
          CustomText(title: 'mohamed', textColor: textColor),
          CustomText(title: 'ahmed', textColor: textColor),

          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(right: 4),
                  child: Container(height: 200, color: Colors.red),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(height: 200, color: Colors.green),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
