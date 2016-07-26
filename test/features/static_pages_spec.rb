require "test_helper"

feature 'Static Pages' do
  context 'home page' do
    scenario 'it shows home' do
      expect(current_path).to eq '/new'
    end
  end
end
