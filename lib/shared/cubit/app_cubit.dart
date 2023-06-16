import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/shared/cubit/app_states.dart';
import 'package:news_app/shared/network/local/cash_service.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);

  bool isDark = false;

  void changeMode({bool? themeDark}) {
    if(themeDark != null){
      isDark = themeDark;
      emit(ChangeModeState());
    }
    else{
      isDark = !isDark;
      CashService.putData(key: 'isDark', value: isDark).then((value) {
        emit(ChangeModeState());
      });
    }
  }
}
