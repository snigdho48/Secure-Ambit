import 'package:draggable_home/draggable_home.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Widget/Appbar_Extended.dart';
import '../Widget/Drawer_Widget.dart';
import '../Widget/Features_Card.dart';
import '../Widget/Footer_Widget.dart';

class Features extends StatelessWidget {
  static const routeName = '/features';
  const Features({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: _scaffoldKey,
      drawerEnableOpenDragGesture: false,
      drawer: const MyDrawer(),
      body: DraggableHome(
        actions: [
          IconButton(
              onPressed: (() => _scaffoldKey.currentState!.openDrawer()),
              icon: const Icon(Icons.menu))
        ],
        leading: IconButton(
            onPressed: (() => Navigator.pop(context)),
            icon: const Icon(Icons.arrow_back)),
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
            fit: BoxFit.contain,
            width: size.width / 2.5,
          ),
        ),
        headerWidget: headerWidget(context,
            image_url: 'assets/images/banner.jpg',
            Head_text: 'FEATURES',
            Sub_text:
                'WE ARE OFFERING THE FOLLOWING FEATURES IN OUR HOSTING PACKAGES'),
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
    var size = MediaQuery.of(context).size;
    return Wrap(
      alignment: WrapAlignment.center,
      runAlignment: WrapAlignment.start,
      crossAxisAlignment: WrapCrossAlignment.start,
      children: [
        Features_card(
          size: size,
          Heading: 'Fully Managed Business Hosting Servers',
          Description:
              'All of our shared hosting packages are fully managed by the experts.',
          Icon: const FaIcon(
            FontAwesomeIcons.server,
          ),
        ),
        Features_card(
            size: size,
            Heading: 'Highly Secured Servers',
            Description:
                'We installed the most secured firewall which scans the server every minute and clears all the malwares before being active.',
            Icon: const Icon(Icons.lock_open)),
        Features_card(
            size: size,
            Heading: 'Lite Speed Servers',
            Description:
                'We use lightspeed technology in our server to ensure a balanced load in the performance. So the speed is assured.',
            Icon: const Icon(Icons.speed)),
        Features_card(
            size: size,
            Heading: 'Latest Intel Xenon Processors',
            Description:
                'We use the latest Intel Xenon Technology in our servers to ensure the fastest loading speed for your website.',
            Icon: const FaIcon(FontAwesomeIcons.microchip)),
        Features_card(
            size: size,
            Heading: 'Unlimited space based on NVME SSD Disc',
            Description:
                'We offer unimited upgradations in storage. So you can upgrade the hosting pack anytime according to your requirements.',
            Icon: const FaIcon(FontAwesomeIcons.hdd)),
        Features_card(
          size: size,
          Heading: '24/7 Customer Support',
          Description:
              'We offer unlimited support to our clients via live chat and support ticket.',
          Icon: const Icon(Icons.support_agent_sharp),
        ),
        Features_card(
          size: size,
          Heading: 'Optimized for Speed',
          Description:
              'We use litespeed server cache software in our server. And by far, it is the best server optimization and speed development software.',
          Icon: const FaIcon(FontAwesomeIcons.gaugeHigh),
        ),
        Features_card(
            size: size,
            Heading: 'Internet Marketing Included',
            Description:
                'We have added a lot of internet marketing tools in your cpanel account. Tools like visitor analytics and seo manager will help you rank on Google and other search engines.',
            Icon: const FaIcon(FontAwesomeIcons.searchDollar)),
        Features_card(
            size: size,
            Heading: 'Powerful wordpress hosting',
            Description:
                'We have integrated wordpress delux toolkit with the cpanel. So you can enjoy the full performance of powerful and optimized wordpress.',
            Icon: const FaIcon(FontAwesomeIcons.wordpress)),
        Features_card(
            size: size,
            Heading: 'Full Root Access',
            Description:
                'We offer full root access in all our vps and dedicated server packages. So after you buy any vps or dedicated server, you will be able to utilize the full potential of the server',
            Icon: const Icon(Icons.terminal)),
        Features_card(
            size: size,
            Heading: 'Multi procesors and ram memmories',
            Description:
                'We use latest and the most updated server hardwares in server peek. And it gives you multi processor and efficient ram management based boosted performance.',
            Icon: const Icon(Icons.miscellaneous_services)),
      ],
    );
  }
}
