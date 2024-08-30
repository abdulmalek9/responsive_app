import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_app/utils/app_images.dart';
import 'package:responsive_app/utils/app_styles.dart';

class MyCardWidget extends StatelessWidget {
  const MyCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 425 / 215,
      child: Container(
          padding:
              const EdgeInsets.only(top: 16, left: 20, right: 24, bottom: 17),
          height: 215,
          decoration: BoxDecoration(
            image: const DecorationImage(
                image: AssetImage(Assets.imagesCardBackground)),
            borderRadius: BorderRadius.circular(12),
            color: const Color(0xFF4EB7F2),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                // contentPadding: const EdgeInsets.only(
                //   top: 16,
                //   left: 20,
                //   right: 24,
                // ),
                title: Text(
                  "Name card",
                  style: AppStyles.styleRegular16(context)
                      .copyWith(color: Colors.white),
                ),
                subtitle: Text(
                  "Syah Bandi",
                  style: AppStyles.styleMedium20(context),
                ),
                trailing: SvgPicture.asset(Assets.imagesGallery),
              ),
              const Expanded(child: SizedBox()),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "0918 8124 0042 8129",
                    style: AppStyles.styleSemiBold24(context)
                        .copyWith(color: Colors.white),
                  ),
                  Text(
                    "12/20 - 124",
                    style: AppStyles.styleRegular16(context)
                        .copyWith(color: Colors.white),
                  )
                ],
              ),
            ],
          )),
    );
  }
}
