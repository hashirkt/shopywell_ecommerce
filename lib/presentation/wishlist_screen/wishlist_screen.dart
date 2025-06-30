import 'package:flutter/material.dart';
import 'package:shopywell/presentation/widgets/home_appbar_widget.dart';
import 'package:shopywell/presentation/widgets/product_card_widget.dart';
import 'package:shopywell/presentation/widgets/search_textfield_widget.dart';
import 'package:shopywell/utils/image_res.dart';
import 'package:shopywell/utils/theme.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.scaffoldBgColor,
      appBar: HomeAppbarWidget(),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(32),
        child: Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SearchTextFieldWidget(),
                SizedBox(height: 20),
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
                SizedBox(height: 8),
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
                SizedBox(height: 8),
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
                SizedBox(height: 8),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
