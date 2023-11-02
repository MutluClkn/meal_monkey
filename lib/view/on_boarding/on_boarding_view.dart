import 'package:flutter/material.dart';
import 'package:meal_monkey/common/color_extension.dart';
import 'package:meal_monkey/common_widget/round_button.dart';
import 'package:meal_monkey/view/main_tabview/main_tab_view.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  int selectPage = 0;
  PageController pageController = PageController();
  List pageArr = [
    {
      'title': 'Find Food You Love',
      'subtitle':
          'Discover the best foods from over 1,000 restaurants and fast delivery to your doorstep',
      'image': 'assets/images/on_boarding_1.png',
    },
    {
      'title': 'Fast Delivery',
      'subtitle': 'Fast food delivery to your home, office wherever you are',
      'image': 'assets/images/on_boarding_2.png',
    },
    {
      'title': 'Live Tracking',
      'subtitle':
          'Real time tracking of your food on the app once you placed the order',
      'image': 'assets/images/on_boarding_3.png',
    },
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController.addListener(() {
      setState(() {
        selectPage = pageController.page?.round() ?? 0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          PageView.builder(
            controller: pageController,
            itemCount: pageArr.length,
            itemBuilder: ((context, index) {
              var pageObj = pageArr[index] as Map? ?? {};
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: media.width,
                    height: media.width,
                    alignment: Alignment.center,
                    child: Image.asset(
                      pageObj['image'].toString(),
                      width: media.width * 0.65,
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(
                    height: media.width * 0.2,
                  ),
                  Text(
                    pageObj['title'].toString(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: TColor.primaryText,
                      fontSize: 28,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(
                    height: media.width * 0.05,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25,
                    ),
                    child: Text(
                      pageObj['subtitle'].toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: TColor.secondaryText,
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: media.width * 0.3,
                  ),
                ],
              );
            }),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: media.height * 0.6,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: pageArr.map((e) {
                  var index = pageArr.indexOf(e);
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    height: 6,
                    width: 6,
                    decoration: BoxDecoration(
                      color: index == selectPage
                          ? TColor.primary
                          : TColor.placeholder,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  );
                }).toList(),
              ),
              SizedBox(
                height: media.height * 0.23,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                ),
                child: RoundButton(
                  title: 'Next',
                  onPressed: () {
                    if (selectPage >= 2) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MainTabView(),
                        ),
                      );
                    } else {
                      setState(
                        () {
                          selectPage = selectPage + 1;
                          pageController.animateToPage(
                            selectPage,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.bounceInOut,
                          );
                        },
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
