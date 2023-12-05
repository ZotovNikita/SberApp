import 'package:flutter/material.dart';
import 'package:sber_app/app/models/chapter.dart';
import 'package:sber_app/app/models/service.dart';
import 'package:sber_app/app/widgets/category_name.dart';
import 'package:sber_app/app/widgets/services_widgets/service_card.dart';

class Services extends StatelessWidget {
  const Services({super.key, required this.chapter, required this.services});

  final Chapter chapter;
  final List<Service> services;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CategoryName(
            title: chapter.title, 
            description: chapter.description
          )
        ),
        const SizedBox(height: 20),
        SizedBox(
          width: double.infinity,
          height: 140,
          child: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(bottom: 10),
                itemCount: services.length,
                itemBuilder: (ctx, index) {
                  return ServiceCard(service: services[index]);
                }
              )
            )
          ),
        const SizedBox(height: 10)
      ],
    );
  }
}
