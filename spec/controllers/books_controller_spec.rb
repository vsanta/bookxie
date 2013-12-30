require 'spec_helper'

describe BooksController do
  describe "#show" do
    it "finds and assigns a book" do
      book = stub_model(Book)
      expect(Book).to receive(:find).and_return(book)
      get :show, id: 1
      expect(assigns(:book)).to eq book
    end
  end
end