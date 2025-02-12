import 'package:flutter/material.dart';
import '../widgets/custom_search_bar.dart';
import '../widgets/landing_widget.dart';
import '../widgets/user_data_widget.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        const LandingWidget(),
        UserData(),
        const CustomSearchBar(),
      ],
    ));
  }
}
