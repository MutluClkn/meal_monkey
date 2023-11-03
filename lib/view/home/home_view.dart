import 'package:flutter/material.dart';
import 'package:meal_monkey/common/color_extension.dart';
import 'package:meal_monkey/common_widget/category_cell.dart';
import 'package:meal_monkey/common_widget/most_popular_cell.dart';
import 'package:meal_monkey/common_widget/popular_restaurants_row.dart';
import 'package:meal_monkey/common_widget/recent_restaurants_row.dart';
import 'package:meal_monkey/common_widget/round_textfield.dart';
import 'package:meal_monkey/common_widget/view_all_title_row.dart';

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
      'food_type': 'Western Food',
    },
    {
      'image': 'assets/images/res_2.png',
      'name': 'Café de Noir',
      'rate': '4.9',
      'rating': '124',
      'type': 'Cafe',
      'food_type': 'Western Food',
    },
    {
      'image': 'assets/images/res_3.png',
      'name': 'Bakes by Tella',
      'rate': '4.9',
      'rating': '124',
      'type': 'Cafe',
      'food_type': 'Western Food',
    },
  ];
  List mostPopularArr = [
    {
      'image': 'assets/images/m_res_1.png',
      'name': 'Minute by tuk tuk',
      'rate': '4.9',
      'rating': '124',
      'type': 'Cafe',
      'food_type': 'Western Food',
    },
    {
      'image': 'assets/images/m_res_2.png',
      'name': 'Café de Noir',
      'rate': '4.9',
      'rating': '124',
      'type': 'Cafe',
      'food_type': 'Western Food',
    },
  ];
  List recentArr = [
    {
      'image': 'assets/images/item_1.png',
      'name': 'Mulberry Pizza by Josh',
      'rate': '4.9',
      'rating': '124',
      'type': 'Cafe',
      'food_type': 'Western Food',
    },
    {
      'image': 'assets/images/item_2.png',
      'name': 'Barita',
      'rate': '4.9',
      'rating': '124',
      'type': 'Cafe',
      'food_type': 'Western Food',
    },
    {
      'image': 'assets/images/item_3.png',
      'name': 'Pizza Rush Hour',
      'rate': '4.9',
      'rating': '124',
      'type': 'Cafe',
      'food_type': 'Western Food',
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
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 120,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  itemCount: categoryArr.length,
                  itemBuilder: ((context, index) {
                    var cObj = categoryArr[index] as Map? ?? {};
                    return CategoryCell(
                      cObj: cObj,
                      onTap: () {},
                    );
                  }),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ViewAllTitleRow(
                  title: 'Popular Restaurants',
                  onView: () {},
                ),
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                itemCount: popularArr.length,
                itemBuilder: ((context, index) {
                  var pObj = popularArr[index] as Map? ?? {};
                  return PopularRestaurantsRow(
                    pObj: pObj,
                    onTap: () {},
                  );
                }),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ViewAllTitleRow(
                  title: 'Most Popular',
                  onView: () {},
                ),
              ),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  itemCount: mostPopularArr.length,
                  itemBuilder: ((context, index) {
                    var mObj = mostPopularArr[index] as Map? ?? {};
                    return MostPopularCell(
                      mObj: mObj,
                      onTap: () {},
                    );
                  }),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ViewAllTitleRow(
                  title: 'Recent',
                  onView: () {},
                ),
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(horizontal: 15),
                itemCount: recentArr.length,
                itemBuilder: ((context, index) {
                  var rObj = recentArr[index] as Map? ?? {};
                  return RecentRestaurantsRow(
                    rObj: rObj,
                    onTap: () {},
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
