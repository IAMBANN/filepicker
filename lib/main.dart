import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'file_list.dart';
import 'package:open_file/open_file.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isChecked = false;
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  bool isChecked4 = false;
  bool isChecked5 = false;
  bool isChecked6 = false;
  bool isChecked7 = false;
  bool isChecked8 = false;
  bool declaration = false;
  String fileType = 'All';

  FilePickerResult? result;
  PlatformFile? file;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
            child: Column(
              // main AxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Upload Documents   ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    decoration: TextDecoration.underline,
                  ),
                ),const SizedBox(
                  height: 18,
                ),
                Text(
                  '(Please upload documents in .pdf format. File size not to exceed 2MB )',
                  style: TextStyle(color: Colors.red),
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      '1) Identity Proof*   ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        pickFiles(fileType);
                      },
                      child: const Text('Pick file'),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        '2) Housetax Receipt*  ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,

                          ),
                      ),
                      ElevatedButton(
                        onPressed: () async {
                          pickFiles(fileType);
                        },
                        child: const Text('Pick file'),
                      ),
                    ]),SizedBox(
                  height: 12,
                ),

                Row(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: const Text(
                          '3) No Objection Certificate/ Lease argreement/ Ownership document*   ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () async {
                          pickFiles(fileType);
                        },
                        child: const Text('Pick file'),
                      ),
                    ]),
                if (file != null) fileDetails(file!),
                if (file != null)
                  ElevatedButton(
                    onPressed: () {
                      viewFile(file!);
                    },
                    child: const Text('View Selected File'),
                  ),
