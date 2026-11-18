
import 'package:material_ui/material_ui.dart';
import '../widgets/left_drawer.dart';

class ProjectFormPage extends StatefulWidget {
  const ProjectFormPage({super.key});

  @override
  State<ProjectFormPage> createState() => _ProjectFormPageState();
}

class _ProjectFormPageState extends State<ProjectFormPage> {
  final _formKey = GlobalKey<FormState>();

  String _projectName = "";
  String _description = "";
  String _category = "Web Development";
  String _technologies = "";
  String _projectLink = "";

  final List<String> _categories = [
    'Web Development',
    'Mobile Development',
    'Machine Learning',
    'Data Science',
    'Other',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tambah Proyek'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Form Tambah Proyek',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),

              // Nama Proyek
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Nama Proyek',
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  setState(() {
                    _projectName = value;
                  });
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Nama proyek tidak boleh kosong!';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),

              // Deskripsi
              TextFormField(
                maxLines: 5,
                decoration: const InputDecoration(
                  labelText: 'Deskripsi',
                  border: OutlineInputBorder(),
                  alignLabelWithHint: true,
                ),
                onChanged: (value) {
                  setState(() {
                    _description = value;
                  });
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Deskripsi tidak boleh kosong!';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),

              // Kategori
              DropdownButtonFormField<String>(
                initialValue: _category,
                decoration: const InputDecoration(
                  labelText: 'Kategori',
                  border: OutlineInputBorder(),
                ),
                items: _categories.map((category) {
                  return DropdownMenuItem(
                    value: category,
                    child: Text(category),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _category = value ?? 'Web Development';
                  });
                },
              ),
              const SizedBox(height: 16),

              // Teknologi
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Teknologi yang Digunakan',
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  setState(() {
                    _technologies = value;
                  });
                },
              ),
              const SizedBox(height: 16),

              // Link Proyek
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Link Proyek',
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  setState(() {
                    _projectLink = value;
                  });
                },
              ),
              const SizedBox(height: 24),

              // Tombol Simpan
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        WidgetStateProperty.all(Colors.indigo),
                    foregroundColor:
                        WidgetStateProperty.all(Colors.white),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Text('Proyek Berhasil Disimpan'),
                            content: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Nama: $_projectName'),
                                  Text('Deskripsi: $_description'),
                                  Text('Kategori: $_category'),
                                  Text('Teknologi: $_technologies'),
                                  Text('Link: $_projectLink'),
                                ],
                              ),
                            ),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                  _formKey.currentState!.reset();
                                  setState(() {
                                    _projectName = "";
                                    _description = "";
                                    _category = "Web Development";
                                    _technologies = "";
                                    _projectLink = "";
                                  });
                                },
                                child: const Text('OK'),
                              ),
                            ],
                          );
                        },
                      );
                    }
                  },
                  child: const Text('Simpan'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
