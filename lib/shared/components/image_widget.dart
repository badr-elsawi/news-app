import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  String? imageLink;

  ImageWidget({this.imageLink});

  @override
  Widget build(BuildContext context) {
    return Image(
      width: double.infinity,
      fit: BoxFit.cover,
      image: NetworkImage(imageLink!),
      loadingBuilder: (context, Widget child, ImageChunkEvent? loading) {
        if (loading == null) return child;
        return LoadingImage(loading);
      },
      errorBuilder: (context,ex,stack) => ErrorImage(),
    );
  }
}

class LoadingImage extends StatelessWidget {
  ImageChunkEvent? loading;

  LoadingImage(this.loading);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 200,
      child: Center(
        child: CircularProgressIndicator(
          color: Theme.of(context).cardColor,
          value: loading!.expectedTotalBytes != null
              ? loading!.cumulativeBytesLoaded / loading!.expectedTotalBytes!
              : null,
        ),
      ),
    );
  }
}

class ErrorImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Image(
      width: double.infinity,
      fit: BoxFit.cover,
      color: Theme.of(context).bottomNavigationBarTheme.unselectedItemColor,
      image: AssetImage('assets/images/place.png'),
    );
  }
}
