require 'rails_helper'

RSpec.describe Article, type: :model do
  describe 'Database table' do 
    it { is_expected.to have_db_column :title }
    it { is_expected.to have_db_column :content }
  end

  describe 'associations' do 
    it { is_expected.to have_many :comments}
  end 

  describe 'Factory' do 
    it 'is valid' do 
      expect(FactoryBot.create(:article)).to be_valid
    end
  end 

end
