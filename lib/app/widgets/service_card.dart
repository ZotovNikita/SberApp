import 'package:flutter/material.dart';
import 'package:sber_app/app/models/service.dart';
import 'package:sber_app/app/utils/constants.dart';

class ServiceCard extends StatelessWidget {
  const ServiceCard({super.key, required this.service});

  final Service service;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: ElevatedButton(
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(service.image, width: 36, height: 36),
                  const SizedBox(width: 13),
                  Text(
                    service.serviceTitle,
                    style: AppFonts.titleMedium,
                  )
                ],
              ),
              Expanded(child: Container()),
              Text(service.cost,
                  style: Theme.of(context).textTheme.titleMedium),
              Text(service.payment,
                  style: Theme.of(context).textTheme.bodySmall)
            ],
          ),
        )
      ),
    );
  }
}
