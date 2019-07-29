class Book < ApplicationRecord
    has_many :adverts

    def self.select_book(title)
        books = GoogleBooks.search(title)
        book = books.first
        new_book = Book.new
        new_book.isbn = book.isbn
        new_book.title = book.title
        new_book.description = book.description
        new_book.image_link = book.image_link
        new_book.save
        # if new_book.save? == false
        #     redirect_to books_path
        # end
    end
end