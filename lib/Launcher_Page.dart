import 'package:draggable_home/draggable_home.dart';
import 'package:flutter/material.dart';
import 'Widget/Appbar.dart';
import 'Widget/Drawer_Widget.dart';
import 'Widget/Footer_Widget.dart';
import 'Widget/Package_Card_Widget.dart';

class LauncherPage extends StatelessWidget {
  static const routeName = '/launcher';

  const LauncherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return DraggableHome(
      drawer: const MyDrawer(),
      alwaysShowLeadingAndAction: true,
      alwaysShowTitle: true,
      centerTitle: true,
      title: ColorFiltered(
        colorFilter: ColorFilter.mode(
          Colors.white.withOpacity(0.2), // 0 = Colored, 1 = Black & White
          BlendMode.srcATop,
        ),
        child: Image.asset(
          'assets/images/logo.png',
          width: size.width / 2.5,
        ),
      ),
      headerWidget:
          headerWidget(context, image_url: 'assets/images/banner.jpg'),
      body: [
        SingleChildScrollView(
            child: Column(
                children: [const Content_View(), Footer_Section(size: size)]))
      ],
      backgroundColor: Colors.white,
      appBarColor: Colors.teal,
    );
  }
}

class Content_View extends StatelessWidget {
  const Content_View({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BodyPart(
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
        ]);
  }
}
