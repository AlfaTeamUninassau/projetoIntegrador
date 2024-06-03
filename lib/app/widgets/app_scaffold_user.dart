import 'package:flutter/material.dart';
import 'package:ijato/app/widgets/appbar_home.dart';
import 'package:ijato/app/widgets/appbar_user.dart';

class AppScaffoldUSer extends StatelessWidget {
  final Widget body;
  final BottomNavigationBar? bottomNavigationBar;

  const AppScaffoldUSer(
      {required this.body, super.key, this.bottomNavigationBar});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppbarUser(),
      body: body,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
