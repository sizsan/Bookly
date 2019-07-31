class Book < ApplicationRecord
    has_many :adverts
    validates :title, presence: true

    def self.select_book(title)
        books = GoogleBooks.search(title)
        book = books.first
        if book == nil
            return false
        end
        new_book = Book.new
        new_book.title = book.title
        new_book.isbn = book.isbn
        new_book.authors = book.authors
        new_book.description = book.description
        new_book.image_link = book.image_link
        new_book.save
    end
end