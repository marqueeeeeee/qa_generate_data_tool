import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:oktoast/oktoast.dart' as ok;

void main() {
  runApp(
    ok.OKToast(
      /// set toast style, optional
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Timesheet Project Code Tool',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginView(),
    );
  }
}

class HomePage extends StatelessWidget {
  showClipBoardToast() {
    ok.showToastWidget(
        Card(
          color: Colors.green,
          child: Container(
            margin: EdgeInsets.all(25),
            child: Text(
              "Copied to Clipboard!",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        position: ok.ToastPosition.bottom);
  }

  setClipboardData(String data) async {
    await Clipboard.setData(ClipboardData(text: data));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: Text("Timesheet Project Code Tool"),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: <Widget>[
          SizedBox(
            height: 15,
          ),
          Divider(
            color: Colors.green,
            thickness: 2,
          ),
          Text(
            "Projects",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Divider(
            color: Colors.green,
            thickness: 2,
          ),
          SizedBox(
            height: 15,
          ),
          CardTile(
            onTap: () async {
              await setClipboardData("18002S2111");
            },
            title: "PSBM4.0",
            subtitle: "(18002S2111)",
          ),
          CardTile(
            onTap: () async {
              await setClipboardData("20045S2AA1");
            },
            title: "PSBM CR TD 5",
            subtitle: "(20045S2AA1)",
          ),
          CardTile(
            onTap: () async {
              await setClipboardData("18006S2111");
            },
            title: "Davies Paints PH Inc.",
            subtitle: "(18006S2111)",
          ),
          CardTile(
            onTap: () async {
              await setClipboardData("18011S2111");
            },
            title: "Caritas Health Shield Inc.",
            subtitle: "(18011S2111)",
          ),
          CardTile(
            onTap: () async {
              await setClipboardData("19027S2111");
            },
            title: "MACRIN MCG",
            subtitle: "(19027S2111)",
          ),
          SizedBox(
            height: 15,
          ),
          Divider(
            color: Colors.orange,
            thickness: 2,
          ),
          Text(
            "Internal",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Divider(
            color: Colors.orange,
            thickness: 2,
          ),
          SizedBox(
            height: 15,
          ),
          CardTile(
            onTap: () async {
              await setClipboardData("20SDVZ1A11");
            },
            title: "Sick Leave",
            subtitle: "Regular/Fixed Term (20SDVZ1A11)",
            color: Colors.orange.shade100,
          ),
          CardTile(
            onTap: () async {
              await setClipboardData("20SDVZ1A12");
            },
            title: "Vacation Leave",
            subtitle: "Regular/Fixed Term (20SDVZ1A12)",
            color: Colors.orange.shade100,
          ),
          CardTile(
            onTap: () async {
              await setClipboardData("20SDVZ1A13");
            },
            title: "Holiday",
            subtitle: "Regular/Fixed Term (20SDVZ1A13)",
            color: Colors.orange.shade100,
          ),
          CardTile(
            onTap: () async {
              await setClipboardData("20SDVZ1A21");
            },
            title: "Company or Group Activity",
            subtitle: "Regular/Fixed Term (20SDVZ1A21)",
            color: Colors.orange.shade100,
          ),
          CardTile(
            onTap: () async {
              await setClipboardData("20SDVZ1A22");
            },
            title: "Company or Group Meeting",
            subtitle: "Regular/Fixed Term (20SDVZ1A22)",
            color: Colors.orange.shade100,
          ),
          CardTile(
            onTap: () async {
              await setClipboardData("20SDVZ1A31");
            },
            title: "Administrative Time Unbillable",
            subtitle: "Regular/Fixed Term (20SDVZ1A31)",
            color: Colors.orange.shade100,
          ),
          CardTile(
            onTap: () async {
              await setClipboardData("20SDVZ1A32");
            },
            title: "Training / Workshop Unbillable",
            subtitle: "Regular/Fixed Term (20SDVZ1A32)",
            color: Colors.orange.shade100,
          ),
          CardTile(
            onTap: () async {
              await setClipboardData("20SDVZ1A33");
            },
            title: "Seminars / Conferences Unbillable",
            subtitle: "Regular/Fixed Term (20SDVZ1A33)",
            color: Colors.orange.shade100,
          ),
          CardTile(
            onTap: () async {
              await setClipboardData("20SDVZ1A34");
            },
            title: "Coaching Unbillable",
            subtitle: "Regular/Fixed Term (20SDVZ1A34)",
            color: Colors.orange.shade100,
          ),
          CardTile(
            onTap: () async {
              await setClipboardData("20SDVZ1A35");
            },
            title: "Unassigned Time Unbillable",
            subtitle: "Regular/Fixed Term (20SDVZ1A35)",
            color: Colors.orange.shade100,
          ),
          CardTile(
            onTap: () async {
              await setClipboardData("20SDVZ1A41");
            },
            title: "Research and Development",
            subtitle: "Regular/Fixed Term (20SDVZ1A41)",
            color: Colors.orange.shade100,
          ),
          CardTile(
            onTap: () async {
              await setClipboardData("20SDVZ1A42");
            },
            title: "Proof of Concept Unbillable",
            subtitle: "Regular/Fixed Term (20SDVZ1A42)",
            color: Colors.orange.shade100,
          ),
        ],
      ),
    );
  }
}

class CardTile extends StatelessWidget {
  final Function onTap;
  final String title;
  final String subtitle;
  final Color color;

  const CardTile({
    Key key,
    @required this.onTap,
    @required this.title,
    this.subtitle = "",
    this.color = Colors.white,
  }) : super(key: key);

  showClipBoardToast() {
    ok.showToastWidget(
        Card(
          color: Colors.green,
          child: Container(
            margin: EdgeInsets.all(25),
            child: Text(
              "Copied to Clipboard!",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        position: ok.ToastPosition.bottom);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: this.color,
      child: ListTile(
        onTap: () async {
          await onTap();
          showClipBoardToast();
        },
        title: Text(this.title),
        subtitle: Text(this.subtitle),
      ),
    );
  }
}

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final passwordTC = TextEditingController();
  var loggedIn = false;

  showPasswordError() {
    ok.showToastWidget(
        Card(
          color: Colors.red,
          child: Container(
            margin: EdgeInsets.all(25),
            child: Text(
              "Incorrect Password!",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        position: ok.ToastPosition.bottom);
  }

  @override
  Widget build(BuildContext context) {
    if (loggedIn) {
      return HomePage();
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("login"),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width / 5, 0,
            MediaQuery.of(context).size.width / 5, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: TextFormField(
                controller: passwordTC,
                decoration: InputDecoration(labelText: "Password"),
                obscureText: true,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            RaisedButton(
              onPressed: () async {
                if (passwordTC.text == "P@ssw0rd2020") {
                  setState(() {
                    loggedIn = true;
                  });
                } else {
                  showPasswordError();
                }
              },
              child: Text("Login"),
            )
          ],
        ),
      ),
    );
  }
}
