import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  final String? text;
  final Icon? treling;
  final Icon? popUpMenue;
  final bool? isPopmenueRequired;
  final bool? isTrelingIconRequired;

  const TopBar({
    this.isTrelingIconRequired = false,
    super.key,
    this.text,
    this.isPopmenueRequired = false,
    this.popUpMenue,
    this.treling,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text ?? "",
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w600,
            ),
          ),
          isTrelingIconRequired! ? const Icon(Icons.search) : const SizedBox(),
        ],
      ),
    );
  }
}
