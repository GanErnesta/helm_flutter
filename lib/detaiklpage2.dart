import 'package:flutter/material.dart';

class NewDetail extends StatefulWidget {
  const NewDetail({Key? key}) : super(key: key);

  @override
  State<NewDetail> createState() => _NewDetailState();
}

class _NewDetailState extends State<NewDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          detailsAppBar(),
          Container(
            height: 300,
            decoration: const BoxDecoration(
              color: Color.fromARGB(213, 79, 73, 141),
              border: Border(top: BorderSide(width: 2)),
            ),
            child: Stack(
              children: [
                Center(
                  child: Container(
                    height: 150,
                    width: 250,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget detailsAppBar() => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 15),
      child: Row(children: [
        const Icon(
          Icons.arrow_back,
        ),
        Row(
          children: [
            GestureDetector(child: const Icon(Icons.favorite_border)),
            const SizedBox(
              width: 8,
            ),
            const Icon(Icons.share),
            const SizedBox(
              width: 8,
            ),
            const Icon(Icons.shopping_cart_outlined),
          ],
        ),
      ]),
    );
