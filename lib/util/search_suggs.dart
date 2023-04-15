import 'package:flutter/material.dart';

class SearchHis extends StatelessWidget {
  final String historyName;
  const SearchHis({
    required this.historyName,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        debugPrint(" \"$historyName\" was just clicked");
      },
      onLongPress: () {
        debugPrint("This history wants to be deleted");
      },
      leading: const Icon(
        Icons.history,
        color: Colors.white,
      ),
      title: Text(
        historyName,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
      trailing: Image.asset(
        "lib/img/outward-arrow.png",
        width: 13,
      ),
    );
  }
}
