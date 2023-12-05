import 'package:flutter/material.dart';
import 'package:sber_app/app/models/tariffs_and_limits_button.dart';
import 'package:sber_app/app/theme/images.dart';

class TariffsAndLimitsCard extends StatelessWidget {
  const TariffsAndLimitsCard({super.key, required this.tarriffsAndLimitsButton});

  final TariffsAndLimitsButton tarriffsAndLimitsButton;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                tarriffsAndLimitsButton.image,
                width: 36,
                height: 36,
              ),
              const SizedBox(width: 12),
              Expanded(child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (tarriffsAndLimitsButton.description != null)...[
                      Text(tarriffsAndLimitsButton.title,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.titleSmall
                      ), 
                      Text(
                          tarriffsAndLimitsButton.description!,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.bodySmall
                      )
                    ]
                    else ...[
                      Text(
                        tarriffsAndLimitsButton.title,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: Theme.of(context).textTheme.titleSmall),
                    ]
                  ],
                )
              ),
              const Padding(padding: EdgeInsets.only(left: 16)),
              Image.asset(Images.arrow)
            ],
          )
        ]
      )
    );
  }
}
