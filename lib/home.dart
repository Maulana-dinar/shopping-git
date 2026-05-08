import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,

        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'images/home.png',
              width: 24,
            ),
            label: '',
          ),

          BottomNavigationBarItem(
            icon: Image.asset(
              'images/favorit.png',
              width: 24,
            ),
            label: '',
          ),

          BottomNavigationBarItem(
            icon: Image.asset(
              'images/bell.png',
              width: 24,
            ),
            label: '',
          ),

          BottomNavigationBarItem(
            icon: Image.asset(
              'images/bawahwong.png',
              width: 24,
            ),
            label: '',
          ),
        ],
      ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              // HEADER
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,

                children: [

                  Image.asset(
                    'images/search.png',
                    width: 24,
                  ),

                  Column(
                    children: const [

                      Text(
                        'MAKE HOME',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),

                      Text(
                        'BEAUTIFUL',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  Image.asset(
                    'images/keranjang.png',
                    width: 24,
                  ),
                ],
              ),

              const SizedBox(height: 30),

              // CATEGORY
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,

                children: [

                  categoryItem(
                    'images/star.png',
                    'Popular',
                    true,
                  ),

                  categoryItem(
                    'images/chair.png',
                    'Chair',
                    false,
                  ),

                  categoryItem(
                    'images/table.png',
                    'Table',
                    false,
                  ),

                  categoryItem(
                    'images/sofa.png',
                    'Armchair',
                    false,
                  ),

                  categoryItem(
                    'images/kasur.png',
                    'Bed',
                    false,
                  ),
                ],
              ),

              const SizedBox(height: 30),

              // PRODUCT GRID
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 20,
                  childAspectRatio: 0.62,

                  children: [

                    productItem(
                      'images/lampu.png',
                      'Black Simple Lamp',
                      '\$ 12.00',
                    ),

                    productItem(
                      'images/kursi.png',
                      'Minimal Stand',
                      '\$ 25.00',
                    ),

                    productItem(
                      'images/kursi2.png',
                      'Coffee Chair',
                      '\$ 12.00',
                    ),

                    productItem(
                      'images/kursi3.png',
                      'Simple Desk',
                      '\$ 12.00',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // CATEGORY
  Widget categoryItem(
      String image,
      String title,
      bool active,
      ) {
    return Column(
      children: [

        Container(
          padding: const EdgeInsets.all(14),

          decoration: BoxDecoration(
            color: active
                ? Colors.black87
                : Colors.grey.shade200,

            borderRadius:
                BorderRadius.circular(12),
          ),

          child: Image.asset(
            image,
            width: 24,
            color: active
                ? Colors.white
                : Colors.grey,
          ),
        ),

        const SizedBox(height: 8),

        Text(
          title,
          style: TextStyle(
            color: active
                ? Colors.black
                : Colors.grey,
          ),
        ),
      ],
    );
  }

  // PRODUCT
  Widget productItem(
      String image,
      String title,
      String price,
      ) {
    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.start,

      children: [

        Expanded(
          child: Stack(
            children: [

              Container(
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(18),

                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              Positioned(
                bottom: 10,
                right: 10,

                child: Container(
                  padding: const EdgeInsets.all(8),

                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(10),
                  ),

                  child: Image.asset(
                    'images/shopping_bag icon.png',
                    width: 18,
                  ),
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 10),

        Text(
          title,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 16,
          ),
        ),

        const SizedBox(height: 5),

        Text(
          price,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}