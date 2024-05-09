class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)
    case resource
    when Admin
      admin_path
    when Shop
      shop_path
    when User
      mypage_path
    else
      root_path
    end
  end
end