SizedBox(
  height: 40,
),
                   const Text(
                    ' Please Upload the permission granted by the authorities as per requirement  ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),

                Row(
                 // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Checkbox(
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });

                        }),
                    Flexible(
                      child: Text(
                        "Food and Drugs",
                        overflow: TextOverflow.ellipsis, // or TextOverflow.fade
                      ),
                    ),
                     SizedBox(width: 120),
                    Visibility(
                      visible:  isChecked ,
                      child: ElevatedButton(
                        onPressed: () async {
                          pickFiles(fileType);
                        },
                        child: const Text('Pick file'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),


                Row(
                 // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Checkbox(
                        value: isChecked1,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked1 = value!;
                          });
                        }),
                    Flexible(
                      child: Text(
                        "Excise",
                        overflow: TextOverflow.ellipsis, // or TextOverflow.fade
                      ),

                    ),SizedBox(width: 180),
                    Visibility(
                      visible:  isChecked1 ,
                      child:ElevatedButton(
                        onPressed: () async {
                          pickFiles(fileType);
                        },
                        child: const Text('Pick file'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Checkbox(
                        value: isChecked2,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked2 = value!;
                          });
                        }),
                    Flexible(
                      child: Text(
                        "Police Dept",
                        overflow: TextOverflow.ellipsis, // or TextOverflow.fade
                      ),

                    ),SizedBox(width: 160),
                    Visibility(
                      visible:  isChecked2 ,
                      child: ElevatedButton(
                        onPressed: () async {
                          pickFiles(fileType);
                        },
                        child: const Text('Pick file'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(

                  children: [
                    Checkbox(
                        value: isChecked3,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked3 = value!;

                          });
                        }),
                    Flexible(
                      child: Text(
                        " CRZ",
                        overflow: TextOverflow.ellipsis, // or TextOverflow.fade
                      ),

                    ),
                    SizedBox(width: 180),
                    Visibility(
                      visible:  isChecked3,
                      child:ElevatedButton(
                        onPressed: () async {
                          pickFiles(fileType);
                        },
                        child: const Text('Pick file'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Checkbox(
                        value: isChecked4,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked4 = value!;
                          });
                        }),
                    Flexible(
                      child: Text(
                        "Tourism",
                        overflow: TextOverflow.ellipsis, // or TextOverflow.fade
                      ),

                    ),SizedBox(width: 180),
                    Visibility(
                      visible:  isChecked4 ,
                      child:ElevatedButton(
                        onPressed: () async {
                          pickFiles(fileType);
                        },
                        child: const Text('Pick file'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Checkbox(
                        value: isChecked5,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked5 = value!;
                          });
                        }),
                    Flexible(
                      child: Text(
                        "Fire & Bridge",
                        overflow: TextOverflow.ellipsis, // or TextOverflow.fade
                      ),

                    ),SizedBox(width: 140),
                    Visibility(
                      visible:  isChecked5 ,
                      child: ElevatedButton(
                        onPressed: () async {
                          pickFiles(fileType);
                        },
                        child: const Text('Pick file'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Checkbox(
                        value: isChecked6,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked6 = value!;
                          });
                        }),
                    Flexible(
                      child: Text(
                        "Factories & Boilers",
                        overflow: TextOverflow.ellipsis, // or TextOverflow.fade
                      ),

                    ),SizedBox(width: 140),
                    Visibility(
                      visible:  isChecked6 ,
                      child:ElevatedButton(
                        onPressed: () async {
                          pickFiles(fileType);
                        },
                        child: const Text('Pick file'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Checkbox(
                        value: isChecked7,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked7 = value!;
                          });
                        }),
                    Flexible(
                      child: Text(
                        "Health Services",
                        overflow: TextOverflow.ellipsis, // or TextOverflow.fade
                      ),

                    ),SizedBox(width: 140),
                    Visibility(
                      visible:  isChecked7 ,
                      child:ElevatedButton(
                        onPressed: () async {
                          pickFiles(fileType);
                        },
                        child: const Text('Pick file'),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Checkbox(
                        value: isChecked8,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked8 = value!;
                          });
                        }),
                    Flexible(
                      child: Text(
                        "Others",
                        overflow: TextOverflow.ellipsis, // or TextOverflow.fade
                      ),

                    ),SizedBox(width: 180),
                    Visibility(
                      visible:  isChecked8 ,
                      child:ElevatedButton(
                        onPressed: () async {
                          pickFiles(fileType);
                        },
                        child: const Text('Pick file'),
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: const Text(
                    "Self Declaration",
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w800,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),const SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Checkbox(
                        value: declaration,
                        onChanged: (bool? value) {
                          setState(() {
                            declaration = value!;
                          });
                        }),
                    Expanded(
                      child: const Text(
                        " I declare that the above information is true to best of my knowledge and belief. I am well aware that information given by me above is proven false/ not true, I will have to face the punishment as per law and also all the permissions obtained by me shall be summarily withdrawn",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            overflow: TextOverflow.visible),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget fileDetails(PlatformFile file) {
    final kb = file.size / 1024;
    final mb = kb / 1024;
    final size = (mb <= 2)
        ? '${mb.toStringAsFixed(2)} MB'
        : '${kb.toStringAsFixed(2)} KB';
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('File Name: ${file.name}'),
          Text('File Size: $size'),
          Text('File Extension: ${file.extension}'),
          Text('File Path: ${file.path}'),
        ],
      ),
    );
  }

  void pickFiles(String? filetype) async {
    //  switch (filetype) {
    //   case 'Image':
    //     result = await FilePicker.platform
    //         .pickFiles(type: FileType.custom, allowedExtensions: ['pdf']);
    //     if (result == null) return;
    //     file = result!.files.first;
    //     setState(() {});
    //     break;
    //   case 'Video':
    //     result = await FilePicker.platform
    //         .pickFiles(type: FileType.custom, allowedExtensions: ['pdf']);
    //     if (result == null) return;
    //     file = result!.files.first;
    //     setState(() {});
    //     break;
    //   case 'Audio':
    //     result = await FilePicker.platform.pickFiles(
    //       type: FileType.custom,
    //       allowedExtensions: ['pdf'],
    //     );
    //     if (result == null) return;
    //     file = result!.files.first;
    //     setState(() {});
    //     break;
    //   case 'All':
    //     result = await FilePicker.platform
    //         .pickFiles(type: FileType.custom, allowedExtensions: ['pdf']);
    //     if (result == null) return;
    //     file = result!.files.first;
    //     setState(() {});
    //     break;
    // case 'MultipleFile':
    result = await FilePicker.platform
        .pickFiles(type: FileType.custom, allowedExtensions: ['pdf']);
    if (result == null) return;
    loadSelectedFiles(result!.files);
    // break;
  }

  // multiple file selected
  // navigate user to 2nd screen to show selected files
  void loadSelectedFiles(List<PlatformFile> files) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => FileList(files: files, onOpenedFile: viewFile)));
  }

  // open the picked file
  void viewFile(PlatformFile file) {
    if (file.size < 2097152)
      OpenFile.open(file.path);
    else
      return null;
  }
}
