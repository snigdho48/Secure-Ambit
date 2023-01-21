import 'package:draggable_home/draggable_home.dart';
import 'package:flutter/material.dart';
import '../Widget/Appbar_Extended.dart';
import '../Widget/Drawer_Widget.dart';
import '../Widget/Footer_Widget.dart';
import '../Widget/Package_Card_Widget.dart';

class LauncherPage extends StatelessWidget {
  static const routeName = '/launcher';

  const LauncherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    var size = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
      drawer: const MyDrawer(),
      drawerEnableOpenDragGesture: false,
      body: DraggableHome(
        leading: null,
        alwaysShowLeadingAndAction: true,
        alwaysShowTitle: true,
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: (() => _scaffoldKey.currentState!.openDrawer()),
              icon: const Icon(Icons.menu))
        ],
        title: ColorFiltered(
          colorFilter: ColorFilter.mode(
            Colors.white.withOpacity(0.2), // 0 = Colored, 1 = Black & White
            BlendMode.srcATop,
          ),
          child: Image.asset(
            'assets/images/logo.png',
            fit: BoxFit.contain,
            width: size.width / 2.5,
          ),
        ),
        headerWidget: headerWidget(context,
            image_url: 'assets/images/banner.jpg',
            Head_text: "Shared Web Hosting",
            Sub_text:
                "All of our packages include NVme SSD storage for the best performance."),
        body: [
          SingleChildScrollView(
              child: Column(children: [
            const Content_View(),
            const SizedBox(
              height: 20,
            ),
            Footer_Section(size: size)
          ]))
        ],
        backgroundColor: Colors.white,
        appBarColor: Colors.teal,
      ),
    );
  }
}

