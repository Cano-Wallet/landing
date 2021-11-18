import 'package:cano/core/utils/globals.dart';
import 'package:cano/core/utils/styles.dart';
import 'package:cano/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';
import 'package:url_launcher/url_launcher.dart';

import 'main_screen.controller.dart';

class MainScreen extends GetView<MainScreenController> {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Container(
            constraints: Styles.containerConstraints,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(Images.logo, width: 100),
                const SizedBox(height: 20),
                const Text(
                  'Cano',
                  style: TextStyle(fontSize: 40),
                ),
                const SizedBox(height: 10),
                const Text(
                  kAppDescription,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey),
                ),
                const SizedBox(height: 50),
                TextButton.icon(
                  label: const Text('Download'),
                  icon: const Icon(LineIcons.download),
                  onPressed: () => launch(kAppGithubReleasesUrl),
                ),
                const Divider(height: 50),
                const Text(
                  'Connect',
                  style: TextStyle(color: Colors.grey),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: const Icon(LineIcons.github),
                      onPressed: () => launch(kAppGithubUrl),
                    ),
                    IconButton(
                      icon: const Icon(LineIcons.twitter),
                      onPressed: () => launch(kAppTwitterUrl),
                    ),
                    IconButton(
                      icon: const Icon(LineIcons.facebook),
                      onPressed: () => launch(kAppFacebookUrl),
                    ),
                    IconButton(
                      icon: const Icon(LineIcons.instagram),
                      onPressed: () => launch(kAppInstagramUrl),
                    ),
                  ],
                ),
                const Divider(),
                const SizedBox(height: 20),
                TextButton.icon(
                  icon: const Icon(LineIcons.twitter),
                  label: const Text(kDeveloperTwitterHandle),
                  onPressed: () => launch(kDeveloperTwitterUrl),
                ),
                const Text(
                  'Developer',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
