import 'package:flutter/material.dart';
import 'package:flutter_base/generated/l10n.dart';
import 'package:flutter_base/loading.dart';
import 'package:flutter_base/provider/language_provider_test.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<LanguageProviderTest>(
            create: (context) => LanguageProviderTest()),
      ],
      child: Consumer<LanguageProviderTest>(
        builder: (context, LanguageProviderTest languageProviderTest, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'indeex`s demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
              visualDensity: VisualDensity.adaptivePlatformDensity,
            ),
            initialRoute: '/',
            routes: <String, WidgetBuilder>{
              "/": (BuildContext context) => WebviewScaffold(
                    url: 'https://blog.indeex.club',
                    appBar: AppBar(
                      title: Text(S.of(context).title),
                      leading: IconButton(
                        icon: Icon(Icons.home),
                        // onPressed: () {
                        //   Navigator.of(context).pushReplacementNamed('app');
                        // },
                        // onPressed: _incrementCounter,
                        onPressed: () {
                          String _lang1;
                          String _lang2;
                          String _lang = Provider.of<LanguageProviderTest>(
                                  context,
                                  listen: false)
                              .language;
                          if (_lang == 'en,US') {
                            _lang1 = 'zh';
                            _lang2 = 'CN';
                          } else {
                            _lang1 = 'en';
                            _lang2 = 'US';
                          }
                          print('>>>>>>>>>>>>>>>>>>>>>>>');
                          print('>>>>>>>>>>>>>>>>>>>>>>>');
                          print('>>>>>>>>>>>>>>>>>>>>>>>');
                          print('>>>>>>>>>>>>>>>>>>>>>>>');
                          print('>>>>>>>>>>>>>>>>>>>>>>>');
                          print('???????????????$_lang');
                          print('???????????????$_lang1,$_lang2');
                          Provider.of<LanguageProviderTest>(context,
                                  listen: false)
                              .toggleLanguage(_lang1, _lang2);
                        },
                      ),
                    ),
                  )
              // '/': (context) => LoadingPage()
            },
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate, //Android UI
              GlobalWidgetsLocalizations.delegate, //??????????????????-???or???-???
              GlobalCupertinoLocalizations.delegate, //IOS UI
            ],
            supportedLocales: [
              const Locale('en', ''),
              ...S.delegate.supportedLocales
            ],
            localeResolutionCallback: (locale, supportLocales) {
              if (locale?.languageCode == 'zh') {
                if (locale?.scriptCode == 'Hant')
                  return const Locale('zh', 'HK');
                else
                  return const Locale('zh', 'CN');
              }
              return null;
            },
            locale: Provider.of<LanguageProviderTest>(context, listen: false)
                .locale,
            onGenerateTitle: (context) {
              return S.of(context).appName;
            },
            darkTheme: ThemeData(brightness: Brightness.dark),
          );
        },
      ),
    );
  }
}

final ThemeData iTheme = ThemeData(
  primaryColor: Colors.lightBlue,
);

final ThemeData iThemeDark = ThemeData(
  brightness: Brightness.dark,
);

final ThemeData iThemeLight = ThemeData(
  brightness: Brightness.light,
);

_incrementCounter() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  int counter = (prefs.getInt('counter') ?? 0) + 1;
  print('?????? $counter ???');
  await prefs.setInt('counter', counter);
}
