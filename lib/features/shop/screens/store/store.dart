import 'package:cartzy_ecommerce/common/widgets/appbar/appbar.dart';
import 'package:cartzy_ecommerce/common/widgets/appbar/tabbar.dart';
import 'package:cartzy_ecommerce/common/widgets/brands/brand_card/brand_card.dart';
import 'package:cartzy_ecommerce/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:cartzy_ecommerce/common/widgets/layout/tgrid_layout.dart';
import 'package:cartzy_ecommerce/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:cartzy_ecommerce/common/widgets/texts/section_heading.dart';
import 'package:cartzy_ecommerce/features/shop/screens/store/widget/category_tab.dart';
import 'package:cartzy_ecommerce/utils/constants/colors.dart';
import 'package:cartzy_ecommerce/utils/constants/sizes.dart';
import 'package:cartzy_ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunction.isDarkMode(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TAppBar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            TCartCounter(
                iconColor: dark ? TColors.white : TColors.black,
                onPressed: () {})
          ],
        ),
        body: NestedScrollView(
            headerSliverBuilder: (_, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  pinned: true,
                  floating: true,
                  backgroundColor: dark ? TColors.black : TColors.white,
                  expandedHeight: 440,
                  flexibleSpace: Padding(
                    padding: const EdgeInsets.all(TSizes.defaultSpace),
                    child: ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        const SizedBox(
                          height: TSizes.spaceBwItems,
                        ),

                        ///-Search Bar
                        const TSearchContainer(
                          text: 'Search Store',
                          showBoder: true,
                          icon: Iconsax.search_normal,
                          showBackground: false,
                          padding: EdgeInsets.zero,
                        ),
                        const SizedBox(
                          height: TSizes.spaceBtwSections,
                        ),

                        ///-- Feature Brands
                        TSectionHeading(
                          title: 'Featured Brands',
                          showActionButton: true,
                          textColor: dark ? TColors.white : TColors.black,
                          buttonTitle: 'Show More',
                          onPressed: () {},
                        ),
                        const SizedBox(
                          height: TSizes.spaceBwItems / 1.5,
                        ),

                        TGridLayout(
                            itemCount: 4,
                            mainAxisExtent: 80,
                            itemBuilder: (_, index) {
                              return TBrandCard(
                                showBorder: true,
                                onTap: () {},
                              );
                            })
                      ],
                    ),
                  ),
                  bottom: const TTabBar(tabs: [
                    Tab(
                      child: Text('Sports'),
                    ),
                    Tab(
                      child: Text('Furniture'),
                    ),
                    Tab(
                      child: Text('Electronics'),
                    ),
                    Tab(
                      child: Text('Cloths'),
                    ),
                    Tab(
                      child: Text('Cosmetics'),
                    ),
                  ]),
                )
              ];
            },
            body: const  TabBarView(children: [
             TCategoryTab(),
             TCategoryTab(),
             TCategoryTab(),
             TCategoryTab(),
             TCategoryTab(),
            
            ])),
      ),
    );
  }
}

