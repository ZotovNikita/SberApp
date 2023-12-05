import 'package:flutter/material.dart';
import 'package:sber_app/data/fake_data.dart';
import 'package:sber_app/app/widgets/appbar.dart';
import 'package:sber_app/app/widgets/services_widgets/services.dart';
import 'package:sber_app/app/theme/colors.dart';

class UserProfilePage extends StatefulWidget {
  const UserProfilePage({super.key});

  @override
  State<UserProfilePage> createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.primary,
        body: SafeArea(
            child: NestedScrollView(
                headerSliverBuilder: (context, value) {
                  return [Appbar(tabController: _tabController, user: user)];
                },
                body: TabBarView(controller: _tabController, children: [
                  ListView(
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        const SizedBox(height: 30),
                        Services(chapter: enabled, services: services)
                      ]),
                  const Center(child: CircularProgressIndicator())
                ]))));
  }
}
