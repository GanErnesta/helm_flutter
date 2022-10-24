import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'models/helm.dart';

class HelmDetails extends StatefulWidget {
  const HelmDetails({Key? key}) : super(key: key);

  @override
  State<HelmDetails> createState() => _HelmDetailsState();
}

//helm size
List<int> sneakerSizes = [for (var i = 3; i <= 20; i++) i];
int selectedSize = 15;

//helm quantity
List<int> sneakerQuantities = [for (var i = 1; i <= 10; i++) i];
int selectedQuantity = 1;

class _HelmDetailsState extends State<HelmDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 243, 218),
      body: Column(
        children: [
          detailsAppBar(),
          Container(
            height: 300,
            decoration: const BoxDecoration(
              color: Color.fromARGB(210, 28, 78, 159),
              border: Border(top: BorderSide(width: 2)),
            ),
            child: Stack(
              children: [
                Center(
                  // ignore: sized_box_for_whitespace
                  child: Container(
                    height: 150,
                    width: 250,
                    child: Stack(children: [
                      Text(
                        'S1 GP PRO',
                        style: TextStyle(
                            height: 1,
                            color: Colors.black.withOpacity(0.06),
                            fontSize: 63,
                            fontWeight: FontWeight.w900),
                      ),
                      Positioned(
                        bottom: 0,
                        child: Image.asset("assets/images/bell.png",
                            height: 150, width: 200, fit: BoxFit.cover),
                      )
                    ]),
                  ),
                ),
                Positioned(
                  right: 10,
                  child: RotatedBox(
                    quarterTurns: 1,
                    child: Container(
                      height: 25,
                      width: 300,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 247, 6, 2),
                      ),
                      child: const Text(
                        "New Helm -- New Helm -- New Helm -- New Helm -- New Helm -- New Helm --",
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(135, 0, 0, 0),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          HelmDetail(),
        ],
      ),
    );
  }
}

Widget HelmDetail() => Expanded(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(17.0),
            child: Column(
              children: [
                const Text(
                  "Helm Bell Moto 9 Flex Helmet",
                  style: TextStyle(
                    fontSize: 38,
                    fontWeight: FontWeight.w800,
                    height: 1,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    RatingBar.builder(
                      itemCount: 5,
                      itemSize: 15,
                      allowHalfRating: true,
                      initialRating: 4.0,
                      onRatingUpdate: (rating) {},
                      itemBuilder: (context, _) {
                        return const Icon(
                          Icons.star,
                          color: Colors.amber,
                        );
                      },
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "4.0",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w800),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "Ratings",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w800,
                          color: Colors.orange),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            height: 35,
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            decoration: const BoxDecoration(
                border: Border(
                    top: BorderSide(width: 1.5, color: Colors.grey),
                    bottom: BorderSide(width: 1.5, color: Colors.grey))),
            child: Row(
              children: [
                Row(
                  children: [
                    Text(
                      "Price: ",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey.shade700,
                      ),
                    ),
                    const Text(
                      "Rp320.000",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(255, 210, 50, 50),
                      ),
                    )
                  ],
                ),
                const helmSize(),
                helmQuantity(),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Product Description:",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          Icon(Icons.arrow_upward, size: 18),
                        ],
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      const Text(
                        "The Moto-9 Flex features a first-of-its-kind, three-layer impact liner that utilizes multiple densities of material to more comprehensively disperse impact energy and works to reduce rotational energy transfer",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        "KOMPLAIN & RETUR WAJIB VIDEO UNBOXING:",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      const Text(
                        "1. Tanpa video pembukaan paket, semua KOMPLAIN & RETUR TIDAK DITERIMA.",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      const Text(
                        "2. Rekam dengan jelas & tanpa terputus mulai dari sebelum membuka paket sampai selesai.",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      const Text(
                        "3. Tidak menerima rekaman video setelah paket dibuka atau dari paket yang sudah dibuka kemudian dibungkus ulang.",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 247, 6, 2),
                      ),
                      child: const Text(
                        "Add to Cart",
                        style: TextStyle(
                          color: Colors.amber,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );

class helmQuantity extends StatefulWidget {
  @override
  State<helmQuantity> createState() => _helmQuantityState();
}

class _helmQuantityState extends State<helmQuantity> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 20,
        ),
        Text(
          "Select Quantity: ",
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey.shade700,
          ),
        ),
        SizedBox(
          width: 30,
          child: DropdownButtonHideUnderline(
            child: DropdownButton(
              isDense: true,
              isExpanded: true,
              dropdownColor: Color.fromARGB(255, 250, 241, 226),
              icon: const Icon(
                Icons.keyboard_arrow_down,
                size: 15,
              ),
              value: selectedQuantity,
              items: sneakerQuantities.map((int brand) {
                return DropdownMenuItem(
                  value: brand,
                  child: Text(
                    brand.toString(),
                    style: const TextStyle(
                      fontSize: 13,
                    ),
                  ),
                );
              }).toList(),
              onChanged: ((int? newValue) {
                setState(() {
                  selectedSize = newValue!;
                });
              }),
            ),
          ),
        ),
      ],
    );
  }
}

class helmSize extends StatefulWidget {
  const helmSize({Key? key}) : super(key: key);

  @override
  State<helmSize> createState() => _helmSizeState();
}

class _helmSizeState extends State<helmSize> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 20,
        ),
        Text(
          "Select Size: ",
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey.shade700,
          ),
        ),
        SizedBox(
          width: 30,
          child: DropdownButtonHideUnderline(
            child: DropdownButton(
              isDense: true,
              isExpanded: true,
              dropdownColor: Color.fromARGB(255, 250, 241, 226),
              icon: const Icon(
                Icons.keyboard_arrow_down,
                size: 15,
              ),
              value: selectedSize,
              items: sneakerSizes.map((int brand) {
                return DropdownMenuItem(
                  value: brand,
                  child: Text(
                    brand.toString(),
                    style: const TextStyle(
                      fontSize: 13,
                    ),
                  ),
                );
              }).toList(),
              onChanged: ((int? newValue) {
                setState(() {
                  selectedSize = newValue!;
                });
              }),
            ),
          ),
        ),
      ],
    );
  }
}

Widget detailsAppBar() => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 15),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
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
