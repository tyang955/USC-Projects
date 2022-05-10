import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_size_getter/file_input.dart';
import 'package:image_size_getter/image_size_getter.dart';

enum ImageSourceType { gallery, camera }
typedef void IntCallback(File file);

void main() {
  runApp(
    MaterialApp(debugShowCheckedModeBanner: false,title: "Album 571", initialRoute: '/', routes: {
      '/': (context) => const HomePage(),
      '/detail': (context) => RouteTwo(image: File('file.txt')),
    }),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<File> imageListInFile = [];

  void addfile(File file) {
    setState(() {
      imageListInFile.add(file);
    });
  }

  void _handleURLButtonPress(BuildContext context, var type) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ImageFromGalleryEx(type, addfile)));
  }

  Widget _GridSection(context) {
    return GridView.count(
      crossAxisCount: 3,
      padding: const EdgeInsets.all(5),
      children: List.generate(imageListInFile.length, (index) {
        return Container(
            padding: const EdgeInsets.all(5),
            child: GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RouteTwo(
                      image: imageListInFile[index],
                      //name: _items[index].name),
                ),
              )
              );
            },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),

          child: Image.file(
              imageListInFile[index],
              fit: BoxFit.cover,
            ),

        )
        ));
      }),
    );
  }


  Widget _buttonSection(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        MaterialButton(
          color: Colors.blue,
          child: const Text(
            "Add from Gallery",
            style:
                TextStyle(color: Colors.white70, fontWeight: FontWeight.bold),
          ),
          onPressed: () {
            _handleURLButtonPress(context, ImageSourceType.gallery);
          },
        ),
        MaterialButton(
          color: Colors.blue,
          child: const Text(
            "Use Camera",
            style:
                TextStyle(color: Colors.white70, fontWeight: FontWeight.bold),
          ),
          onPressed: () {
            _handleURLButtonPress(context, ImageSourceType.camera);
          },
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Album 571"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
              child: imageListInFile.isEmpty
                  ? const Text("No Image Selected")
                  : _GridSection(context)),
          _buttonSection(context)
        ],
      ),
    );
  }
}

class ImageFromGalleryEx extends StatefulWidget {
  final type;
  final IntCallback onSonChanged;
  const ImageFromGalleryEx(this.type, this.onSonChanged);

  @override
  ImageFromGalleryExState createState() =>
      ImageFromGalleryExState(this.type, this.onSonChanged);
}

class ImageFromGalleryExState extends State<ImageFromGalleryEx> {
  var _image;
  var imagePicker;
  var type;
  var onSonChanged;

  ImageFromGalleryExState(this.type, this.onSonChanged);

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    imagePicker = new ImagePicker();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(type == ImageSourceType.camera
              ? "Image from Camera"
              : "Image from Gallery")),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 52,
          ),
          Center(
            child: GestureDetector(
              onTap: () async {
                var source = type == ImageSourceType.camera
                    ? ImageSource.camera
                    : ImageSource.gallery;
                XFile image = await imagePicker.pickImage(
                    source: source,
                    imageQuality: 50,
                    preferredCameraDevice: CameraDevice.front);

                setState(() {
                  _image = File(image.path);
                  onSonChanged(_image);
                });
              },
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(color: Colors.red[200]),
                child: _image != null
                    ? Image.file(
                        _image,
                        width: 200.0,
                        height: 200.0,
                        fit: BoxFit.fitHeight,
                      )
                    : Container(
                        decoration: BoxDecoration(color: Colors.red[200]),
                        width: 200,
                        height: 200,
                        child: Icon(
                          Icons.camera_alt,
                          color: Colors.grey[800],
                        ),
                      ),
              ),
            ),
          )
        ],
      ),
    );
  }
}


class RouteTwo extends StatelessWidget {
  final File image;

  RouteTwo({Key? key, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = ImageSizeGetter.getSize(FileInput(image));
    final width = size.width.toString();
    final height = size.height.toString();
    return Scaffold(
      appBar: AppBar(
        title: Text('Picture'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              child:Image.file( image),

              ),
            ),
          Text("width is " + width),
          Text("height is " +height)
          // Container(
          //   margin: const EdgeInsets.all(20.0),
          //   child: Center(
          //     child: Text(
          //       name,
          //       style: TextStyle(fontSize: 40),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}

