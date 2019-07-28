class HomeController < ApplicationController
  layout :resolve_layout

  def index
  end

  private

  def resolve_layout
    if user_signed_in?
      "application"
    else
      "guest"
    end
  end
end
