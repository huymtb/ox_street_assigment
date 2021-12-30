import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ox_street_assigment/model/product.dart';
import 'package:ox_street_assigment/res/images/images.dart';
import 'package:ox_street_assigment/utils/dimens.dart';
import 'package:ox_street_assigment/utils/ui_utils.dart';
import 'package:ox_street_assigment/generated/l10n.dart';

class ProductItem extends StatelessWidget {
  final Product? product;

  const ProductItem({Key? key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Dimens.productWidgetWidth,
      height: Dimens.productWidgetHeight,
      margin: const EdgeInsets.only(
          left: Dimens.regularPadding,
          top: Dimens.smallPadding,
          right: Dimens.smallPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (product?.imageUrls?.isNotEmpty ?? false)
            ClipRRect(
              borderRadius:
                  const BorderRadius.all(Radius.circular(Dimens.seeAllRadius)),
              child: CachedNetworkImage(
                imageUrl: product?.imageUrls?[0] ?? '',
                width: Dimens.imageProductSize,
                height: Dimens.imageProductSize,
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
          const SizedBox(
            height: Dimens.smallPadding,
          ),
          Text(
            product?.name ?? '',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
                fontSize: Dimens.homeTitleFont, fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: Dimens.tinyPadding,
          ),
          Text(
            '${S.current.createAt} ${shortcutDate(product?.updatedAt ?? '0')}',
            style: const TextStyle(fontSize: Dimens.seeAllFont),
          )
        ],
      ),
    );
  }
}
