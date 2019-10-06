import 'package:flutter/material.dart';
import 'package:flukit/flukit.dart';

class SwiperDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SwiperDemo'),
        elevation: 0.0,
      ),
      body: SwiperRoute(),
    );
  }
}

class SwiperRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: Column(
          children: <Widget>[
            AspectRatio(
              aspectRatio: 16.0 / 9.0,
              child: Swiper(
                indicatorAlignment: AlignmentDirectional.bottomEnd,
                speed: 400,
                indicator: CircleSwiperIndicator(),
                children: <Widget>[
                  Image.network(
                      'https://resources.ninghao.org/images/overkill.png',
                      fit: BoxFit.cover),
                  Image.network(
                      'https://resources.ninghao.org/images/say-hello-to-barry.jpg',
                      fit: BoxFit.cover),
                  Image.network(
                      'https://resources.ninghao.org/images/space-skull.jpg',
                      fit: BoxFit.cover)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18.0),
              child: SizedBox(
                height: 200.0,
                child: Swiper(
                  circular: true,
                  //reverse: true, //反向
                  indicator: RectangleSwiperIndicator(),
                  children: <Widget>[
                    Image.network(
                        'https://resources.ninghao.org/images/overkill.png',
                        fit: BoxFit.cover),
                    Image.network(
                        'https://resources.ninghao.org/images/say-hello-to-barry.jpg',
                        fit: BoxFit.cover),
                    Image.network(
                        'https://resources.ninghao.org/images/space-skull.jpg',
                        fit: BoxFit.cover)
                  ],
                ),
              ),
            ),
            AspectRatio(
              aspectRatio: 16.0 / 9.0,
              child: Swiper(
                indicatorAlignment: AlignmentDirectional.topEnd,
                circular: true,
                indicator: NumberSwiperIndicator(),
                children: <Widget>[
                  Image.network(
                      'https://resources.ninghao.org/images/overkill.png',
                      fit: BoxFit.cover),
                  Image.network(
                      'https://resources.ninghao.org/images/say-hello-to-barry.jpg',
                      fit: BoxFit.cover),
                  Image.network(
                      'https://resources.ninghao.org/images/space-skull.jpg',
                      fit: BoxFit.cover)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NumberSwiperIndicator extends SwiperIndicator {
  @override
  Widget build(BuildContext context, int index, int itemCount) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.black45, borderRadius: BorderRadius.circular(20.0)),
      margin: EdgeInsets.only(top: 10.0, right: 5.0),
      padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 2.0),
      child: Text("${++index}/$itemCount",
          style: TextStyle(color: Colors.white70, fontSize: 11.0)),
    );
  }
}