class Content_View extends StatelessWidget {
  const Content_View({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        BodyPart(
            Button_color: Colors.red,
            Price_font_size: 15,
            Heading_text_color: Colors.white,
            Price_text_color: Colors.white,
            Heading_font_size: 20,
            Price: '৳7,500 Tk/Year',
            Heading: 'LEARNER Package',
            Button_text: 'Buy Now',
            Card_list: const [
              Padding(
                  padding: EdgeInsets.all(5),
                  child: Text('1 GB Pure NVme SSD Storage')),
              Padding(
                  padding: EdgeInsets.all(5),
                  child: Text('20 GB USA Premium Bandwidth')),
              Padding(
                  padding: EdgeInsets.all(5),
                  child: Text('Softaculous One Click Installer')),
              Padding(
                  padding: EdgeInsets.all(5),
                  child: Text('''Free SSL Let's Encrypt''')),
              Padding(
                  padding: EdgeInsets.all(5),
                  child: Text('''LiteSpeed Web Server''')),
            ]),
        BodyPart(
            Button_color: Colors.red,
            Price_font_size: 15,
            Heading_text_color: Colors.white,
            Price_text_color: Colors.white,
            Heading_font_size: 20,
            Price: '৳1,300 Tk/Year',
            Heading: 'BASIC Package',
            Button_text: 'Buy Now',
            Card_list: const [
              Padding(
                  padding: EdgeInsets.all(5),
                  child: Text('2 GB Pure NVme SSD Storage')),
              Padding(
                  padding: EdgeInsets.all(5),
                  child: Text('30 GB USA Premium Bandwidth')),
              Padding(
                  padding: EdgeInsets.all(5),
                  child: Text('Softaculous One Click Installer')),
              Padding(
                  padding: EdgeInsets.all(5),
                  child: Text('''Free SSL Let's Encrypt''')),
              Padding(
                  padding: EdgeInsets.all(5),
                  child: Text('''LiteSpeed Web Server''')),
            ]),
        BodyPart(
            Button_color: Colors.red,
            Price_font_size: 15,
            Heading_text_color: Colors.white,
            Price_text_color: Colors.white,
            Heading_font_size: 20,
            Price: '৳3,000 Tk/Year',
            Heading: 'PRIMARY Package',
            Button_text: 'Buy Now',
            Card_list: const [
              Padding(
                  padding: EdgeInsets.all(5),
                  child: Text('5 GB Pure NVme SSD Storage')),
              Padding(
                  padding: EdgeInsets.all(5),
                  child: Text('60 GB USA Premium Bandwidth')),
              Padding(
                  padding: EdgeInsets.all(5),
                  child: Text('Softaculous One Click Installer')),
              Padding(
                  padding: EdgeInsets.all(5),
                  child: Text('''Free SSL Let's Encrypt''')),
              Padding(
                  padding: EdgeInsets.all(5),
                  child: Text('''LiteSpeed Web Server''')),
            ]),
        BodyPart(
            Button_color: Colors.red,
            Price_font_size: 15,
            Heading_text_color: Colors.white,
            Price_text_color: Colors.white,
            Heading_font_size: 20,
            Price: '৳5,100 Tk/Year',
            Heading: 'CONFIDENT Package',
            Button_text: 'Buy Now',
            Card_list: const [
              Padding(
                  padding: EdgeInsets.all(5),
                  child: Text('10 GB Pure NVme SSD Storage')),
              Padding(
                  padding: EdgeInsets.all(5),
                  child: Text('90 GB USA Premium Bandwidth')),
              Padding(
                  padding: EdgeInsets.all(5),
                  child: Text('Softaculous One Click Installer')),
              Padding(
                  padding: EdgeInsets.all(5),
                  child: Text('''Free SSL Let's Encrypt''')),
              Padding(
                  padding: EdgeInsets.all(5),
                  child: Text('''LiteSpeed Web Server''')),
            ]),
        BodyPart(
            Button_color: Colors.red,
            Price_font_size: 15,
            Heading_text_color: Colors.white,
            Price_text_color: Colors.white,
            Heading_font_size: 20,
            Price: '৳7,500 Tk/Year',
            Heading: 'POSITIVE Package',
            Button_text: 'Buy Now',
            Card_list: const [
              Padding(
                  padding: EdgeInsets.all(5),
                  child: Text('15 GB Pure NVme SSD Storage')),
              Padding(
                  padding: EdgeInsets.all(5),
                  child: Text('100 GB USA Premium Bandwidth')),
              Padding(
                  padding: EdgeInsets.all(5),
                  child: Text('Softaculous One Click Installer')),
              Padding(
                  padding: EdgeInsets.all(5),
                  child: Text('''Free SSL Let's Encrypt''')),
              Padding(
                  padding: EdgeInsets.all(5),
                  child: Text('''LiteSpeed Web Server''')),
            ]),
        BodyPart(
            Button_color: Colors.red,
            Price_font_size: 15,
            Heading_text_color: Colors.white,
            Price_text_color: Colors.white,
            Heading_font_size: 20,
            Price: '৳12,500 Tk/Year',
            Heading: 'PROGRESSIVE Package',
            Button_text: 'Buy Now',
            Card_list: const [
              Padding(
                  padding: EdgeInsets.all(5),
                  child: Text('25 GB Pure NVme SSD Storage')),
              Padding(
                  padding: EdgeInsets.all(5),
                  child: Text('170 GB USA Premium Bandwidth')),
              Padding(
                  padding: EdgeInsets.all(5),
                  child: Text('Softaculous One Click Installer')),
              Padding(
                  padding: EdgeInsets.all(5),
                  child: Text('''Free SSL Let's Encrypt''')),
              Padding(
                  padding: EdgeInsets.all(5),
                  child: Text('''LiteSpeed Web Server''')),
            ]),
        BodyPart(
            Button_color: Colors.red,
            Price_font_size: 15,
            Heading_text_color: Colors.white,
            Price_text_color: Colors.white,
            Heading_font_size: 20,
            Price: '৳15,000 Tk/Year',
            Heading: 'BUSINESS Package',
            Button_text: 'Buy Now',
            Card_list: const [
              Padding(
                  padding: EdgeInsets.all(5),
                  child: Text('30 GB Pure NVme SSD Storage')),
              Padding(
                  padding: EdgeInsets.all(5),
                  child: Text('200 GB USA Premium Bandwidth')),
              Padding(
                  padding: EdgeInsets.all(5),
                  child: Text('Softaculous One Click Installer')),
              Padding(
                  padding: EdgeInsets.all(5),
                  child: Text('''Free SSL Let's Encrypt''')),
              Padding(
                  padding: EdgeInsets.all(5),
                  child: Text('''LiteSpeed Web Server''')),
            ]),
      ],
    );
  }
}
