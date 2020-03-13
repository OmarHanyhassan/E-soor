import 'package:E_Soor/other/about_dev.dart';
import 'package:E_Soor/login_signup_reset/login.dart';
import 'package:E_Soor/other/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:E_Soor/settings.dart';
import 'package:E_Soor/tabs/social.dart';
import 'package:E_Soor/tabs/store.dart';
import 'package:speech_recognition/speech_recognition.dart';
import 'package:permission_handler/permission_handler.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Soor',
      theme: ThemeData.dark(),
      home: MySplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  TextEditingController _controller = new TextEditingController();

  SpeechRecognition speechRecognition;
  bool _speechRecognitionAvailable = false;
  bool _isListening = false;
  String transcription = "";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return MaterialApp(
      theme: ThemeData.dark(),
      title: "E-Soor",
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          primary: true,
          appBar: AppBar(
            titleSpacing: 0,
            title: FlatButton(
              onPressed: () {
                showSearchPage(context, AppSearch(), transcription);
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.search,
                    size: 25,
                  ),
                  Text(
                    " Search",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            centerTitle: true,
            actions: <Widget>[
              _buildVoiceInput(
                onPressed: _speechRecognitionAvailable && !_isListening
                    ? () => start()
                    : () => stop(),
                label: _isListening ? 'Listening...' : '',
              ),
            ],
          ),
          drawer: SizedBox(
            height: size.height,
            child: Drawer(
              child: SingleChildScrollView(
                child: SafeArea(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                    child: Column(
                      children: <Widget>[
                        UserAccountsDrawerHeader(
                          accountName: Text("الءوتة المشمشية"),
                          currentAccountPicture:
                              Image.network('https://placekitten.com/500/500'),
                          accountEmail: Text("@meshmeshCat123"),
                          onDetailsPressed: () {},
                        ),
                        ListTile(
                          leading: Icon(Icons.security),
                          title: Text("Privacy"),
                          onTap: () {},
                        ),
                        ListTile(
                          leading: Icon(Icons.language),
                          title: Text("Language"),
                          onTap: () {},
                        ),
                        ListTile(
                          leading: Icon(Icons.info),
                          title: Text("About developer"),
                          onTap: goToAboutDev,
                        ),
                        ListTile(
                          leading: Icon(Icons.settings),
                          title: Text("Settings"),
                          onTap: goToSettings,
                        ),
                        ListTile(
                            leading: Icon(Icons.backspace),
                            title: Text("Log out"),
                            onTap: logOut,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),

          body: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                expandedHeight: 50,
                pinned: false,
                flexibleSpace: TabBar(
                  indicatorColor: Colors.white,
                  tabs: <Widget>[
                    Tab(
                      text: "Store",
                      icon: Icon(Icons.store),
                    ),
                    Tab(
                      text: "Social",
                      icon: Icon(Icons.people),
                    )
                  ],
                ),
              ),
              RefreshIndicator(
                  onRefresh: () {},
                  child: TabBarView(
                    children: <Widget>[
                      Store(),
                      Social(),
                    ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void goToSettings() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Settings(),
      ),
    );
  }

  void goToAboutDev() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AboutDev(),
      ),
    );
  }

  void logOut() {
    Navigator.pop(
      context,
      MaterialPageRoute(
        builder: (context) => LoginPage(),
      ),
    );
  }

  @override
// ignore: must_call_super
  void initState() {
    activateSpeechRecognizer();
  }

  Widget _buildVoiceInput({String label, VoidCallback onPressed}) =>
      new Padding(
        padding: const EdgeInsets.all(12),
        child: IconButton(
          icon: Icon(Icons.mic),
          onPressed: onPressed,
        ),
      );

  void requestPermission() async {
    PermissionStatus permissionStatus = await PermissionHandler()
        .checkPermissionStatus(PermissionGroup.microphone);
    if (permissionStatus != PermissionStatus.granted) {
      await PermissionHandler()
          .requestPermissions([PermissionGroup.microphone]);
    }
  }

  void activateSpeechRecognizer() {
    requestPermission();

    speechRecognition = new SpeechRecognition();
    speechRecognition.setAvailabilityHandler(onSpeechAvailability);
    speechRecognition.setCurrentLocaleHandler(onCurrentLocale);
    speechRecognition.setRecognitionStartedHandler(onRecognitionStarted);
    speechRecognition.setRecognitionResultHandler(onRecognitionResult);
    speechRecognition.setRecognitionCompleteHandler(onRecognitionComplete);
    speechRecognition
        .activate()
        .then((res) => setState(() => _speechRecognitionAvailable = res));
  }

  void start() => speechRecognition
      .listen(locale: 'en_US')
      .then((result) => print("Started listening => result $result"));

  void cancel() => speechRecognition
      .cancel()
      .then((result) => setState(() => _isListening = result));

  void stop() => speechRecognition
      .stop()
      .then((result) => setState(() => _isListening = result));

  void onSpeechAvailability(bool result) =>
      setState(() => _speechRecognitionAvailable = result);

  void onCurrentLocale(String locale) =>
      setState(() => print("current locale: $locale"));

  void onRecognitionStarted() => setState(() => _isListening = true);

  void onRecognitionResult(String text) => setState(() {
        transcription = text;
        showSearchPage(context, AppSearch(), transcription);
        stop();
      });

  void onRecognitionComplete() => setState(() => _isListening = false);
}

class AppSearch extends SearchDelegate<String> {
  @override
  TextInputType get keyboardType => TextInputType.text;

  final items = List<String>.generate(100, (i) => "Item $i");

  final recentItems = List<String>.generate(31, (i) => "Item $i");

  @override
  ThemeData appBarTheme(BuildContext context) {
    return ThemeData.dark();
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = "";
        },
      ),
      IconButton(
        icon: Icon(Icons.mic),
        onPressed: () {},
      ),
    ];
  }

  String p;
  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return null;
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? recentItems
        : items
            .where((p) => p.toLowerCase().contains(query.toLowerCase()))
            .toList();
    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        onTap: () {
          showResults(context);
        },
        leading: Icon(Icons.book),
        title: RichText(
          text: TextSpan(
            text: suggestionList[index],
            style: TextStyle(
              color: Colors.orange[300],
            ),
          ),
        ),
      ),
      itemCount: suggestionList.length,
    );
  }
}

void showSearchPage(
    BuildContext context, SearchDelegate search, String transcription) async {
  final String selected = await showSearch(
      context: context, delegate: search, query: transcription);

  if (selected != null) {
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text("You chose this"),
    ));
  }
}
