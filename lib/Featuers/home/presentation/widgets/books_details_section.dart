import 'package:bookly/Featuers/home/data/models/book_model/book_model.dart';
import 'package:bookly/Featuers/home/presentation/widgets/book_rating.dart';
import 'package:bookly/Featuers/home/presentation/widgets/books_action.dart';
import 'package:bookly/Featuers/home/presentation/widgets/custom_book_image.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.2),
          child: CustomBookImage(
            imageUrl: book.volumeInfo.imageLinks?.thumbnail ?? "",
          ),
        ),
        const SizedBox(height: 43),
        Text(
          book.volumeInfo.title!,
          textAlign: TextAlign.center,
          style: Styles.textStyle30,
        ),
        const SizedBox(height: 6),
        Text(
          book.volumeInfo.authors?[0] ?? "",
          style: Styles.textStyle18.copyWith(
            color: const Color.fromARGB(255, 122, 119, 119).withOpacity(0.7),
            fontStyle: FontStyle.italic,
          ),
        ),
        const SizedBox(height: 18),
        BookRating(
          rating: book.volumeInfo.averageRating ?? 0,
          count: book.volumeInfo.ratingsCount ?? 0,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(height: 37),
        BooksAction(
          bookModel: book,
        ),
      ],
    );
  }
}
