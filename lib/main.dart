import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Galery 4K',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: Text('Galery 4K'),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.info), text: 'Informasi'),
              Tab(icon: Icon(Icons.calendar_today), text: 'Agenda'),
              Tab(icon: Icon(Icons.photo_library), text: 'Galeri'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            InfoScreen(),
            AgendaSekolahPage(),
            GalleryScreen(),
          ],
        ),
      ),
    );
  }
}

class InfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.school),
          title: Text('Informasi Sekolah'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SchoolInfoScreen()),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.map),
          title: Text('Informasi Peta Sekolah'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SchoolMapScreen()),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.book),
          title: Text('Informasi Jurusan'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => JurusanScreen()),
            );
          },
        ),
      ],
    );
  }
}

class SchoolInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Informasi Sekolah')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'SMKN 4 Bogor',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            Text(
              'Merupakan sekolah kejuruan berbasis Teknologi Informasi dan Komunikasi. '
              'Sekolah ini didirikan dan dirintis pada tahun 2008 kemudian dibuka pada tahun 2009 '
              'yang saat ini terakreditasi A. Terletak di Jalan Raya Tajur Kp. Buntar, Muarasari, Bogor, '
              'sekolah ini berdiri di atas lahan seluas 12.724 m2 dengan berbagai fasilitas pendukung di dalamnya. '
              'Terdapat 54 staff pengajar dan 22 orang staff tata usaha, dikepalai oleh Drs. Mulya Mulprihartono, M. Si, '
              'sekolah ini merupakan investasi pendidikan yang tepat untuk putra/putri anda.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16.0),
            Text(
              'Visi:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              'Terwujudnya SMK Pusat Keunggulan melalui terciptanya pelajar pancasila yang berbasis teknologi, '
              'berwawasan lingkungan dan berkewirausahaan.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16.0),
            Text(
              'Misi:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              '1. Mewujudkan karakter pelajar pancasila beriman dan bertaqwa kepada Tuhan Yang Maha Esa dan berakhlak mulia, '
              'berkebhinekaan global, gotong royong, mandiri, kreatif dan bernalar kritis.\n'
              '2. Mengembangkan pembelajaran dan pengelolaan sekolah berbasis Teknologi Informasi dan Komunikasi.\n'
              '3. Mengembangkan sekolah yang berwawasan Adiwiyata Mandiri.\n'
              '4. Mengembangkan usaha dalam berbagai bidang secara optimal sehingga memiliki kemandirian dan daya saing tinggi.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16.0),
            Text(
              'Kepala Sekolah',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              'Drs. Mulya Murprihartono, M.Si.\n'
              'Kepala Sekolah Ke-3, Juli 2020 - sekarang\n'
              'Sejak satu tahun lalu SMKN 4 Kota Bogor dipimpin oleh seseorang yang membawa warna baru, tahun pertama '
              'sejak dilantik, tepatnya pada tanggal 10 Juli 2020, inovasi dan kebijakan-kebijakan baru pun mulai dirancang. '
              'Bukan tanpa kesulitan, penuh tantangan tapi beliau meyakinkan untuk selalu optimis pada harapan dengan bersinergi '
              'mewujudkan visi misi SMKN 4 Bogor ditengah kesulitan pandemi ini. Strategi baru pun dimunculkan, beberapa program '
              'sudah terealisasikan diantaranya mengembangkan aplikasi LMS (Learning Management System) sebagai solusi dalam '
              'pelaksanaan program BDR (Belajar dari Rumah), untuk mengoptimalkan hubungan kerjasama antara sekolah dengan '
              'Industri dan Dunia Kerja (IDUKA), dan juga untuk pengalaman praktek belajar jarak jauh agar tetap berjalan dengan optimal.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class SchoolMapScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Informasi Peta Sekolah')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Image Section
            Container(
              padding: EdgeInsets.only(bottom: 16.0),
              child: Image.network(
                'https://smkn4bogor.sch.id/assets/images/background/smkn4bogor_3.jpg', // Ganti dengan URL gambar yang valid
                fit: BoxFit.cover,
                width: double.infinity,
                height: 300, // Sesuaikan tinggi gambar sesuai kebutuhan
              ),
            ),
            // Location Description Section
            Text(
              'Lokasi Sekolah:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              'Jl. Raya Tajur, Kp. Buntar RT.02/RW.08, Kel. Muara Sari, Kec. Bogor Selatan, RT.03/RW.08, Muarasari, Kec. Bogor Sel., Kota Bogor, Jawa Barat 16137',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class JurusanScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Informasi Jurusan')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Bagian Pemberitahuan
            Text(
              'PPLG, TJKT, TPFL, TKR',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 16.0), // Jarak antara pemberitahuan dan gambar
            Expanded(
              child: GridView.count(
                crossAxisCount: 2, // Jumlah kolom dalam grid
                crossAxisSpacing: 16.0, // Spasi antar kolom
                mainAxisSpacing: 16.0, // Spasi antar baris
                children: <Widget>[
                  _buildImageWithLabel(
                    'PPLG',
                    'https://smkn4bogor.sch.id/assets/images/logo/pplg.png', // Ganti dengan URL gambar yang valid
                  ),
                  _buildImageWithLabel(
                    'TJKT',
                    'https://smkn4bogor.sch.id/assets/images/logo/tjkt.png', // Ganti dengan URL gambar yang valid
                  ),
                  _buildImageWithLabel(
                    'TPFL',
                    'https://smkn4bogor.sch.id/assets/images/logo/tflm.jpeg', // Ganti dengan URL gambar yang valid
                  ),
                  _buildImageWithLabel(
                    'TKR',
                    'https://smkn4bogor.sch.id/assets/images/logo/tkr.png', // Ganti dengan URL gambar yang valid
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImageWithLabel(String label, String imageUrl) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          label,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8.0), // Jarak antara label dan gambar
        Image.network(
          imageUrl,
          fit: BoxFit.cover,
          height: 100, // Sesuaikan tinggi gambar sesuai kebutuhan
          width: double.infinity,
        ),
      ],
    );
  }
}

class AgendaSekolahPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agenda Sekolah'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          ListTile(
            title: Text('Praktek Kerja Lapangan'),
            subtitle: Text('01 Januari 2025'),
          ),
          Divider(),
          ListTile(
            title: Text('Pentas Seni'),
            subtitle: Text('26 September 2024'),
          ),
          Divider(),
          ListTile(
            title: Text('Kunjungan Industri'),
            subtitle: Text('29 Juli 2024'),
          ),
          Divider(),
        ],
      ),
    );
  }
}

class GalleryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<String> imageUrls = [
      'https://smkn4bogor.sch.id/assets/images/background/smkn4bogor_3.jpg', 
      'https://smkn4bogor.sch.id/assets/images/background/pplg_2.jpg', 
      'https://smkn4bogor.sch.id/assets/images/background/tpfl_1.jpg', 
      'https://smkn4bogor.sch.id/assets/images/background/taman_1.jpg', 
      'https://smkn4bogor.sch.id/assets/images/background/tjkt_2.jpg',
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Galeri'),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(8.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Jumlah kolom dalam grid
          crossAxisSpacing: 8.0, // Spasi horizontal antar gambar
          mainAxisSpacing: 8.0, // Spasi vertikal antar gambar
        ),
        itemCount: imageUrls.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 4.0,
            child: Image.network(
              imageUrls[index],
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}
