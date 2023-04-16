import 'package:ai_drink/constants/routes.dart';
import 'package:ai_drink/store/auth_slice.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Consumer<AuthSlice>(
      builder: (context, authSlice, _) {
        if (authSlice.userIdentity != null) {
          Future.delayed(Duration.zero, () {
            Navigator.pushNamedAndRemoveUntil(context, Routes.mainNavigation, (route) => false);
          });
        }

        return SafeArea(
          child: Scaffold(
            body: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(16),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/background.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "SWIPE DRINKER",
                    style: textTheme.headlineLarge!.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  Column(
                    children: [
                      CircularProgressIndicator(),
                      const SizedBox(height: 16),
                      Text(
                        "Authenticating...",
                        style: textTheme.bodyMedium!.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
