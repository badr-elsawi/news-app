import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/layout/layout.dart';
import 'package:news_app/layout/news_cubit/news_cubit.dart';
import 'package:news_app/shared/cubit/app_cubit.dart';
import 'package:news_app/shared/cubit/app_states.dart';
import 'package:news_app/shared/network/local/cash_service.dart';
import 'package:news_app/shared/network/remote/http_service.dart';
import 'package:news_app/shared/styles/styles.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  DioService.init();
  await CashService.init();
  bool isDark = CashService.getBoolen(key: 'isDark');
  runApp(MyApp(isDark));
}

class MyApp extends StatelessWidget {

  bool isDark ;
  MyApp(this.isDark);
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (BuildContext contextt) => AppCubit()..changeMode(themeDark: isDark)),
        BlocProvider(
            create: (BuildContext contextt) => NewsCubit()..getHomeNews()),
      ],
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = AppCubit.get(context);
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'My News',
            theme: lightTheme,
            darkTheme: darkTheme,
            themeMode: cubit.isDark ? ThemeMode.dark : ThemeMode.light,
            home: Home(),
          );
        },
      ),
    );
  }
}


