import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:intl/intl.dart';

class CustomDataPicker extends StatefulWidget {
  const CustomDataPicker({Key? key}) : super(key: key);

  static DateTime selectedDate = DateTime(1998);
  static String date =
      DateFormat.yMMMEd().format(CustomDataPicker.selectedDate);
  @override
  State<CustomDataPicker> createState() => _CustomDataPickerState();
}

class _CustomDataPickerState extends State<CustomDataPicker> {
  void _datePicker(BuildContext context) {
    showDatePicker(
      context: context,
      firstDate: DateTime(1963),
      lastDate: DateTime(2030),
      initialDate: DateTime(1998),
    ).then((val) {
      if (val == null) {
        return;
      }
      setState(() {
        CustomDataPicker.selectedDate = val;
      });
    });
    return;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: GestureDetector(
        onTap: () {
          _datePicker(context);
        },
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              width: double.infinity,
              child: const Text(
                "Birthday Date",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 15),
            Container(
                decoration: BoxDecoration(
                  color: const Color(0xffF1F5F9),
                  borderRadius: BorderRadius.circular(12),
                ),
                width: double.infinity,
                height: 60,
                child: Row(
                  children: [
                    const SizedBox(width: 7),
                    const Icon(
                      IconlyLight.calendar,
                      color: Color(0xffDE0A1E),
                      size: 25,
                    ),
                    const SizedBox(width: 15),
                    Text(
                      DateFormat.yMMMEd().format(CustomDataPicker.selectedDate),
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff0F172A)),
                    ),
                    const SizedBox(width: 155),
                    const Icon(
                      IconlyLight.arrow_down_2,
                      color: Color(0xffDE0A1E),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
