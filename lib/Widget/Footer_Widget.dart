import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer_Section extends StatelessWidget {
  const Footer_Section({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      color: Colors.brown.shade700,
      child: Wrap(
        runSpacing: 5,
        spacing: 20,
        children: [
          SizedBox(
            width: size.width > 600 ? size.width / 2.15 : size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    ColorFiltered(
                      colorFilter: ColorFilter.mode(
                        Colors.white
                            .withOpacity(0.2), // 0 = Colored, 1 = Black & White
                        BlendMode.srcATop,
                      ),
                      child: Image.asset(
                        'assets/images/logo.png',
                        width: size.width / 2.5,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: size.width > 600 ? size.width / 2.5 : size.width,
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      '''PremioHost has been providing web hosting, reseller hosting, master reseller hosting servers. Our Customer Support is always available, and we are offering 1Gbps BDIX Bandwidth speed with SSD premium storage.''',
                      textAlign: TextAlign.justify,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: size.width > 600 ? size.width / 2.15 : size.width,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Information Link',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.white),
                  ),
                  Footer_Link(text: 'Home', Link: ''),
                  Footer_Link(text: 'Hosting Packages', Link: ''),
                  Footer_Link(text: 'Domain', Link: ''),
                  Footer_Link(text: 'Features', Link: ''),
                ],
              ),
            ),
          ),
          SizedBox(
            width: size.width > 600 ? size.width / 2.15 : size.width,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Contact Details',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.white),
                  ),
                  Footer_Link(
                      text: 'info@premiohost.com',
                      Link: 'mailto:info@premiohost.com'),
                  Footer_Link(
                      text: 'www.premiohost.com',
                      Link: 'https://www.premiohost.com'),
                  Footer_Link(
                      text: '387/2, Advocate Motiur Rahman Talukdar Road, 2000',
                      Link: ''),
                  Footer_Link(
                      text: '+8801875-263163', Link: 'tel:+8801875-263163'),
                ],
              ),
            ),
          ),
          SizedBox(
            width: size.width > 600 ? size.width / 2.15 : size.width,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Social Link',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.white),
                  ),
                  Footer_Link(
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.facebook,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ],
                      text: '/PremioHost',
                      Link: 'https://www.facebook.com/PremioHost/'),
                  Footer_Link(
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            FaIcon(
                              FontAwesomeIcons.instagram,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ],
                      text: '/Instagram',
                      Link: 'https://www.instagram.com/PremioHost/'),
                  Footer_Link(
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            FaIcon(
                              FontAwesomeIcons.youtube,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ],
                      text: '/Youtube',
                      Link:
                          'https://www.youtube.com/channel/UCnx1_DffE93RfEaJzdHbFQQ'),
                  Footer_Link(
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            FaIcon(
                              FontAwesomeIcons.linkedin,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ],
                      text: '/Linkedin',
                      Link: 'https://www.linkedin.com/company/premiohost'),
                ],
              ),
            ),
          ),
          SizedBox(
            width: size.width,
            child: Wrap(
              alignment: WrapAlignment.center,
              runAlignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              runSpacing: 5,
              children: [
                const Text(
                  'All Rights Reserved. © 2023 ',
                  style: TextStyle(color: Colors.white),
                ),
                InkWell(
                    child: const Text(
                      'PremioHost.',
                      style: TextStyle(color: Colors.blueAccent),
                    ),
                    onTap: () {
                      launchUrl(Uri.parse('https://premiohost.com/'));
                    }),
                const Text(
                  '  A Sister concern of',
                  style: TextStyle(color: Colors.white),
                ),
                InkWell(
                    child: const Text(
                      ' Secure Ambit.',
                      style: TextStyle(color: Colors.blueAccent),
                    ),
                    onTap: () {
                      launchUrl(Uri.parse('https://www.secureambit.com/'));
                    }),
              ],
            ),
          )
        ],
      ),
    );
  }

  Column Footer_Link(
      {required String text,
      required String Link,
      List<Widget> children = const []}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: children.isNotEmpty
          ? [
              Row(
                children: children +
                    [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            padding: const EdgeInsets.all(0),
                            alignment: Alignment.centerLeft,
                          ),
                          onPressed: () => launchUrl(Uri.parse(Link)),
                          child: Text(
                            text,
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
              ),
              const Divider(height: 2, color: Colors.white),
            ]
          : [
              TextButton(
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(0),
                  alignment: Alignment.centerLeft,
                ),
                onPressed: () => launchUrl(Uri.parse(Link)),
                child: Text(
                  text,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              const Divider(height: 2, color: Colors.white),
            ],
    );
  }
}
