import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorSchemeSeed: Colors.blue,
        brightness: Brightness.light,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static String imageUrl =
      'https://images.pexels.com/photos/1081685/pexels-photo-1081685.jpeg';
  static String lorem =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas id velit sapien. Donec laoreet vehicula iaculis. Phasellus ac justo nec turpis hendrerit malesuada non sed arcu.';

  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Nome Aluno'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView(
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
              margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(48),
                image: DecorationImage(
                  image: NetworkImage(imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          // Image.network(imageUrl, height: 200, width: 200, fit: BoxFit.cover),
          Padding(padding: EdgeInsets.all(16.0)),
          Text(
            'Nome do Aluno',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          Divider(height: 16, indent: 16, endIndent: 16),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              lorem,
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.justify,
            ),
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.linkedin),
            title: Text('LinkeIn'),
            subtitle: Text('linkedin.com'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () => _launchInBrowser(Uri.parse('https://linkedin.com')),
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.instagram),
            title: Text('Instagram'),
            subtitle: Text('instagram.com'),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () =>
                _launchInBrowser(Uri.parse('https://www.instagram.com')),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.large(
        onPressed: () => _launchInBrowser(Uri.parse('https://www.github.com')),
        child: Icon(FontAwesomeIcons.github),
      ),
    );
  }
}
