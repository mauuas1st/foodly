import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class ProfileMenuCard extends StatelessWidget {
  const ProfileMenuCard({
    super.key,
    this.title,
    this.subTitle,
    this.svgSrc,
    this.press,
  });

  final String? title, subTitle, svgSrc;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding / 2),
      child: Container(
        width: double.infinity, // Memastikan InkWell memenuhi lebar layar
        child: InkWell(
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          onTap: press,
          child: Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 5, horizontal: 16), // Bisa diatur sesuai kebutuhan
            child: Row(
              children: [
                SvgPicture.asset(
                  svgSrc!,
                  height: 24,
                  width: 24,
                  colorFilter: ColorFilter.mode(
                    titleColor.withOpacity(0.64),
                    BlendMode.srcIn,
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title!,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        subTitle!,
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: 14,
                          color: titleColor.withOpacity(0.54),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 8),
                const Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
