class AuthorBook < ActiveRecord::Base
	belongs_to :author
	belongs_to :book
	accepts_nested_attributes_for :author
	self.table_name = 'authors_books'

	after_destroy do 
		Author.find(author.id).destroy
	end
end