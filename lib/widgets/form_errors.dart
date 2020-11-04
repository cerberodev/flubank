import 'package:flutter/material.dart';

class FormErrors extends StatelessWidget {
  const FormErrors({
    Key key,
    @required this.errors,
  }) : super(key: key);

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        errors.length,
        (index) => formErrorText(
          error: errors[index],
        ),
      ),
    );
  }

  Row formErrorText({String error}) {
    return Row(
      children: [
        const Icon(
          Icons.error,
          color: Colors.red,
        ),
        const SizedBox(width: 10),
        Text(error),
      ],
    );
  }
}
