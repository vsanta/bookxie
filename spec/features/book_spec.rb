require 'spec_helper'

feature 'Book Page' do

  let!(:book) do
    Book.create(title: 'Rails 3 Way', isbn: "0321601661", author: "Obie Fernandez", synopsis: "Ruby on Rails strips complexity from the development process, enabling professional developers to focus on what matters most: delivering business value via clean and maintainable code. The Rails 3 Way is the only comprehensive, authoritative guide to delivering production-quality code with Rails 3. Pioneering Rails expert Obie Fernandez and a team of leading experts illuminate the entire Rails 3 API, along with the idioms, design approaches, and libraries that make developing applications with Rails so powerful. Drawing on their unsurpassed experience and track record, they address  the real challenges development teams face, showing how to use Rails 3 to maximize your productivity.")
  end
  scenario "View book page from homepage" do
    Given "I am at Bookxie homepage"
    When "I click on a book title"
    Then "I see the book's title"
    And "I see the book's author"
    And "I see the book's ISBN"
    #And "I see the book's cover"
    And "I see the book's synopsis"
  end

  def i_am_at_bookxie_homepage
    visit root_path
  end

  def i_click_on_a_book_title
    click_on book.title
  end

  def i_see_the_books_title
    expect(page).to have_content book.title
  end

  def i_see_the_books_author
    expect(page).to have_content book.author
  end

  def i_see_the_books_isbn
    expect(page).to have_content book.isbn
  end

  def i_see_the_books_synopsis
    expect(page).to have_content book.synopsis
  end
end