import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const FujiiKazeApp());
}

class FujiiKazeApp extends StatelessWidget {
  const FujiiKazeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fujii Kaze Asia Tour',
      theme: ThemeData(
        fontFamily: 'Arial',
        brightness: Brightness.dark,
        primaryColor: const Color(0xFF3B2A26),
        scaffoldBackgroundColor: const Color(0xFF3B2A26),
      ),
      home: const FujiiKazeHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class FujiiKazeHomePage extends StatelessWidget {
  const FujiiKazeHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Header Section
            Stack(
              children: [
                Image.network(
                  'https://cdn.idntimes.com/content-images/duniaku/post/20241130/igs-best-of-fujii-kaze-2020-2024-asia-tour-di-jakarta-duniaku-cropped-d19bca1180286c25f9c00f9a2506f5b3.jpg',
                  width: double.infinity,
                  height: 300,
                  fit: BoxFit.cover,
                ),
                Positioned.fill(
                  child: Container(
                    color: Colors.black.withOpacity(0.4),
                  ),
                ),
                Positioned.fill(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Best of Fujii Kaze 2020-2024',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'ASIA TOUR',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 16,
                  right: 16,
                  child: Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          shape: const CircleBorder(),
                          padding: const EdgeInsets.all(12),
                        ),
                        child: const Text('En'),
                      ),
                      const SizedBox(width: 8),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          shape: const CircleBorder(),
                          padding: const EdgeInsets.all(12),
                        ),
                        child: const Text('Ja'),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            // Artists Section
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Artists',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text('Fujii Kaze', style: TextStyle(color: Colors.white)),
                  SizedBox(height: 8),
                  Text('[Band members]', style: TextStyle(color: Colors.white)),
                  SizedBox(height: 8),
                  Text('Gt. TAKUING(Suchmos) / Ba. Naoki Kobayashi / Dr. Norihide Soji / Key. Yaffle',
                      style: TextStyle(color: Colors.white)),
                  SizedBox(height: 8),
                  Text('[Dancers]', style: TextStyle(color: Colors.white)),
                  SizedBox(height: 8),
                  Text('SHINGO OKAMOTO / KOU / Raphael / Vinth Malukin',
                      style: TextStyle(color: Colors.white)),
                ],
              ),
            ),

            // Information Section
            Container(
              color: const Color(0xFF2E1F1A),
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Information',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 16),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: DataTable(
                      headingRowColor: MaterialStateProperty.all(
                        const Color(0xFF3B2A26),
                      ),
                      dataRowColor: MaterialStateProperty.all(
                        const Color(0xFF4A3A35),
                      ),
                      columns: const [
                        DataColumn(
                          label: Text('Date', style: TextStyle(color: Colors.white)),
                        ),
                        DataColumn(
                          label: Text('Location', style: TextStyle(color: Colors.white)),
                        ),
                        DataColumn(
                          label: Text('On-sale Date (Local Time)', style: TextStyle(color: Colors.white)),
                        ),
                        DataColumn(
                          label: Text('Tickets', style: TextStyle(color: Colors.white)),
                        ),
                        DataColumn(
                          label: Text('Promoter', style: TextStyle(color: Colors.white)),
                        ),
                      ],
                      rows: [
                        DataRow(cells: [
                          const DataCell(Text('Oct. 28, 2024', style: TextStyle(color: Colors.white))),
                          const DataCell(Text('Singapore Indoor Stadium', style: TextStyle(color: Colors.white))),
                          const DataCell(Text('Wed, September 4', style: TextStyle(color: Colors.white))),
                          const DataCell(Text('SOLD OUT', style: TextStyle(color: Colors.white))),
                          DataCell(
                            Text('Live Nation Singapore', style: TextStyle(color: Colors.blue[400])),
                          ),
                        ]),
                        DataRow(cells: [
                          const DataCell(Text('Nov. 2, 2024', style: TextStyle(color: Colors.white))),
                          const DataCell(Text('Axiata Arena (Kuala Lumpur)', style: TextStyle(color: Colors.white))),
                          const DataCell(Text('Sun, September 1', style: TextStyle(color: Colors.white))),
                          DataCell(
                            Text('Book Tickets', style: TextStyle(color: Colors.blue[400])),
                          ),
                          DataCell(
                            Text('AJS / INYOUR Live', style: TextStyle(color: Colors.blue[400])),
                          ),
                        ]),
                        DataRow(cells: [
                          const DataCell(Text('Nov. 9, 2024', style: TextStyle(color: Colors.white))),
                          const DataCell(Text('Impact Arena (Bangkok)', style: TextStyle(color: Colors.white))),
                          const DataCell(Text('Sun, September 15', style: TextStyle(color: Colors.white))),
                          const DataCell(Text('SOLD OUT', style: TextStyle(color: Colors.white))),
                          DataCell(
                            Text('Avalon Live', style: TextStyle(color: Colors.blue[400])),
                          ),
                        ]),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // General Information Section
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'General Information',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color(0xFF2E1F1A),
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 8,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        const Text(
                          'The playlist "Best of Fujii Kaze 2020-2024" will also be released on vinyl. Limited pre-sale will be available at the following Asia tour shows.',
                          style: TextStyle(color: Colors.white),
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          'The vinyl will be sold in Japan and other countries as well. Please stay tuned for further updates.',
                          style: TextStyle(color: Colors.white),
                        ),
                        const SizedBox(height: 16),
                        Image.network(
                          'https://cdn.idntimes.com/content-images/duniaku/post/20241130/igs-best-of-fujii-kaze-2020-2024-asia-tour-di-jakarta-duniaku-cropped-d19bca1180286c25f9c00f9a2506f5b3.jpg',
                          width: 200,
                          height: 200,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Best of Fujii Kaze Section
            Container(
              color: const Color(0xFF2E1F1A),
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Best of Fujii Kaze 2020-2024',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Format: Vinyl / Number of Discs: 1 / Catalogue Number: UMJK-9181',
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(height: 16),
                  LayoutBuilder(
                    builder: (context, constraints) {
                      if (constraints.maxWidth > 600) {
                        // Desktop layout
                        return Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: _buildTrackList(),
                            ),
                            const SizedBox(width: 24),
                            Expanded(
                              child: _buildLimitedShowsList(),
                            ),
                          ],
                        );
                      } else {
                        // Mobile layout
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildTrackList(),
                            const SizedBox(height: 24),
                            _buildLimitedShowsList(),
                          ],
                        );
                      }
                    },
                  ),
                ],
              ),
            ),

            // Playlist Section
            Container(
              color: const Color(0xFFD3C6B1),
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Playlist',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 16),
                  LayoutBuilder(
                    builder: (context, constraints) {
                      if (constraints.maxWidth > 600) {
                        // Desktop layout
                        return Row(
                          children: [
                            Image.network(
                              'https://cdn.idntimes.com/content-images/duniaku/post/20241130/igs-best-of-fujii-kaze-2020-2024-asia-tour-di-jakarta-duniaku-cropped-d19bca1180286c25f9c00f9a2506f5b3.jpg',
                              width: 200,
                              height: 200,
                            ),
                            const SizedBox(width: 24),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Best of Fujii Kaze 2020-2024',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.black,
                                    foregroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(24),
                                    ),
                                  ),
                                  child: const Text('Listen and stream here'),
                                ),
                              ],
                            ),
                          ],
                        );
                      } else {
                        // Mobile layout
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.network(
                              'https://cdn.idntimes.com/content-images/duniaku/post/20241130/igs-best-of-fujii-kaze-2020-2024-asia-tour-di-jakarta-duniaku-cropped-d19bca1180286c25f9c00f9a2506f5b3.jpg',
                              width: 200,
                              height: 200,
                            ),
                            const SizedBox(height: 16),
                            const Text(
                              'Best of Fujii Kaze 2020-2024',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(height: 8),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24),
                                ),
                              ),
                              child: const Text('Listen and stream here'),
                            ),
                          ],
                        );
                      }
                    },
                  ),
                ],
              ),
            ),

            // Download Section
            Container(
              color: const Color(0xFF2E1F1A),
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Download',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 16),
                  LayoutBuilder(
                    builder: (context, constraints) {
                      if (constraints.maxWidth > 600) {
                        // Desktop layout
                        return Row(
                          children: [
                            Image.network(
                              'https://cdn.idntimes.com/content-images/duniaku/post/20241130/igs-best-of-fujii-kaze-2020-2024-asia-tour-di-jakarta-duniaku-cropped-d19bca1180286c25f9c00f9a2506f5b3.jpg',
                              width: 200,
                              height: 200,
                            ),
                            const SizedBox(width: 24),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'OFFICIAL APP Fujii Kaze',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  children: [
                                    Image.network(
                                      'https://storage.googleapis.com/a1aa/image/txkVhaHb3RPcs8wroyC4uJdmDuqljGmm8OHZYj_3b30.jpg',
                                      width: 120,
                                      height: 40,
                                    ),
                                    const SizedBox(width: 16),
                                    Image.network(
                                      'https://storage.googleapis.com/a1aa/image/pWM2hcFGqYCi9GyBob-vt-3t5ESZOqTVQAeJhvI_W-I.jpg',
                                      width: 120,
                                      height: 40,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        );
                      } else {
                        // Mobile layout
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.network(
                              'https://cdn.idntimes.com/content-images/duniaku/post/20241130/igs-best-of-fujii-kaze-2020-2024-asia-tour-di-jakarta-duniaku-cropped-d19bca1180286c25f9c00f9a2506f5b3.jpg',
                              width: 200,
                              height: 200,
                            ),
                            const SizedBox(height: 16),
                            const Text(
                              'OFFICIAL APP Fujii Kaze',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.network(
                                  'https://storage.googleapis.com/a1aa/image/txkVhaHb3RPcs8wroyC4uJdmDuqljGmm8OHZYj_3b30.jpg',
                                  width: 120,
                                  height: 40,
                                ),
                                const SizedBox(width: 16),
                                Image.network(
                                  'https://storage.googleapis.com/a1aa/image/pWM2hcFGqYCi9GyBob-vt-3t5ESZOqTVQAeJhvI_W-I.jpg',
                                  width: 120,
                                  height: 40,
                                ),
                              ],
                            ),
                          ],
                        );
                      }
                    },
                  ),
                ],
              ),
            ),

            // Footer
            Container(
              color: const Color(0xFF2E1F1A),
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(FontAwesomeIcons.facebookF, color: Colors.white),
                      SizedBox(width: 16),
                      Icon(FontAwesomeIcons.twitter, color: Colors.white),
                      SizedBox(width: 16),
                      Icon(FontAwesomeIcons.instagram, color: Colors.white),
                      SizedBox(width: 16),
                      Icon(FontAwesomeIcons.youtube, color: Colors.white),
                      SizedBox(width: 16),
                      Icon(FontAwesomeIcons.spotify, color: Colors.white),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    '© 2024 Fujii Kaze. All rights reserved.',
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(height: 16),
                  Image.network(
                    'https://storage.googleapis.com/a1aa/image/9MK6s7JI3typb4UDHvLFA1E97FDvqembMQ44xx8amTU.jpg',
                    width: 80,
                    height: 40,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTrackList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          '[Track List]',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 8),
        Text('Side A', style: TextStyle(color: Colors.white)),
        SizedBox(height: 4),
        Text('01. Matsuri', style: TextStyle(color: Colors.white)),
        SizedBox(height: 4),
        Text('02. Matsuri (Band)', style: TextStyle(color: Colors.white)),
        SizedBox(height: 4),
        Text('03. Nan-Nan', style: TextStyle(color: Colors.white)),
        SizedBox(height: 4),
        Text('04. Hen', style: TextStyle(color: Colors.white)),
        SizedBox(height: 4),
        Text('05. Hana (Flower)', style: TextStyle(color: Colors.white)),
        SizedBox(height: 8),
        Text('Side B', style: TextStyle(color: Colors.white)),
        SizedBox(height: 4),
        Text('01. Garden', style: TextStyle(color: Colors.white)),
        SizedBox(height: 4),
        Text('02. Shinunoga E-Wa', style: TextStyle(color: Colors.white)),
        SizedBox(height: 4),
        Text('03. Tsuki', style: TextStyle(color: Colors.white)),
        SizedBox(height: 4),
        Text('04. Yaba', style: TextStyle(color: Colors.white)),
        SizedBox(height: 4),
        Text('05. Kirari', style: TextStyle(color: Colors.white)),
        SizedBox(height: 4),
        Text('06. Matsuri (Re-Recording)', style: TextStyle(color: Colors.white)),
      ],
    );
  }

  Widget _buildLimitedShowsList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          '[Limited pre-sale available shows]',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 8),
        Text('10/28 Singapore Indoor Stadium', style: TextStyle(color: Colors.white)),
        SizedBox(height: 4),
        Text('11/09 Impact Arena (Bangkok)', style: TextStyle(color: Colors.white)),
        SizedBox(height: 4),
        Text('11/10 Impact Arena (Bangkok)', style: TextStyle(color: Colors.white)),
        SizedBox(height: 4),
        Text('11/16 Taipei Arena', style: TextStyle(color: Colors.white)),
        SizedBox(height: 4),
        Text('11/17 Taipei Arena', style: TextStyle(color: Colors.white)),
        SizedBox(height: 4),
        Text('11/24 Mercedes-Benz Arena (Shanghai)', style: TextStyle(color: Colors.white)),
        SizedBox(height: 4),
        Text('11/25 Mercedes-Benz Arena (Shanghai)', style: TextStyle(color: Colors.white)),
        SizedBox(height: 4),
        Text('12/04 AsiaWorld-Expo (Hong Kong)', style: TextStyle(color: Colors.white)),
        SizedBox(height: 4),
        Text('12/05 AsiaWorld-Expo (Hong Kong)', style: TextStyle(color: Colors.white)),
        SizedBox(height: 4),
        Text('12/07 SK Handball Arena (Olympic Park, Seoul)', style: TextStyle(color: Colors.white)),
      ],
    );
  }
}