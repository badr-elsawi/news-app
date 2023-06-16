import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/layout/news_cubit/news_states.dart';
import 'package:news_app/models/article_model.dart';
import '../layout/news_cubit/news_cubit.dart';
import '../shared/components/article_item.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit,NewsStates>(
      listener: (context,state) {},
      builder: (context,state){
        var cubit = NewsCubit.get(context);
        return ConditionalBuilder(
          condition: cubit.homeModel != null,
          builder: (context) => ListView.separated(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsetsDirectional.only(
              top: 10,
              start: 20,
              end: 20,
            ),
            itemBuilder: (context, index) => ArticleItem(
              model: cubit.homeModel!.articles[index],
            ),
            separatorBuilder: (context, index) => const SizedBox(height: 15),
            itemCount: cubit.homeModel!.articles.length,
          ),
          fallback: (context) => Center(
            child: CupertinoActivityIndicator(
              animating: true,
              radius: 20,
              color: Theme.of(context).bottomNavigationBarTheme.unselectedItemColor,
            ),
          ),
        );
      },
    );
  }
}
