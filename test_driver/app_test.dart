import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('Test App', () {
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
      await driver.enterText('pierrealexis61196@gmail.com');
      await driver.tap(find.byValueKey('ButtonLogginKey'));
    });
  });

  group('Logging Confirmed', () {
    FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      if (driver != null) {
        await driver.close();
      }
    });

    test('Loggin Confirmed', () async {
      await driver.tap(find.byValueKey('emailKey'));
      await driver.enterText('pierrealexis61196@gmail.com');
      await driver.tap(find.byValueKey('passKey'));
      await driver.enterText('pierrealexis61196@gmail.com');
      await driver.tap(find.byValueKey('ButtonLogginKey'));
    });
  });

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
      final buttonBar = find.byType('ButtonBar');

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
  });
}
