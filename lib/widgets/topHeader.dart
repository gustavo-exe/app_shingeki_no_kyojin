import 'package:flutter/material.dart';

class TopHeader extends StatelessWidget {
  const TopHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Color.fromARGB(225, 52, 58, 64)),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 34, left: 16, right: 16, bottom: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Shingeki No Kyojin",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                Text(
                  "Attack on Titan",
                  style: TextStyle(fontSize: 12, color: Colors.white),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black.withOpacity(.1)),
                    child: IconButton(
                      icon: const Icon(Icons.search,
                          size: 22, color: Colors.white),
                      onPressed: () {},
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.black.withOpacity(.1)),
                  child: IconButton(
                    icon: const Icon(Icons.notifications,
                        size: 22, color: Colors.white),
                    onPressed: () {},
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
