# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CitiesController, type: :controller do
  describe 'GET #search' do
    before do
      @parana = State.create(name: 'Paraná')
      @santa_catarina = State.create(name: 'Santa Catarina')
      @rio_grande_do_sul = State.create(name: 'Rio Grande do Sul')

      City.create(name: 'Curitiba', state: @parana)
      City.create(name: 'Florianópolis', state: @santa_catarina)
      City.create(name: 'Porto Alegre', state: @rio_grande_do_sul)
    end

    it 'should be return cities filtered by state' do
      get :search, params: { state: @parana.id }
      expect(response).to be_successful
      except(JSON.parse(response.body).size).to eq(2)
    end

    it 'should be return cities filtered by name' do
      get :search, params: { name: 'Cur' }
      expect(response).to be_successful
      except(JSON.parse(response.body).size).to eq(1)
    end
  end
end
