import 'package:flutter/material.dart';
import 'package:sber_app/app/theme/colors.dart';
import 'package:sber_app/app/models/chapter.dart';
import 'package:sber_app/app/widgets/category_name.dart';
import 'package:sber_app/app/models/tariffs_and_limits_button.dart';
import 'package:sber_app/app/widgets/tariffs_and_limits_widgets/tariffs_and_limits_card.dart';

class TariffsAndLimits extends StatelessWidget {
  const TariffsAndLimits(
  {super.key, required this.chapter, required this.tariffsAndLimitsButtons});

  final Chapter chapter;
  final List<TariffsAndLimitsButton> tariffsAndLimitsButtons;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CategoryName(
            title: chapter.title, description: chapter.description
          ),
          const SizedBox(height: 12),
          InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(12),
            child: TariffsAndLimitsCard(tarriffsAndLimitsButton: tariffsAndLimitsButtons[0]),
          ),
          for (var (index, item) in tariffsAndLimitsButtons.indexed)
            if (index != 0) ...[
              Divider(
                height: 10,
                indent: 50,
                color: AppColors.divider,
              ),
              InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(12),
                child: TariffsAndLimitsCard(tarriffsAndLimitsButton: item),
              ),
            ]
        ],
      )
    );
  }
}
