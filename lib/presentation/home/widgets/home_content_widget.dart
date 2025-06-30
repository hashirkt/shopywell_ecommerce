import 'package:flutter/material.dart';
import 'package:shopywell/presentation/home/widgets/banner_widget.dart';
import 'package:shopywell/presentation/widgets/product_card_widget.dart';
import 'package:shopywell/utils/image_res.dart';
import 'package:shopywell/utils/theme.dart';

class HomePageContent extends StatelessWidget {
  HomePageContent({super.key});

  final List<Map<String, String>> categories = [
    {'title': 'Beauty', 'image': ImageRes.beauty},
    {'title': 'Fashion', 'image': ImageRes.fashion},
    {'title': 'kids', 'image': ImageRes.kids},
    {'title': 'Men', 'image': ImageRes.men},
    {'title': 'Women', 'image': ImageRes.women},
    {'title': 'Giftd', 'image': ImageRes.gifts},
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Row(
            children: [
              Text(
                "All Featured",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: AppTheme.white,
                ),
                child: Row(
                  children: [
                    Text("Sort", style: Theme.of(context).textTheme.bodyMedium),
                    Icon(Icons.compare_arrows_outlined, size: 20),
                  ],
                ),
              ),
              SizedBox(width: 5),
              Container(
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: AppTheme.white,
                ),
                child: Row(
                  children: [
                    Text(
                      "Filter",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    Icon(Icons.filter_alt_outlined, size: 20),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 80,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              separatorBuilder: (_, __) => const SizedBox(width: 16),
              itemBuilder: (_, index) {
                final category = categories[index];
                return Column(
                  children: [
                    Container(
                      height: 56,
                      width: 56,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: AppTheme.white,
                        image: DecorationImage(
                          image: AssetImage(category['image']!),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      category['title']!,
                      style: Theme.of(
                        context,
                      ).textTheme.bodySmall?.copyWith(color: AppTheme.black),
                    ),
                  ],
                );
              },
            ),
          ),
          const SizedBox(height: 20),
          BannerWidget(),
          const SizedBox(height: 20),

          _sectionHeader("Deal of the Day", onViewAll: () {}),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: ProductCardWidget(
                  name: "Women Dress",
                  imagePath: ImageRes.women,
                  price: "\$25.99",
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: ProductCardWidget(
                  name: "Nike Sneakers",
                  imagePath: ImageRes.men,
                  price: "\$99.99",
                ),
              ),
            ],
          ),

          const SizedBox(height: 20),

          _sectionHeader("Special Offers"),
          const SizedBox(height: 10),
          _specialOfferCard(),

          const SizedBox(height: 20),

          _sectionHeader("Trending Products", onViewAll: () {}),
          const SizedBox(height: 10),

          // SizedBox(
          //   height: 180,
          //   child: ListView.separated(
          //     scrollDirection: Axis.horizontal,
          //     itemCount: 5,
          //     separatorBuilder: (_, __) => const SizedBox(width: 12),
          //     itemBuilder: (_, index) => _trendingProductItem(),
          //   ),
          // ),
          // const SizedBox(height: 20),
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              ImageRes.banner,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(height: 20),

          _sectionHeader("New Arrivals", onViewAll: () {}),
          const SizedBox(height: 10),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 4,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 0.75,
            ),
            itemBuilder:
                (_, index) => ProductCardWidget(
                  name: "New Item",
                  imagePath: ImageRes.kids,
                ),
          ),

          const SizedBox(height: 20),

          _sectionHeader("Sponsored"),
          const SizedBox(height: 10),
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              ImageRes.gifts,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }

  Widget _sectionHeader(String title, {VoidCallback? onViewAll}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        if (onViewAll != null)
          TextButton(onPressed: onViewAll, child: const Text("View All")),
      ],
    );
  }

  // Widget _productCard(
  //   String name,
  //   String imagePath, {
  //   String price = "\$49.99",
  // }) {
  //   return Container(
  //     decoration: BoxDecoration(
  //       color: AppTheme.white,
  //       borderRadius: BorderRadius.circular(10),
  //     ),
  //     child: Column(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: [
  //         AspectRatio(
  //           aspectRatio: 1,
  //           child: ClipRRect(
  //             borderRadius: BorderRadius.circular(12),
  //             child: Image.asset(imagePath, fit: BoxFit.cover),
  //           ),
  //         ),
  //         const SizedBox(height: 6),
  //         Text(name, style: const TextStyle(fontWeight: FontWeight.w500)),
  //         Text(price, style: const TextStyle(color: Colors.red)),
  //       ],
  //     ),
  //   );
  // }

  Widget _specialOfferCard() {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppTheme.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: AppTheme.borderColor,
            blurRadius: 3,
            offset: const Offset(2, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Image.asset(ImageRes.kids, width: 80),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Flat 40% OFF",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const Text("Formal Heels for Women"),
                TextButton(onPressed: () {}, child: const Text("Shop Now")),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Widget _trendingProductItem() {
  //   return Column(
  //     children: [
  //       AspectRatio(
  //         aspectRatio: 1,
  //         child: ClipRRect(
  //           borderRadius: BorderRadius.circular(12),
  //           child: Image.asset(ImageRes.beauty, fit: BoxFit.cover),
  //         ),
  //       ),
  //       const SizedBox(height: 6),
  //       const Text("Trending Item"),
  //       const Text("\$39.00", style: TextStyle(color: Colors.red)),
  //     ],
  //   );
  // }
}
