import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:com.angelworld.app/controller/splash_controller.dart';
import 'package:com.angelworld.app/data/model/response/review_model.dart';
import 'package:com.angelworld.app/util/dimensions.dart';
import 'package:com.angelworld.app/util/styles.dart';
import 'package:com.angelworld.app/view/base/custom_image.dart';
import 'package:com.angelworld.app/view/base/rating_bar.dart';

class ReviewDialog extends StatelessWidget {
  final ReviewModel review;
  final bool fromOrderDetails;
  const ReviewDialog({Key? key, required this.review, this.fromOrderDetails = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(Dimensions.radiusSmall)),
      insetPadding: const EdgeInsets.all(30),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: SizedBox(width: 500, child: SingleChildScrollView(
        padding: const EdgeInsets.all(Dimensions.paddingSizeLarge),
        child: !fromOrderDetails ? Row(crossAxisAlignment: CrossAxisAlignment.start, children: [

          ClipOval(
            child: CustomImage(
              image: '${Get.find<SplashController>().configModel!.baseUrls!.itemImageUrl}/${review.itemImage ?? ''}',
              height: 60, width: 60, fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: Dimensions.paddingSizeSmall),

          Expanded(child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [

            Text(
              review.itemName!, maxLines: 1, overflow: TextOverflow.ellipsis,
              style: robotoBold.copyWith(fontSize: Dimensions.fontSizeSmall),
            ),

            RatingBar(rating: review.rating!.toDouble(), ratingCount: null, size: 15),

            Text(
              review.customerName ?? '',
              maxLines: 1, overflow: TextOverflow.ellipsis,
              style: robotoMedium.copyWith(fontSize: Dimensions.fontSizeExtraSmall),
            ),

            Text(
              review.comment!,
              style: robotoRegular.copyWith(fontSize: Dimensions.fontSizeExtraSmall, color: Theme.of(context).disabledColor),
            ),

          ])),

        ]) : Text(
          review.comment!,
          style: robotoRegular.copyWith(fontSize: Dimensions.fontSizeSmall, color: Theme.of(context).textTheme.bodyLarge!.color),
        ),
      )),
    );
  }
}
