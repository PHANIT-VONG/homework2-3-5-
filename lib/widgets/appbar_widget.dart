import 'package:flutter/material.dart';
import 'package:homework2/constants/app_color.dart';
import 'package:homework2/widgets/text_widget.dart';

class AppBarWidget extends StatelessWidget {
  final String title;
  final Function() onBack;
  final Function() onCart;

  const AppBarWidget({
    super.key,
    required this.title,
    required this.onBack,
    required this.onCart,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColor.grey,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              IconButton(
                onPressed: onBack,
                icon: const Icon(Icons.arrow_back_ios),
              ),
              TextWidget(
                text: title,
                size: 20,
                fontWeight: FontWeight.w700,
              )
            ],
          ),
          Stack(
            children: [
              IconButton(
                onPressed: onCart,
                icon: const Icon(Icons.shopping_bag, size: 30),
              ),
              Positioned(
                right: 3,
                top: 3,
                child: Container(
                  alignment: Alignment.center,
                  height: 20.0,
                  width: 20.0,
                  decoration: BoxDecoration(
                    color: AppColor.purple,
                    shape: BoxShape.circle,
                  ),
                  child: const TextWidget(
                    text: '0',
                    size: 15,
                    color: AppColor.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
