import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
  title: 'My Portfolio',
  theme: ThemeData(
    primarySwatch: Colors.blue,
       ),
       home: PortfolioPage(),
    );
  }
}

class PortfolioPage extends StatefulWidget {
  const PortfolioPage({super.key});

  @override
  State<PortfolioPage> createState() {
    return _PortfolioPageState();
  }
}

class _PortfolioPageState extends State<PortfolioPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Portfolio'),
      ),
        body: ListView(
        children: [
          Container(color: Colors.blue,
            padding: const EdgeInsets.all(20),
            child: const Text(
              'Hello There!',
              style: TextStyle(color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),

          Card(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 75,
                  backgroundImage: NetworkImage('https://scontent-mnl3-3.xx.fbcdn.net/v/t39.30808-6/537788446_4111508279177367_994398696780181715_n.jpg?stp=dst-jpg_tt6&cstp=mx1024x1024&ctp=s1024x1024&_nc_cat=108&ccb=1-7&_nc_sid=a5f93a&_nc_eui2=AeFlE6mYldNMELRDOA8kYIddIunsKMpcrlMi6ewoylyuU85qxU1SaWO6vQIxI3PwgFsIcA_cMt1v0IsgYrPc__xa&_nc_ohc=ectqfOKOdiEQ7kNvwFungYZ&_nc_oc=AdrKnfgF3p3rRnBUQBqxD8Mrj5RAuwPnBNH7KITRJg0HQvD2ah-M97YUwQ7w4LmsDp4&_nc_zt=23&_nc_ht=scontent-mnl3-3.xx&_nc_gid=tC_HR3ahZNtJXNoMusLNVw&_nc_ss=7b2a8&oh=00_AQItuoCp8QELhrBMBLxTX0DhW75_CW-0U2uv05F96xncGA&oe=6A9FDFF2'),
                ),
                        //"Sir, dito rin po sa picture gumamit ako ng CircleAvatar para maging circular yung profile picture.
                        // Then instead na maglagay ako ng image sa assets folder ng project, gumamit ako ng NetworkImage para directly
                        // siyang mag-load ng image from an online URL.
                        // Advantage po nito is hindi ko na kailangang mag-bundle ng image file inside the application,
                        // so hindi na madadagdagan yung app files dahil sa local image asset
                const SizedBox(height: 10),

                const Text(
                  'Ace Patrick Magsino',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),


                const Text(
                  '3 IT - B ',
                  style: TextStyle(
                    fontSize: 22, fontWeight: FontWeight.bold,
                  ),
                ),

                const Text(
                  'Student ID: 2300472 ',
                  style: TextStyle(
                    fontSize: 10,
                  ),
                ),

                const Text(
                  'BS Information Technology',
                  style: TextStyle(
                    fontSize: 10,
                  ),
                ),

                const Text(
                  'University Of Cabuyao (PnC)',
                  style: TextStyle(
                    fontSize: 10,
                  ),
                ),

                const SizedBox(height: 15),
              ],
            ),
          ),

          Container(
            padding: const EdgeInsets.all(20),
            child: const Text(
              'About Me',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'I am an Information Technology student interested in '
              'programming, networking, and learning new technologies.',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),

          Container(
            padding: const EdgeInsets.all(20),
            child: const Text(
              'My Skills',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const ListTile(
            leading: Icon(Icons.code),
            title: Text('Flutter'),
          ),

          const ListTile(
            leading: Icon(Icons.computer),
            title: Text('Programming'),
          ),

          const ListTile(
            leading: Icon(Icons.network_check),
            title: Text('Networking'),
          ),

          const ListTile(
            leading: Icon(Icons.storage),
            title: Text('Database'),
          ),
          Card(
            child: Column(
              children: [
                const ListTile(
                  leading: Icon(Icons.email),
                  title: Text('ace.patrick.magsino@gmail.com'),
                ),

                const ListTile(
                  leading: Icon(Icons.phone),
                  title: Text('+63 962-300-3265'),
                ),

                const ListTile(
                  leading: Icon(Icons.location_on),
                  title: Text('Pulo, Cabuyao City, Laguna'),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),




          //Sir, dito po gumamit ako ng GestureDetector para ma-detect yung different gestures like single tap, double tap, and long press.
          // Then gumamit din ako ng AlertDialog para at least mag-display din sa mismong UI yung information na dapat i-print sa Terminal.

          // Ang nakalagay po kasi sa instructions is mag-print lang sa Terminal, pero nag-add lang po ako ng extra functionality para makita rin mismo ng user yung result.

          // Then meron din po akong ElevatedButton na kapag pinindot, magdi-display din ng information using the same AlertDialog.

          // So basically, yung print() is still there para sundin yung instruction, and yung AlertDialog is just an additional feature para visible din sa UI yung output.
          GestureDetector(
            onTap: () {
              print('Examination Date: September 5, 2026');

              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('Examination Date'),
                    content: const Text('September 5, 2026'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('OK'),
                      ),
                    ],
                  );
                },
              );
            },

            onDoubleTap: () {
              print('ITP107 Professor: Albert Q. Alforja');

              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('ITP107 Professor'),
                    content: const Text('Albert Q. Alforja'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('OK'),
                      ),
                    ],
                  );
                },
              );
            },

            onLongPress: () {
              print('Student Name: Ace Patrick Magsino');

              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('Student Name'),
                    content: const Text('Ace Patrick Magsino'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('OK'),
                      ),
                    ],
                  );
                },
              );
            },

            child: ElevatedButton(
              onPressed: () {
                print('Examination Date: September 5, 2026');

                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text('Examination Date'),
                      content: const Text('September 5, 2026'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('OK'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: const Text('Click Me'),
            ),
          ),

          const SizedBox(height: 30),
        ],
      ),
    );
  }
}