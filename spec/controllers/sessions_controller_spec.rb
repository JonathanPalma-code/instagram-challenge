require 'rails_helper'

RSpec.describe SessionsController, type: :controller do
  describe 'sessions#create' do
    before do
      User.create({ username: 'Jonathan',
                    email: 'jonathan@example.com',
                    password: '123456' })
    end
    it 'should check if passwords are not the same' do
      post :create, params: { email: 'jonathan@example.com', password: 'wrongpass' }
      expect(response).to redirect_to login_new_path
    end

    it 'should redirect to welcome session page' do
      post :create, params: { email: 'jonathan@example.com', password: '123456' }
      current_user = User.find_by(email: 'jonathan@example.com')
      expect(response).to redirect_to "/sessions/#{current_user.id}"
    end
  end
end
