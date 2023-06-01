import 'package:flutter/material.dart';

class CategoryItemTile extends StatefulWidget {
  final String categoryName;
  final String imagePath;
  final Color? color;
  void Function()? onPressed;

  CategoryItemTile(
      {Key? key,
      required this.categoryName,
      required this.imagePath,
      this.color,
      required this.onPressed})
      : super(key: key);

  @override
  State<CategoryItemTile> createState() => _CategoryItemTileState();
}

class _CategoryItemTileState extends State<CategoryItemTile> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.black)),
        child: Column(
          children: [
            Flexible(
                flex: 4,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15),
                          topLeft: Radius.circular(15)),
                      image: DecorationImage(
                          image: NetworkImage(
                            'https://apihcart.hawkssolutions.com/public${widget.imagePath}',
                          ),
                          fit: BoxFit.fitWidth)),
                )),
            Flexible(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        widget.categoryName,
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      ElevatedButton(
                        onPressed: widget.onPressed,
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8))),
                          backgroundColor:
                              MaterialStateProperty.all(widget.color),
                        ),
                        child: Text(
                          "View more",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
