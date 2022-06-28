import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String title;
  final String hint;
  final TextEditingController? controller;
  final Widget? widget;
  final Widget? widgetcountry;
  final TextInputType keyboardType;
  const InputField(
      {Key? key,
      required this.title,
      required this.hint,
      this.controller,
      this.widget,
      this.widgetcountry,
      required this.keyboardType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16, left: 12, right: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
          Container(
            padding: const EdgeInsets.only(top: 0, left: 14),
            margin: const EdgeInsets.only(left: 0, right: 5, top: 8),
            height: 48,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(color: Colors.grey)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                widgetcountry ?? Container(),
                Expanded(
                  child: TextFormField(
                      controller: controller,
                      autofocus: false,
                      keyboardType: keyboardType,
                      decoration: InputDecoration(
                        hintText: hint,
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                      )),
                ),
                widget ?? Container(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
