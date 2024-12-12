import 'package:flutter/material.dart';
import 'package:news/AppTheme/app_theme.dart';
import 'package:news/News/news_details.dart';
import 'package:news/UI/Home/home_screen.dart';
import 'package:provider/provider.dart';

import 'DataLayer/DI/di.dart';
import 'News/news_search_bloc.dart';


void main() {
  configureDependencies();
  runApp(MultiProvider(providers: [ Provider<NewsSearchBloc>(
    create: (_) => getIt<NewsSearchBloc>(),
  ),],child:  MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName:(_)=>HomeScreen(),
       NewsDetails.routeName:(_)=>NewsDetails()

      },
    );
  }
}
