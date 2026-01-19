import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ocrtextz/screen/riverpod/navstate.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final indexNavbar = ref.watch(navBarRiverpod);
        final stateNavbar = ref.read(navBarRiverpod.notifier);

        return Scaffold(
          body: ref.read(listScreenRiverpod)[indexNavbar],
          bottomNavigationBar: ClipRRect(
            borderRadius: BorderRadiusGeometry.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
            ),
            child: BottomNavigationBar(
              onTap: (value) => stateNavbar.state = value,

              items: [
                BottomNavigationBarItem(
                  icon: indexNavbar == 0
                      ? SvgPicture.asset('assets/icons/Home_click.svg')
                      : SvgPicture.asset('assets/icons/Home_unclick.svg'),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: indexNavbar == 1
                      ? SvgPicture.asset('assets/icons/History_click.svg')
                      : SvgPicture.asset('assets/icons/History_unclick.svg'),
                  label: 'History',
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
