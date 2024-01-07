# frozen_string_literal: true

class ApplicationController < ActionController::API
  include ActionController::Helpers
  include Authentication
end
