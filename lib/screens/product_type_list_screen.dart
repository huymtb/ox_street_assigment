import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ox_street_assigment/model/product.dart';
import 'package:ox_street_assigment/res/images/images.dart';
import 'package:ox_street_assigment/screens/product_detail_screen.dart';
import 'package:ox_street_assigment/utils/dimens.dart';
import 'package:ox_street_assigment/utils/ui_utils.dart';
import 'package:ox_street_assigment/generated/l10n.dart';

class ProductTypeListScreen extends StatefulWidget {
  final String title;
  final List<Product> listProduct;

  const ProductTypeListScreen(
      {Key? key, this.title = '', this.listProduct = const []})
      : super(key: key);

  @override
  _ProductTypeListScreenState createState() => _ProductTypeListScreenState();
}

class _ProductTypeListScreenState extends State<ProductTypeListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(
              color: Colors.black,
              fontSize: Dimens.homeTitleFont,
              fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () => Get.back(),
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 0.6),
          itemCount: widget.listProduct.length,
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemBuilder: (BuildContext context, int index) {
            final Product product = widget.listProduct[index];
            return GestureDetector(
              onTap: () {
                navigateTo(ProductDetailScreen(
                  product: product,
                  similarProduct: widget.listProduct,
                ));
              },
              child: Card(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (product.imageUrls?.isNotEmpty ?? false)
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(Dimens.seeAllRadius),
                            topRight: Radius.circular(Dimens.seeAllRadius)),
                        child: CachedNetworkImage(
                          imageUrl: product.imageUrls?[0] ?? '',
                          width: getScreenWidth(context) / 2,
                          height: getScreenWidth(context) / 2,
                          memCacheHeight: 400,
                          errorWidget: (context, url, error) => Image.asset(
                            Images.icLogo,
                            width: Dimens.imageProductSize,
                            height: Dimens.imageProductSize,
                          ),
                          fit: BoxFit.cover,
                        ),
                      )
                    else
                      Image.asset(
                        Images.icLogo,
                        width: Dimens.imageProductSize,
                        height: Dimens.imageProductSize,
                      ),
                    Padding(
                      padding: const EdgeInsets.all(Dimens.smallPadding),
                      child: Text(
                        product.name ?? '',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            fontSize: Dimens.homeTitleFont,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: Dimens.smallPadding),
                        child: Text(
                          product.description ?? '',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              fontSize: Dimens.homeProductNameFont,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(Dimens.smallPadding),
                      child: Text(
                        '${S.current.createAt} ${shortcutDate(product.updatedAt ?? '0')}',
                        style: const TextStyle(
                            fontSize: Dimens.seeAllFont, color: Colors.teal),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
