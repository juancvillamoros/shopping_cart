class ApplicationController < ActionController::Base
    protect_from_forgery with: :exeption
    include ApplicationHelper
end
