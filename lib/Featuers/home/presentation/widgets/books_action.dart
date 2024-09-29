import 'package:bookly/Featuers/home/data/models/book_model/book_model.dart';
import 'package:bookly/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              onPressed: () async {
                Uri url = Uri.parse(
                    bookModel.volumeInfo.previewLink ?? "try again later");
                if (!await launchUrl(url)) {
                  throw 'Could not launch $url';
                }
              },
              text: "Preview",
              backgroundColor: const Color(0xffEF8262),
              textColor: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ],
      ),
    );
  }
}
