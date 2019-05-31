import 'package:flutter/material.dart';
import './pages/app.dart';
import 'package:provide/provide.dart';
import 'provide/current_index.dart';

void main() {
  var providers = Providers();
  var currentIdex = CurrentIndexProvide();

  providers..provide(Provider<CurrentIndexProvide>.value(currentIdex));

  runApp(ProviderNode(
    child: WalletPage(),
    providers: providers,
  ));
}
