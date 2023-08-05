import 'package:flutter/material.dart';
import 'package:news_app/layout/news_cubit/news_cubit.dart';
import 'package:news_app/shared/components/image_widget.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../models/article_model.dart';

class ArticleItem extends StatelessWidget {
  final Article model;

  ArticleItem({required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      padding: EdgeInsetsDirectional.only(
        top: 0,
        bottom: 10,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).bottomNavigationBarTheme.backgroundColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            blurRadius: 20,
            color: Colors.black.withOpacity(.1),
          )
        ],
      ),
      child: Column(
        children: [
          ImageWidget(imageLink: model.urlToImage.toString()),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  textDirection: TextDirection.ltr,
                  textAlign: TextAlign.start,
                  maxLines: 2,
                  '${model.title}',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Text(
                      textAlign: TextAlign.right,
                      '${model.publishedAt}',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    Spacer(),
                    MaterialButton(
                      onPressed: () async {
                        if (await canLaunch('${model.url!} 555465656')) {
                          launch(
                            model.url!,
                            forceWebView: true,
                            enableJavaScript: true,
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'unvalid link',
                              ),
                            ),
                          );
                        }
                      },
                      color: Theme.of(context).cardColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Text(
                        'view',
                        style: Theme.of(context).textTheme.bodySmall!.merge(
                              TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context)
                                    .bottomNavigationBarTheme
                                    .selectedItemColor,
                              ),
                            ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
