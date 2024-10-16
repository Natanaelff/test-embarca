# frozen_string_literal: true

# Controlador responsável por gerenciar cidades.
class CitiesController < ApplicationController
  def index
    @cities = City.all
  end

  def search
    name_part = params[:name]

    @cities = City.all

    @cities = @cities.where('name LIKE?', "%#{name_part}%") if name_part.present?

    respond_to do |format|
      format.json { render json: @cities }
      format.html
    end
  end
end
