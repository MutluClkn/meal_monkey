import 'package:flutter/material.dart';
import 'package:meal_monkey/common/color_extension.dart';
import 'package:meal_monkey/common_widget/round_textfield.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController textSearch = TextEditingController();

  List categoryArr = [
    {'image': 'assets/images/cat_offer.png', 'name': 'Offers'},
    {'image': 'assets/images/cat_sri.png', 'name': 'Sri Lankan'},
    {'image': 'assets/images/cat_3.png', 'name': 'Italian'},
    {'image': 'assets/images/cat_4.png', 'name': 'Indian'},
  ];
  List popularArr = [
    {
      'image': 'assets/images/res_1.png',
      'name': 'Minute by tuk tuk',
      'rate': '4.9',
      'rating': '124',
      'type': 'Cafe',
      'location': 'Western Food',
    },
    {
      'image': 'assets/images/res_2.png',
      'name': 'Café de Noir',
      'rate': '4.9',
      'rating': '124',
      'type': 'Cafe',
      'location': 'Western Food',
    },
    {
      'image': 'assets/images/res_3.png',
      'name': 'Bakes by Tella',
      'rate': '4.9',
      'rating': '124',
      'type': 'Cafe',
      'location': 'Western Food',
    },
  ];
  List mostPopularArr = [
    {
      'image': 'assets/images/m_res_1.png',
      'name': 'Minute by tuk tuk',
      'rate': '4.9',
      'rating': '124',
      'type': 'Cafe',
      'location': 'Western Food',
    },
    {
      'image': 'assets/images/m_res_2.png',
      'name': 'Café de Noir',
      'rate': '4.9',
      'rating': '124',
      'type': 'Cafe',
      'location': 'Western Food',
    },
  ];
  List recentArr = [
    {
      'image': 'assets/images/item_1.png',
      'name': 'Mulberry Pizza by Josh',
      'rate': '4.9',
      'rating': '124',
      'type': 'Cafe',
      'location': 'Western Food',
    },
    {
      'image': 'assets/images/item_2.png',
      'name': 'Barita',
      'rate': '4.9',
      'rating': '124',
      'type': 'Cafe',
      'location': 'Western Food',
    },
    {
      'image': 'assets/images/item_3.png',
      'name': 'Pizza Rush Hour',
      'rate': '4.9',
      'rating': '124',
      'type': 'Cafe',
      'location': 'Western Food',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffDfDfD),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 46,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Good morning Mutlu!',
                      style: TextStyle(
                        color: TColor.primaryText,
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/images/shopping_cart.png',
                        width: 25,
                        height: 25,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Delivering to',
                      style: TextStyle(
                        color: TColor.secondaryText,
                        fontSize: 11,
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Current Location',
                          style: TextStyle(
                            color: TColor.secondaryText,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        Image.asset(
                          'assets/images/dropdown.png',
                          width: 12,
                          height: 12,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: RoundTextField(
                  placeHolder: 'Search Food',
                  controller: textSearch,
                  left: Container(
                    alignment: Alignment.center,
                    width: 30,
                    child: Image.asset(
                      'assets/images/search.png',
                      width: 20,
                      height: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
