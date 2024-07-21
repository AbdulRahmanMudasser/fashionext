import 'package:flutter/material.dart';

class Divida extends StatelessWidget {
  const Divida({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Divider(
      endIndent: 0,
      indent: 0,
      color: Colors.grey,
    );
  }
}