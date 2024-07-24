

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../pages/sign_in/bindings.dart';
import '../../pages/sign_in/view.dart';
import 'routes.dart';

class AppPages {
  static const INITIAL = AppRoutes.INITIAL;
  static const APPlication = AppRoutes.Application;
  static final RouteObserver<Route> observer = RouteObservers();
  static List<String> history = [];
  static const SIGN_IN = AppRoutes.SIGN_IN;

  static final List<GetPage> routes = [
    GetPage(
      name: AppRoutes.SIGN_IN,
      page: () => SignInPage(),
      binding: SignInBinding(),
    ),

    // GetPage(
    //     name: AppRoutes.Photoimgview,
    //     page: () => const PhotoImageView(),
    //     binding: PhotoImageViewBinding()),
  ];
}
