# firefluguarani
A tutorial of how to implement support Guarani in flutter with firebase

In the material app

```
    return MaterialApp.router(
      ...
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        FirebaseUILocalizations.delegate,
        GnFirebaseUIDelegate.delegate,
        GnMaterialLocalizationsDelegate.delegate,
        GnCupertinoLocalizationsDelegate.delegate,
      ],

      supportedLocales: AppLocalizations.supportedLocales,

      ...

```

Then check the files in custom_locale folder
This is an example of how to implement it, some of the text in this exame are still in Spanish, so you will need to translate it yourself.


in the ios part add the gn as any other language (in the example english, spanish, portuguese, guarani) 

	<key>CFBundleLocalizations</key>
	<array>
		<string>en</string>
		<string>es</string>
		<string>pt</string>
		<string>gn</string>
	</array>