class HomeController < ApplicationController
  def index
  end

  def create
    form_values = params.except(:authenticity_token, :controller, :action)
    redirect_back(fallback_location: root_path, notice: "#{form_values.to_json}")
  end
end
