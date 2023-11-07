import 'package:pcn_erp/bible/models/favorite.dart';
import 'package:pcn_erp/bible/services/base_bloc.dart';
import 'package:pcn_erp/bible/utils/constants.dart';
import 'package:pcn_erp/bible/models/book.dart';
import 'package:pcn_erp/bible/models/dao/books_dao.dart';

class BooksBloc  extends BaseBloc<List<Book>>{

  BooksDao _dao = BooksDao();

  Future<List<Book>?> book(int bookID) async {
    try {
      List<Book> books = await _dao.bookById(bookID);
      add(books);
      return books;
    } catch (e) {
      addError(e);
      return null;
    }
  }

  Future<List<Book>?> booksList(Testament testament) async {
    try {
      List<Book> books = await _dao.booksList(testament);
      add(books);
      return books;
      
    } catch (e) {
      addError(e);
      return null;
    }
  }

  Future<Book>markedChapters(Book book) async {
    List<int> marked = [];
    List<Book> books = [];

    List<Favorite> favList = await _dao.markedChapters(book);
    favList.forEach((l) => marked.add(l.verse.chapter));
    book.markedList = marked;

    books.add(book);
    add(books);

    return book;
  }

  booksTitle(Testament testament) {
    String title;

    switch (testament) {
      case Testament.AT:
        {
          title = "Old Testament";
          break;
        }
      case Testament.NT:
        title = "New Testament";
        break;
      default:
        title = "All the books";
    }
    return title;
  }
}