import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:tekram/core/constants.dart';
import 'package:tekram/core/widgets/custom_text_field.dart';

import 'package:tekram/core/widgets/star.dart';
import 'package:tekram/features/home_page/presentation/screens/widgets/best_seller.dart';
import 'package:tekram/features/home_page/presentation/screens/widgets/custom_slider.dart';
import 'package:tekram/features/home_page/presentation/screens/widgets/grid_icons.dart';
import 'package:tekram/features/home_page/presentation/screens/widgets/headersection.dart';
import 'package:tekram/features/home_page/presentation/screens/widgets/offer.dart';
import 'package:tekram/features/home_page/presentation/screens/widgets/product_item.dart';
import 'package:tekram/features/home_page/presentation/screens/widgets/search_bar.dart';
import 'package:tekram/features/home_page/presentation/screens/widgets/suggest_for_you.dart';

class HomePageBody extends StatelessWidget {
  TextEditingController searchtext = TextEditingController();
  HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //header section
          headersection(),
          Image.asset(
            width: double.infinity,
            height: 200,
            'assets/images/headerhome.png',
          ),
          SizedBox(height: 20),
          searchBar(searchtext: searchtext),
          SizedBox(
            height: 50,
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppConstants.white500,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      'لك خصيصاً',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.w900,
                          height: 1.8),
                    ),
                  ),
                  SizedBox(height: 20),
                  gridIcons(),
                  SizedBox(height: 20),
                  CustomSlider(),
                  SizedBox(height: 20),
                  BestSeller(),
                  SuggestForYou(),
                  Offer(),
                  TekramOffers(),
                  TheCommonProducts(),
                  TheMoreDamandClothes()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TheMoreDamandClothes extends StatelessWidget {
  const TheMoreDamandClothes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'أكثر الملابس طلباً',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
              ),
              Row(children: [
                Text(
                  '  عرض الكل',
                  style: TextStyle(
                      color: AppConstants.blueColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                  color: AppConstants.blueColor,
                )
              ]),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 21),
          child: SizedBox(
            height: 270,
            child: ListView.builder(
              reverse: true,
              controller: ScrollController(initialScrollOffset: 1),
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return ProductItem(
                  width: 160,
                  height: 260,
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}

class TheCommonProducts extends StatelessWidget {
  const TheCommonProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'المنتجات الرائجة في ',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                  ),
                  Image.asset('assets/images/tkr.png')
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 21),
          child: SizedBox(
            height: 160,
            child: ListView.builder(
              reverse: true,
              controller: ScrollController(initialScrollOffset: 1),
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    height: 160,
                    width: 120,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 2,
                          ),
                          Center(
                              child: Image.asset(
                            'assets/images/Group 63.png',
                            width: 64,
                            height: 64,
                          )),
                          Text(
                            'موصى بها',
                            style: TextStyle(
                                color: AppConstants.blueColor,
                                fontSize: 16,
                                height: 1,
                                fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}

class TekramOffers extends StatelessWidget {
  const TekramOffers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppConstants.blueColor3,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'عروض تكرم',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                  ),
                  Row(children: [
                    Text(
                      '  عرض الكل',
                      style: TextStyle(
                          color: AppConstants.blueColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                      color: AppConstants.blueColor,
                    )
                  ]),
                ],
              ),
            ),
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 4,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.6,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10),
              itemBuilder: (context, index) {
                return ProductItem(
                  height: 290,
                  width: 190,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
