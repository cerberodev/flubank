import 'package:flubank/core/models/cardinfo.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import 'package:flubank/ui/shared/constants.dart';
import 'package:flubank/ui/widgets/amount.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = 'homeScreen';
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final scrollController = ScrollController();

  final double _borderRadius = 24;

  var items = [
    CardInfo(
        'Sixto Romero', 257200, Color(0xff6DC8F3), Color(0xff73A1F9), '\$'),
    CardInfo(
        'Pierre Cervero', 257200, Color(0xffFFB157), Color(0xffFFA057), '\$'),
    CardInfo(
        'Leydi Pulido', 257200, Color(0xff42E695), Color(0xff3BB2B8), '\$'),
    CardInfo(
        'Antonio Sierra', 257200, Color(0xffFF5B95), Color(0xffF8556D), '\$'),
    CardInfo(
        'Jonatan Padilla', 257200, Color(0xffD76EF5), Color(0xff8F7AFE), '\$'),
    CardInfo(
        'Nelson Londoño', 257200, Color(0xff92d0d0), Color(0xff567777), '\$'),
  ];

  void onListen() {
    print('scrollController: ${scrollController.offset}');
  }

  @override
  void initState() {
    scrollController.addListener(onListen);
    super.initState();
  }

  @override
  void dispose() {
    scrollController.removeListener(onListen);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text('Inicio'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Amount(
                'Hola Pierre, tu saldo disponible es:',
                '100',
                '\$',
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              width: double.infinity,
              child: ListView.builder(
                controller: scrollController,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return Center(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Stack(
                        children: <Widget>[
                          Container(
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(_borderRadius),
                              gradient: LinearGradient(
                                  colors: [
                                    items[index].startColor,
                                    items[index].endColor
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight),
                              boxShadow: [
                                BoxShadow(
                                  color: items[index].endColor,
                                  blurRadius: 12,
                                  offset: Offset(0, 6),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            right: 0,
                            bottom: 0,
                            top: 0,
                            child: CustomPaint(
                              size: Size(100, 150),
                              painter: CustomCardShapePainter(
                                  _borderRadius,
                                  items[index].startColor,
                                  items[index].endColor),
                            ),
                          ),
                          Positioned.fill(
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: Icon(Icons.person_outline),
                                  flex: 1,
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        'Hola',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Avenir',
                                            fontWeight: FontWeight.w700),
                                      ),
                                      Text(
                                        items[index].cliente,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Avenir',
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Row(
                                        children: <Widget>[
                                          Flexible(
                                            child: Text(
                                              'Tienes un movimiento por: ',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Avenir',
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Text(
                                        items[index].saldo.toString(),
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Avenir',
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      Icon(
                                        Icons.attach_money,
                                        color: Colors.white,
                                        size: 24,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomCardShapePainter extends CustomPainter {
  final double radius;
  final Color startColor;
  final Color endColor;

  CustomCardShapePainter(this.radius, this.startColor, this.endColor);

  @override
  void paint(Canvas canvas, Size size) {
    var radius = 24.0;

    var paint = Paint();
    paint.shader = ui.Gradient.linear(
        Offset(0, 0), Offset(size.width, size.height), [
      HSLColor.fromColor(startColor).withLightness(0.8).toColor(),
      endColor
    ]);

    var path = Path()
      ..moveTo(0, size.height)
      ..lineTo(size.width - radius, size.height)
      ..quadraticBezierTo(
          size.width, size.height, size.width, size.height - radius)
      ..lineTo(size.width, radius)
      ..quadraticBezierTo(size.width, 0, size.width - radius, 0)
      ..lineTo(size.width - 1.5 * radius, 0)
      ..quadraticBezierTo(-radius, 2 * radius, 0, size.height)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
