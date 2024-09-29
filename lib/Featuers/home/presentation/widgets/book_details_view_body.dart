import 'package:bookly/Featuers/home/data/models/book_model/book_model.dart';
import 'package:bookly/Featuers/home/presentation/widgets/books_details_section.dart';
import 'package:bookly/Featuers/home/presentation/widgets/similar_box_section.dart';
import 'package:bookly/Featuers/home/presentation/widgets/custom_book_details_app_bar.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                BookDetailsSection(
                  book: bookModel,
                ),
                const Expanded(child: SizedBox(height: 50)),
                const SimilarBoxSection(),
                const SizedBox(height: 40),
              ],
            ),
          ),
        )
      ],
    );
  }
}
