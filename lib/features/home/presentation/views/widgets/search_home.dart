import 'package:flutter/material.dart';

class SearchHome extends StatelessWidget {
  const SearchHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xFF292B37),
      ),
      child: Row(
        children: [
          const Icon(
            Icons.search_rounded,
            color: Colors.white54,
            size: 30,
          ),
          const SizedBox(width: 10),
          SizedBox(
            width: 300,
            child: TextFormField(
              style: const TextStyle(color: Colors.white54),
              decoration: const InputDecoration(
                hintText: 'Search',
                hintStyle: TextStyle(
                  color: Colors.white54,
                ),
                border: InputBorder.none,
              ),
            ),
          )
        ],
      ),
    );
  }
}
