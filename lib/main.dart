import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slash_task/features/home/presentation/view/home_view.dart';
import 'package:slash_task/features/product_details/presentation/view_model/product_details_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductDetailsCubit(),
      child: ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        // Use builder only if you need to use library outside ScreenUtilInit context
        builder: (_, child) {
          return MaterialApp(
            theme: ThemeData(
              dividerColor: Colors.transparent,
              useMaterial3: false,
              primarySwatch: Colors.pink,
            ),
            debugShowCheckedModeBanner: false,
            home: child,
          );
        },
        child: const HomeView(),
      ),
    );
  }
}
