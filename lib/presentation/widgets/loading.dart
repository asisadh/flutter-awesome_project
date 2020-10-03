import 'package:flutter/material.dart';

Widget loadingPage(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: const Center(child: CircularProgressIndicator()),
  );
}
