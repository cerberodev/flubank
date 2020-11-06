import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('Test App', () {
    FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    test('Scroll', () async {
      final listview = find.byType('PageView');

      final scrolling = await driver.traceAction(() async {
        await driver.scroll(listview, -400, 0, Duration(seconds: 1));
        await driver.scroll(listview, -400, 0, Duration(seconds: 1));
        await driver.scroll(listview, -400, 0, Duration(seconds: 1));
      });

      final scrollsummary = TimelineSummary.summarize(scrolling);
      await scrollsummary.writeSummaryToFile('scrolling', pretty: true);
      await driver.tap(find.byValueKey('ButtonSplashKey'));
    });

    test('Error Mail & Password Required', () async {
      await driver.tap(find.byValueKey('ButtonLogginKey'));
    });

    test('Error Password Required', () async {
      await driver.tap(find.byValueKey('emailKey'));
      await driver.enterText('pierrealexis61196@gmail.com');
      await driver.tap(find.byValueKey('ButtonLogginKey'));
    });

    test('Error Email Required', () async {
      await driver.tap(find.byValueKey('passKey'));
      await driver.enterText('123456');
      await driver.tap(find.byValueKey('ButtonLogginKey'));
    });
  });

  //group('Loggind:', () {
  //  FlutterDriver driver;
//
  //  setUpAll(() async {
  //    driver = await FlutterDriver.connect();
  //  });
//
  //  test('Email Confirmed', () async {
  //    await driver.tap(find.byValueKey('emailKey'));
  //    await driver.enterText('pierrealexis61196@gmail.com');
  //  });
  //  test('Password Confirmed', () async {
  //    await driver.tap(find.byValueKey('passKey'));
  //    await driver.enterText('123456');
  //  });
  //  test('Tap Button Loggin', () async {
  //    await driver.tap(find.byValueKey('ButtonLogginKey'));
  //  });
  //});

  group('Button Bar Test', () {
    FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      if (driver != null) {
        await driver.close();
      }
    });
    test('Scroll', () async {
      final buttonBar = find.byType('PageView');

      final scrolling = await driver.traceAction(() async {
        await driver.scroll(buttonBar, -400, 0, Duration(seconds: 1));
        await driver.scroll(buttonBar, -400, 0, Duration(seconds: 1));
        await driver.scroll(buttonBar, -400, 0, Duration(seconds: 1));
        await driver.scroll(buttonBar, -400, 0, Duration(seconds: 1));
        await driver.scroll(buttonBar, -400, 0, Duration(seconds: 1));
      });

      final scrollsummary = TimelineSummary.summarize(scrolling);
      await scrollsummary.writeSummaryToFile('scrolling', pretty: true);
    });

    test('Scroll Return', () async {
      final buttonBar = find.byType('PageView');

      final scrolling = await driver.traceAction(() async {
        await driver.scroll(buttonBar, 400, 0, Duration(seconds: 1));
        await driver.scroll(buttonBar, 400, 0, Duration(seconds: 1));
        await driver.scroll(buttonBar, 400, 0, Duration(seconds: 1));
        await driver.scroll(buttonBar, 400, 0, Duration(seconds: 1));
        await driver.scroll(buttonBar, 400, 0, Duration(seconds: 1));
      });

      final scrollsummary = TimelineSummary.summarize(scrolling);
      await scrollsummary.writeSummaryToFile('scrolling', pretty: true);
    });
  });

  group('Home test', () {
    FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      if (driver != null) {
        await driver.close();
      }
    });

    test('Scroll', () async {
      final listview = find.byType('ListCard');

      final scrolling = await driver.traceAction(() async {
        await driver.scroll(listview, 0, -400, Duration(seconds: 1));
      });

      final scrollsummary = TimelineSummary.summarize(scrolling);
      await scrollsummary.writeSummaryToFile('scrolling', pretty: true);
    });

    test('Find Monto', () async {
      final monto = find.byValueKey('cantidad');

      final cantidad = await driver.traceAction(() async {
        await driver.waitFor(monto);
      });

      final cantidadFinal = TimelineSummary.summarize(cantidad);
      await cantidadFinal.writeTimelineToFile('monto', pretty: true);
    });
  });

  group('Taps', () {
    FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    // test('Tap', () async {
    // final taps = find.byValueKey('tap2');
    test('Test Tap Bar', () async {
      // await driver. taps = find.byType('TapBar');

      await driver.tap(find.byValueKey('tap2'));
      await driver.tap(find.byValueKey('tap3'));
      await driver.tap(find.byValueKey('tap4'));
      await driver.tap(find.byValueKey('tap5'));
      await driver.tap(find.byValueKey('tap6'));

      await driver.tap(find.byValueKey('tap5'));
      await driver.tap(find.byValueKey('tap4'));
      await driver.tap(find.byValueKey('tap3'));
      await driver.tap(find.byValueKey('tap2'));
      await driver.tap(find.byValueKey('tap1'));
    });
  });

  group('ButtonBar test', () {
    FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      if (driver != null) {
        await driver.close();
      }
    });

     test('Tap button - Home', () async {
      List<String> taps = ['tap1', 'tap2', 'tap3', 'tap4', 'tap5', 'tap6'];
      for (var i = 0; i < taps.length; i++) {
        final tap = find.byValueKey(taps[i]);
        await driver.tap(tap, timeout: Duration(milliseconds: 1000));
      }
     });
  });

}
