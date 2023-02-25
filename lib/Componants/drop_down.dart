// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FirstDropDown extends StatefulWidget {
  FirstDropDown({
    Key? key,
    required this.hint,
    required this.items,
    required this.labelText,
    this.dropdownColor = const Color(0xffF1F5F9),
  }) : super(key: key);

  String hint, labelText;
  List items;
  Color dropdownColor;
  static var selectedValue;

  @override
  State<FirstDropDown> createState() => _FirstDropDownState();
}

class _FirstDropDownState extends State<FirstDropDown> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Text(
            widget.labelText,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 10),
        DropdownButtonHideUnderline(
          child: DropdownButtonFormField(
            hint: Text(
              widget.hint,
              style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
            items: widget.items
                .map((e) => DropdownMenuItem(
                      value: e,
                      child: Text(
                        e.toString(),
                        style: const TextStyle(
                            color: Color(0xff0F172A),
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ))
                .toList(),
            icon: const Icon(
              Icons.keyboard_arrow_down_rounded,
              color: Color(0xffDE0A1E),
              size: 33,
            ),
            dropdownColor: const Color(0xffF1F5F9),
            borderRadius: BorderRadius.circular(12),
            onChanged: (val) {
              setState(() {
                FirstDropDown.selectedValue = val;
              });
            },
            value: FirstDropDown.selectedValue,
            validator: (value) =>
                value == null ? 'This field is required' : null,
            //decoration
            decoration: InputDecoration(
              filled: true,
              fillColor: widget.dropdownColor,
              ///////////////////////
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide:
                    const BorderSide(color: Colors.transparent, width: 0),
              ),
              ///////////////////////
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide:
                    const BorderSide(color: Color(0xffDE0A1E), width: 2),
              ),
              /////////////////////////////////
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide:
                    const BorderSide(color: Color(0xffDE0A1E), width: 2),
              ),
              ///////////////////////////////////
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide:
                    const BorderSide(color: Color(0xffDE0A1E), width: 2),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// ignore: must_be_immutable
class SecondDropDown extends StatefulWidget {
  SecondDropDown({
    Key? key,
    required this.hint,
    required this.items,
    required this.labelText,
    this.dropdownColor = const Color(0xffF1F5F9),
  }) : super(key: key);

  String hint, labelText;
  List items;
  Color dropdownColor;
  static var selectedValue;

  @override
  State<SecondDropDown> createState() => _SecondDropDownState();
}

class _SecondDropDownState extends State<SecondDropDown> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Text(
            widget.labelText,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 10),
        DropdownButtonHideUnderline(
          child: DropdownButtonFormField(
            hint: Text(
              widget.hint,
              style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
            items: widget.items
                .map((e) => DropdownMenuItem(
                      value: e,
                      child: Text(
                        e.toString(),
                        style: const TextStyle(
                            color: Color(0xff0F172A),
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ))
                .toList(),
            icon: const Icon(
              Icons.keyboard_arrow_down_rounded,
              color: Color(0xffDE0A1E),
              size: 33,
            ),
            dropdownColor: const Color(0xffF1F5F9),
            borderRadius: BorderRadius.circular(12),
            onChanged: (val) {
              setState(() {
                SecondDropDown.selectedValue = val;
              });
            },
            value: SecondDropDown.selectedValue,
            validator: (value) =>
                value == null ? 'This field is required' : null,
            //decoration
            decoration: InputDecoration(
              filled: true,
              fillColor: widget.dropdownColor,
              ///////////////////////
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide:
                    const BorderSide(color: Colors.transparent, width: 0),
              ),
              ///////////////////////
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide:
                    const BorderSide(color: Color(0xffDE0A1E), width: 2),
              ),
              /////////////////////////////////
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide:
                    const BorderSide(color: Color(0xffDE0A1E), width: 2),
              ),
              ///////////////////////////////////
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide:
                    const BorderSide(color: Color(0xffDE0A1E), width: 2),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// ignore: must_be_immutable
class UpdateDropDown extends StatefulWidget {
  UpdateDropDown({
    Key? key,
    required this.hint,
    required this.items,
  }) : super(key: key);

  String hint;
  List items;

  static var selectedValue;

  @override
  State<UpdateDropDown> createState() => _UpdateDropDownState();
}

class _UpdateDropDownState extends State<UpdateDropDown> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 10),
      child: DropdownButtonHideUnderline(
        child: DropdownButtonFormField(
          hint: Text(
            widget.hint,
            style: const TextStyle(
              color: Colors.black,
            ),
          ),
          items: widget.items
              .map((e) => DropdownMenuItem(
                    value: e,
                    child: Text(
                      e.toString(),
                    ),
                  ))
              .toList(),
          icon: const Icon(
            Icons.keyboard_arrow_down_rounded,
            size: 33,
          ),
          dropdownColor: const Color(0xffF1F5F9),
          borderRadius: BorderRadius.circular(12),
          onChanged: (val) {
            setState(() {
              UpdateDropDown.selectedValue = val;
            });
          },
          value: UpdateDropDown.selectedValue,
          validator: (value) => value == null ? 'This field is required' : null,
          //decoration
          decoration: const InputDecoration(
            contentPadding: EdgeInsets.all(0),
            ///////////////////////
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent, width: 0),
            ),
            ///////////////////////
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent, width: 2),
            ),
            /////////////////////////////////
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xffDE0A1E), width: 2),
            ),
            ///////////////////////////////////
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xffDE0A1E), width: 2),
            ),
          ),
        ),
      ),
    );
  }
}
