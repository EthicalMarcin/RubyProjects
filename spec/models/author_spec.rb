require 'rails_helper'
RSpec.describe Author, type: :model do
	describe 'attributes' do
		it 'should have proper attributes' do
			expect(subject.attributes).to include('name', 'surname', 'age')
		end
	end
	describe 'Validators' do
		# it 'should require name and surname presence' do
			# expect(Author.new).not_to be_valid
			# expect(Author.new(name: 'test', surname: 'test')).to be_valid
			it { should validate_presence_of (:name)}
			it { should validate_presence_of (:surname)}
		# end
	end

	describe 'scopes' do
	let(:author1) {create(:author, age: 15)}
	let(:author2) {create(:author, age: 55)}
		it 'should have old scope' do
			expect(Author.old).to include(author2)
			expect(Author.old).not_to include(author1)
		end
	end

	describe 'callbacks' do
	let(:author) { create(:author, age: nil)}
		it 'should set age to 25 if not given any' do
			expect(author.age).to eq(25)
		end
	end



	describe 'relations' do
	# 	# it 'it should have many posts' do
	# 	# 	t = Author.reflect_on_association(:posts)
	# 	# 	expect(t.macro).to eq(:has_many)
	# 	# end
		it { should have_many(:posts)}
	end

	describe 'others' do
		let(:author) { build(:author) }
		it 'should have working #fullname method' do
			expect(author.fullname).to eq("#{author.name} #{author.surname}")
		end
	end


end