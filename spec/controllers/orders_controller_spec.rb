require 'rails_helper'

describe OrdersController, type: :controller do
  describe 'POST #create' do
    let!(:profile) { create(:profile)}
    let!(:product) { create(:product) }
    let(:order) { create(:order, :with_products) }
    login_user

    it 'saves the new order with products' do
      expect {
        post :create, params: { order: attributes_for(:order), profile: profile }
        }.to change(Order, :count).by(1)
    end

    # it 'saves the new order in the database' do
    #   expect {
    #       post :create, params: { order: attributes_for(:order) }
    #     }.to change(order.products, :count).by(1)
    # end

    # it 'redirect to dashboard' do
    #   post :create, params: { order: attributes_for(:order) }
    #   expect(response).to redirect_to assigns(:dashboard)
    # end
  end
end
