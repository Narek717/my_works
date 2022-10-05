import 'package:flutter/material.dart';


class CheckBox extends StatelessWidget {
  const CheckBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  Scaffold(
          body: Center(
            child: CheckBoxWidget(),
          )),
    );
  }
}
class CheckBoxWidget extends StatefulWidget {
  const CheckBoxWidget({Key? key}) : super(key: key);

  @override
  State<CheckBoxWidget> createState() {
    return _CheckBoxWidgetState();
  }
}
class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.red,
      checkColor: Colors.black,
      focusColor: Colors.yellow,
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}