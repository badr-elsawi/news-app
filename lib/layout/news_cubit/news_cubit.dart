import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/layout/news_cubit/news_states.dart';
import 'package:news_app/models/data_model.dart';
import 'package:news_app/pages/health.dart';
import 'package:news_app/pages/home.dart';
import 'package:news_app/pages/sport.dart';
import 'package:news_app/pages/tech.dart';
import 'package:news_app/shared/constants.dart';
import 'package:news_app/shared/network/remote/http_service.dart';

class NewsCubit extends Cubit<NewsStates> {
  NewsCubit() : super(NewsInitialState());

  static NewsCubit get(context) => BlocProvider.of(context);
  int pageIndex = 0;
  List<Widget> pages = [
    HomePage(),
    TechPage(),
    SportPage(),
    HealthPage(),
  ];

  void changePage(int index) {
    pageIndex = index;

    emit(ChangeNavBarState());
    if(index == 1) getTechNews();
    if(index == 2) getSportNews();
    if(index == 3) getHealthNews();
  }

  // get home news *****************************************
  Model? homeModel;

  void getHomeNews() async {
    emit(GetHomeLoadingState());
    DioService.getData(
      url: 'v2/top-headlines',
      query: {
        'country': 'us',
        'apiKey': 'e652c93738ff4d6a8173d6868e82c5d0',
      },
    ).then((value) {
      print(value.data);
      homeModel = Model.fromJson(value.data);
      print('*******************************************');
      print(homeModel!.articles[2].title);
      emit(GetHomeSuccessState());
    }).catchError((e) {
      print('$e **************************************');
      emit(GetHomeErrorState());
    });
  }

  //*********************************************************
  // get sport news *****************************************
  Model? sportModel;

  void getSportNews() async {
    emit(GetSportLoadingState());
    if(sportModel == null){
      DioService.getData(
        url: 'v2/top-headlines',
        query: {
          'country': 'us',
          'category': 'sports',
          'apiKey': 'e652c93738ff4d6a8173d6868e82c5d0',
        },
      ).then((value) {
        print(value.data);
        sportModel = Model.fromJson(value.data);
        print('*******************************************');
        print(sportModel!.articles[2].title);
        emit(GetSportSuccessState());
      }).catchError((e) {
        print('$e **************************************');
        emit(GetSportErrorState());
      });
    }
    else{
      emit(GetSportLoadingState());
      await Future.delayed(Duration(milliseconds: 500));
      emit(GetSportSuccessState());
    }
  }

  //*********************************************************
  // get tech news *****************************************
  Model? techModel;

  void getTechNews() async {
    emit(GetTechLoadingState());
    if (techModel == null) {
      DioService.getData(
        url: 'v2/top-headlines',
        query: {
          'country': 'us',
          'category': 'technology',
          'apiKey': 'e652c93738ff4d6a8173d6868e82c5d0',
        },
      ).then((value) {
        print(value.data);
        techModel = Model.fromJson(value.data);
        print('*******************************************');
        print(techModel!.articles[2].title);
        emit(GetTechSuccessState());
      }).catchError((e) {
        print('$e **************************************');
        emit(GetTechErrorState());
      });
    } else {
      emit(GetTechLoadingState());
      await Future.delayed(Duration(milliseconds: 500));
      emit(GetTechSuccessState());
    }
  }

//*********************************************************
  // get sport news *****************************************
  Model? healthModel;

  void getHealthNews() async {
    emit(GetHealthLoadingState());
    if(healthModel == null){
      DioService.getData(
        url: 'v2/top-headlines',
        query: {
          'country': 'us',
          'category': 'health',
          'apiKey': 'e652c93738ff4d6a8173d6868e82c5d0',
        },
      ).then((value) {
        print(value.data);
        healthModel = Model.fromJson(value.data);
        print('*******************************************');
        print(healthModel!.articles[2].title);
        emit(GetHealthSuccessState());
      }).catchError((e) {
        print('$e **************************************');
        emit(GetHealthErrorState());
      });
    }
    else{
      emit(GetHealthLoadingState());
      await Future.delayed(Duration(milliseconds: 500));
      emit(GetHealthSuccessState());
    }
  }
//*********************************************************
}
