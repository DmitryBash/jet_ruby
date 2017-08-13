require 'rails_helper'

describe ProductsController, type: :controller do
  let(:week_day) { create(:week_day) }
  let(:product) { create(:product, week_day: week_day) }

  describe 'GET #new' do
    login_user
    before { get :new, params: { product: attributes_for(:product), week_day_id: week_day } }

    context 'with valid attributes' do
      it 'assigns a new product to @product' do
        expect(assigns(:product)).to be_a_new(Product)
      end

      it 'renders new view' do
        expect(response).to render_template :new
      end
    end

    context 'with invalid attributes' do
    end
  end

  describe 'POST #create' do
    login_user
    context 'with valid attributes' do
      it 'saves the new post in the database' do
        expect { post :create, params: { product: attributes_for(:product), week_day_id: week_day } }.to change(week_day.products, :count).by(1)
      end

      it 'redirect to ' do
        post :create, params: { product: attributes_for(:product), week_day_id: week_day }
        expect(response).to redirect_to assigns(:week_day)
      end
    end

    context 'with invalid attributes' do
    end
  end
end
