import 'package:flutter/material.dart';

bottomSheet(BuildContext context, Widget child) {
  return showModalBottomSheet(
    
    context: context,
    builder: (context) => child,
  );
}
