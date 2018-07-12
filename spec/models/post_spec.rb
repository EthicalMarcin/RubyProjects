require 'rails_helper'

RSpec.describe Post, type: :model do
	
	# it 'should require title and content presence' do
	# 	expect(Post.new).not_to be_valid
	# 	expect(Post.new(content: 'aaaaaaaaaaaaaaaa', title: 'aaaaa', author_id: 2)).to be_valid
	# end
	describe 'Validators' do
		it { should validate_presence_of (:title)}
		it { should validate_presence_of (:content)}

		# it 'should have proper attributes' do
		# 	expect(subject.attributes).to include('title', 'content', 'author_id')
		# end
	end

	it 'should have old scope' do
		author1 = Author.create(name: 'test', surname: 'test', age: 15)
		post1 = Post.create(title: 'test', content: 'aaaaaaaaaa', author_id: 1)
		expect(Post.old).not_to include(post1)
		post2 = Post.create(title: 'test2', content: 'aaaaaaaaaa', author_id: 1)
		post2.update(created_at: 1.years.ago)
		expect(Post.old).to include(post2)
		
	end
	




end