import 'package:flutter/material.dart';
import 'package:sber_app/app/utils/constants.dart';
import 'package:sber_app/app/models/user.dart';

class Appbar extends StatelessWidget {
  const Appbar({super.key, required this.tabController, required this.user});

  final TabController tabController;
  final User user;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: AppColors.primary,
      elevation: 2,
      pinned: true,
      floating: false,
      expandedHeight: 280,
      actions: [
        IconButton(
            icon: const Icon(Icons.logout),
            color: AppColors.tabBrand,
            onPressed: () {})
      ],
      leading: IconButton(
          icon: const Icon(Icons.close),
          color: AppColors.tabBrand,
          onPressed: () {}),
      bottom: TabBar(
        controller: tabController,
        indicatorColor: AppColors.tabBrand,
        indicatorSize: TabBarIndicatorSize.tab,
        labelColor: AppColors.textPrimary,
        unselectedLabelColor: AppColors.textSecondary,
        tabs: const <Widget>[
          Tab(
            child: Text(
              Strings.profile,
            ),
          ),
          Tab(
            child: Text(
              Strings.settings,
            ),
          ),
        ],
      ),
      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.pin,
        background: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const SizedBox(
                  height: 36,
                ),
                Container(
                  // alignment: Alignment.topCenter,
                  width: 110,
                  height: 110,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(38),
                    ),
                    shadows: const [
                      BoxShadow(
                        color: AppColors.shadow,
                        blurRadius: 24,
                        offset: Offset(0, 16),
                        spreadRadius: -16,
                      )
                    ],
                  ),
                  child: Image.asset(user.image),
                ),
                const SizedBox(
                  height: 36,
                ),
                Text(user.name,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleLarge),
                const SizedBox(
                  height: 10,
                ),
              ]),
        ),
      ),
    );
  }
}
