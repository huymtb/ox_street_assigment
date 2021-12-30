import 'package:flutter/material.dart';
import 'package:ox_street_assigment/model/product.dart';
import 'package:ox_street_assigment/screens/product_detail_screen.dart';
import 'package:ox_street_assigment/utils/dimens.dart';
import 'package:ox_street_assigment/generated/l10n.dart';
import 'package:ox_street_assigment/utils/ui_utils.dart';
import 'package:ox_street_assigment/widget/loading_widget.dart';
import 'package:ox_street_assigment/widget/product_item.dart';

class HomeItemWidget extends StatelessWidget {
  final String title;
  final Function? seeAllPressed;
  final List<Product> listProduct;
  final bool isShowLoading;

  const HomeItemWidget(
      {Key? key,
      this.title = '',
      this.seeAllPressed,
      this.listProduct = const [],
      this.isShowLoading = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Object>(
        stream: null,
        builder: (context, snapshot) {
          return Column(
            children: [
              Row(
                children: [
                  const SizedBox(
                    width: Dimens.regularPadding,
                  ),
                  Expanded(
                    child: Text(
                      title,
                      style: const TextStyle(
                          fontSize: Dimens.homeTitleFont,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      seeAllPressed?.call();
                    },
                    child: Container(
                      width: 60.0,
                      height: 30.0,
                      margin:
                          const EdgeInsets.only(right: Dimens.regularPadding),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                              Radius.circular(Dimens.seeAllRadius)),
                          border: Border.all(color: Colors.grey)),
                      child: Text(
                        S.current.seeAll,
                        style: const TextStyle(fontSize: Dimens.seeAllFont),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: Dimens.regularPadding,
              ),
              SizedBox(
                  height: Dimens.productWidgetHeight,
                  child: isShowLoading
                      ? const LoadingWidget()
                      : _buildListProduct())
            ],
          );
        });
  }

  Widget _buildListProduct() {
    if (listProduct.isEmpty) {
      return Center(
        child: Text(
          S.current.emptyProduct,
          style: const TextStyle(fontSize: Dimens.homeTitleFont),
        ),
      );
    }
    return ListView.builder(
        itemCount: listProduct.length > 5 ? 5 : listProduct.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final Product product = listProduct[index];
          return GestureDetector(
            onTap: () {
              navigateTo(ProductDetailScreen(
                product: product,
                similarProduct: listProduct,
              ));
            },
            child: ProductItem(
              product: product,
            ),
          );
        });
  }
}
