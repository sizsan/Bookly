require 'rails_helper'

RSpec.describe BooksController, type: :controller do

    # This should return the minimal set of attributes required to create a valid
    # Book. As you add validations to Book, be sure to
    # adjust the attributes here as well.
    let(:valid_attributes) {
      { isbn:'9780409337419',title:'Queensland Evidence Law',description:nil,image_link:'http://books.google.com/books/content?id=ngP8oAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api',authors:'David Field' }
    }
  
    let(:invalid_attributes) {
      { isbn:'XXXXXXXXXXXXX',title:nil,description:3000,image_link:3000,authors:3000 }
    }

    let(:user) {
      User.create(email:'susan@example.com',username:'susankey',password: '123testing1',password_confirmation: '123testing1',firstname:'Susan',lastname:'Key')
    }
  
    # This should return the minimal set of values that should be in the session
    # in order to pass any filters (e.g. authentication) defined in
    # BooksController. Be sure to keep this updated too.
    let(:valid_session) { {} }
  
    describe "GET #index" do
      it "returns a success response" do
        Book.create! valid_attributes
        expect(response).to be_successful
      end
    end
  
    describe "GET #show" do
      it "returns a success response" do
        book = Book.create! valid_attributes
        sign_in(user)
        get :show, params: {id: book.to_param}, session: valid_session
        expect(response).to be_successful
      end
    end
  
    describe "GET #new" do
      it "returns a success response" do
        book = Book.create! valid_attributes
        sign_in(user)
        get :new, params: {}, session: valid_session
        expect(response).to be_successful
      end
    end
  
    describe "POST #create" do
      context "with valid params" do
        it "creates a new Book" do
            sign_in(user)
            expect {
                post :create, params: {book: valid_attributes}, session: valid_session
            }.to change(Book, :count).by(1)
        end
  
        it "redirects to the created book" do
            sign_in(user)
            post :create, params: {book: valid_attributes}, session: valid_session
            expect(response).to redirect_to(books_path)
        end
      end
  
      context "with invalid params" do
        it "returns a success response" do
            sign_in(user)
            post :create, params: {book: invalid_attributes}, session: valid_session
            expect(response).to redirect_to(books_path)
        end
      end
    end
end