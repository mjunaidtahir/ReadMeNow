import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:ionicons/ionicons.dart';
import 'package:readmenow/widgets/top_view.dart';

class SelectLanguageScreen extends StatefulWidget {
  const SelectLanguageScreen({super.key});

  @override
  State<SelectLanguageScreen> createState() => _SelectLanguageScreenState();
}

class _SelectLanguageScreenState extends State<SelectLanguageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: const Icon(Icons.arrow_back)),
              ),
              TopBar(
                text: "language".tr(),
              ),
            ],
          ),
          const SizedBox(height: 20),
          ListTile(
            leading: const Icon(
              Ionicons.language,
            ),
            title: const Text("English"),
            onTap: () {
              setState(() {
                EasyLocalization.of(context)?.setLocale(const Locale('en'));
              });
            },
          ),
          ListTile(
            leading: const Icon(
              Ionicons.language,
            ),
            title: const Text("Vietnamese"),
            onTap: () {
              setState(() {
                EasyLocalization.of(context)?.setLocale(const Locale('vi'));
              });
            },
          ),
        ]),
      ),
    );
  }
}

// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';
// import 'package:readmenow/utils/globals.dart';

// class SelectLanguageScreen extends StatefulWidget {
//   const SelectLanguageScreen({super.key});

//   @override
//   State<SelectLanguageScreen> createState() => _SelectLanguageScreenState();
// }

// class _SelectLanguageScreenState extends State<SelectLanguageScreen> {
//   void _updateLanguage(BuildContext context, Locale locale) {
//     context.setLocale(locale);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("language".tr()),
//       ),
//       body: ListView.separated(
//         itemBuilder: (context, index) => _LanguageSelectionButton(
//           label: _getLanguageFromCode(languages.elementAt(index)),
//           isSelected: languages.elementAt(index).languageCode ==
//               context.locale.languageCode,
//           onTap: () => _updateLanguage(context, languages.elementAt(index)),
//         ),
//         separatorBuilder: (_, __) => const Divider(),
//         itemCount: languages.length,
//       ),
//     );
//   }

//   String _getLanguageFromCode(Locale locale) {
//     switch (locale.languageCode) {
//       case "en":
//         return 'English';

//       case "vi":
//         return "Tiếng Việt";

//       default:
//         return locale.languageCode;
//     }
//   }
// }

// class _LanguageSelectionButton extends StatelessWidget {
//   final String label;
//   final bool isSelected;
//   final void Function()? onTap;
//   const _LanguageSelectionButton({
//     required this.label,
//     this.isSelected = false,
//     this.onTap,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: onTap,
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
//         child: Row(
//           children: [
//             Expanded(
//               child: Text(
//                 label,
//                 style: TextStyle(
//                   fontSize: 17,
//                   color: isSelected ? Colors.red.shade900 : Colors.white,
//                 ),
//               ),
//             ),
//             if (isSelected) Icon(Icons.check, color: Colors.red.shade900)
//           ],
//         ),
//       ),
//     );
//   }
// }
