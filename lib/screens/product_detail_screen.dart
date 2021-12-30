import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
import 'package:ox_street_assigment/model/product.dart';
import 'package:ox_street_assigment/res/images/images.dart';
import 'package:ox_street_assigment/utils/dimens.dart';
import 'package:ox_street_assigment/utils/ui_utils.dart';
import 'package:ox_street_assigment/generated/l10n.dart';
import 'package:ox_street_assigment/widget/product_item.dart';

class ProductDetailScreen extends StatefulWidget {
  final Product? product;
  final List<Product> similarProduct;

  const ProductDetailScreen(
      {Key? key, this.product, this.similarProduct = const []})
      : super(key: key);

  @override
  _ProductDetailScreenState createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Image.asset(
            Images.icLogo,
            height: 36.0,
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              CachedNetworkImage(
                imageUrl: widget.product?.imageUrls?[0] ?? '',
                width: getScreenWidth(context),
                errorWidget: (context, url, error) => Image.asset(
                  Images.icLogo,
                  width: Dimens.imageProductSize,
                  height: Dimens.imageProductSize,
                ),
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: Dimens.regularPadding,
              ),
              Text(
                widget.product?.name ?? '',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                    fontSize: Dimens.homeTitleFont * 1.5,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: Dimens.smallPadding,
              ),
              Text(
                S.current.guaranteed,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                    fontSize: Dimens.homeTitleFont,
                    fontWeight: FontWeight.w400),
              ),
              _divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _infoWidget(S.current.status,
                      widget.product?.status?.toUpperCase() ?? ''),
                  _infoWidget(S.current.releaseDate,
                      shortcutDate(widget.product?.createdAt ?? '0')),
                  _infoWidget(
                      S.current.rank, widget.product?.rank?.toString() ?? '')
                ],
              ),
              _divider(),
              _titleWidget(S.current.productDetails),
              Padding(
                  padding: const EdgeInsets.all(Dimens.smallPadding),
                  child: Html(
                    data: widget.product?.description ?? '',
                  )),
              _divider(),
              if (widget.similarProduct.isNotEmpty)...[
                _titleWidget(S.current.similarProducts),
                SizedBox(
                    height: Dimens.productWidgetHeight,
                    child: _listSimilarProducts())
              ],
              SafeArea(child: Container())
            ],
          ),
        ));
  }

  Widget _divider() {
    return Container(
      margin: const EdgeInsets.all(Dimens.regularPadding),
      color: Colors.blueGrey,
      width: getScreenWidth(context),
      height: 0.5,
    );
  }

  Widget _infoWidget(String title, String value) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
              fontSize: Dimens.seeAllFont, fontWeight: FontWeight.w400),
        ),
        const SizedBox(
          height: Dimens.tinyPadding,
        ),
        Text(
          value,
          style: const TextStyle(
              fontSize: Dimens.homeProductNameFont,
              fontWeight: FontWeight.w600),
        ),
      ],
    );
  }

  Widget _titleWidget(String title) {
    return Container(
      width: getScreenWidth(context),
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.symmetric(horizontal: Dimens.regularPadding),
      child: Text(
        title,
        style: const TextStyle(
            fontSize: Dimens.homeTitleFont, fontWeight: FontWeight.w700),
      ),
    );
  }

  Widget _listSimilarProducts() {
    return ListView.builder(
        itemCount: widget.similarProduct.length > 10
            ? 10
            : widget.similarProduct.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final Product product = widget.similarProduct[index];
          if (product.uuid != widget.product!.uuid) {
            return GestureDetector(
              onTap: () {
                navigateTo(ProductDetailScreen(
                  product: product,
                ));
              },
              child: ProductItem(
                product: product,
              ),
            );
          }
          return Container();
        });
  }
}
