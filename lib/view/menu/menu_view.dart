import 'package:flutter/material.dart';
import 'package:meal_monkey/common/color_extension.dart';
import 'package:meal_monkey/common_widget/round_textfield.dart';
import 'package:meal_monkey/view/menu/menu_item_view.dart';
import 'package:meal_monkey/view/more/my_orders_view.dart';

class MenuView extends StatefulWidget {
  const MenuView({super.key});

  @override
  State<MenuView> createState() => _MenuViewState();
}

class _MenuViewState extends State<MenuView> {
  List menuArr = [
    {
      'name': 'Food',
      'image': 'assets/images/menu_1.png',
      'count': '120',
    },
    {
      'name': 'Beverages',
      'image': 'assets/images/menu_2.png',
      'count': '220',
    },
    {
      'name': 'Desserts',
      'image': 'assets/images/menu_3.png',
      'count': '155',
    },
    {
      'name': 'Promotions',
      'image': 'assets/images/menu_4.png',
      'count': '25',
    },
  ];
  TextEditingController searchTextField = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xfffDfDfD),
      body: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 185),
            width: media.width * 0.28,
            height: media.height * 0.58,
            decoration: BoxDecoration(
              color: TColor.primary,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(35),
                bottomRight: Radius.circular(35),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                children: [
                  const SizedBox(
                    height: 46,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Menu',
                          style: TextStyle(
                            color: TColor.primaryText,
                            fontSize: 23,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const MyOrdersView()));
                          },
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
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: RoundTextField(
                      placeHolder: 'Search Food',
                      controller: searchTextField,
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
                  ListView.builder(
                    itemCount: menuArr.length,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 30,
                    ),
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: ((context, index) {
                      var menuObj = menuArr[index] as Map? ?? {};
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  MenuItemView(menuItemObj: menuObj),
                            ),
                          );
                        },
                        child: Stack(
                          alignment: Alignment.centerRight,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                top: 8,
                                bottom: 8,
                                right: 20,
                              ),
                              width: media.width - 100,
                              height: 90,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(35),
                                    bottomLeft: Radius.circular(35),
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 7,
                                    offset: Offset(0, 4),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  menuObj['image'].toString(),
                                  width: 80,
                                  height: 80,
                                  fit: BoxFit.contain,
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        menuObj['name'].toString(),
                                        style: TextStyle(
                                          color: TColor.primaryText,
                                          fontSize: 22,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        '${menuObj['count'].toString()} items',
                                        style: TextStyle(
                                          color: TColor.secondaryText,
                                          fontSize: 11,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 35,
                                  height: 35,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(17.5),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 4,
                                        offset: Offset(0, 2),
                                      ),
                                    ],
                                  ),
                                  alignment: Alignment.center,
                                  child: Image.asset(
                                    'assets/images/btn_next.png',
                                    width: 15,
                                    height: 15,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    }),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
