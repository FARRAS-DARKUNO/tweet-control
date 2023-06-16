import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tweet_control/global/colors.dart';

class DateInput extends StatefulWidget {
  final TextEditingController controller;
  const DateInput({required this.controller, super.key});

  @override
  State<DateInput> createState() => _DateInputState();
}

class _DateInputState extends State<DateInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      padding: const EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(width: 2, color: cPrimer),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 100,
            child: TextField(
              readOnly: true,
              keyboardType: TextInputType.number,
              controller: widget.controller,
              autocorrect: false,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
              decoration: const InputDecoration(
                border: InputBorder.none,
              ),
            ),
          ),
          GestureDetector(
            onTap: () async {
              DateTime? newDate = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2000),
                lastDate: DateTime(2200),
              );
              if (newDate != null) {
                setState(() {
                  widget.controller.text =
                      "${newDate.day}/${newDate.month}/${newDate.year}";
                });
              }
            },
            child: const Icon(Icons.date_range_rounded, color: cPrimer),
          ),
        ],
      ),
    );
  }
}
