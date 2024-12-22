import 'package:flutter/material.dart';
import '../../utils/colors.dart';

class PhotoUpload extends StatelessWidget {
  final String label, subText, icon, buttonTitle, buttonIcon;
  final void Function()? onPressed;

  const PhotoUpload({
    super.key,
    required this.label,
    required this.subText,
    this.onPressed,
    this.icon = "assets/images/nid card.png",
    this.buttonIcon = "assets/icons/take photo_icon.png",
    required this.buttonTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      constraints: const BoxConstraints(maxWidth: 300),
      decoration: BoxDecoration(
        border: Border.all(color: primary),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Image.asset(
            icon,
            height: 80,
            width: 80,
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: const TextStyle(
              fontFamily: 'Lato',
              fontSize: 16,
              color: secondary,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            subText,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontFamily: 'Lato',
              fontSize: 14,
              color: grey2,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 8),
          InkWell(
            onTap: onPressed,
            borderRadius: BorderRadius.circular(5),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: primary,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    buttonIcon,
                    height: 16,
                    width: 16,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    buttonTitle,
                    style: const TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
