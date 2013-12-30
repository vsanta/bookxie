require 'spec_helper'


describe WelcomeController do
  describe "#index" do
    it "assigns books with all existing books" do
      books = [ stub_model(Book) ]
      expect(Book).to receive(:all).and_return(books)
      get :index
      expect(assigns(:books)).to eq books
    end
  end
end