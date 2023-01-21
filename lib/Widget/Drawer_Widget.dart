import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.deepOrange,
            ),
            child: Image.asset(
              'assets/images/logo.png',
              fit: BoxFit.contain,
            ),
          ),
          ListTile(
            title: const Text('Home'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: const Text('Features'),
            onTap: () => Navigator.pushNamed(context, '/features'),
          ),
          ListTile(
            title: const Text('Domain'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          Theme(
            data: Theme.of(context).copyWith(
                dividerColor: Theme.of(context).scaffoldBackgroundColor),
            child: ExpansionTile(
              backgroundColor: Colors.greenAccent.shade100,
              title: const Text('Hosting Packages'),
              children: [
                Container(
                    padding: const EdgeInsets.only(left: 20),
                    color: Colors.grey.shade200,
                    child: Column(
                      children: [
                        ListTile(
                          title: const Text('Shared Web Hosting'),
                          onTap: () {
                            // Update the state of the app.
                            // ...
                          },
                        ),
                        ListTile(
                          title: const Text('Reseller Web Hosting'),
                          onTap: () {
                            // Update the state of the app.
                            // ...
                          },
                        ),
                        ListTile(
                          title: const Text('USA Server VPS'),
                          onTap: () {
                            // Update the state of the app.
                            // ...
                          },
                        ),
                        ListTile(
                          title: const Text('BDIX Server VPS'),
                          onTap: () {
                            // Update the state of the app.
                            // ...
                          },
                        ),
                      ],
                    )),
              ],
            ),
          ),
          ListTile(
            title: const Text('Contact Us'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                    ),
                    onPressed: () {},
                    child: Row(
                      children: [
                        const Icon(Icons.lock),
                        const Text('Dashboard')
                      ],
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
