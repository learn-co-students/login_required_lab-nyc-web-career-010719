class SecretsController < ActionController::Base
  # before_action :require_login
  # skip_before_action :require_login, only: [:new]

  def show
    if session.include? :name
      render :show
    else
      redirect_to '/'
    end
  end


  private

  # def require_login
  #  return head(:forbidden) unless session.include? :name
  # end

end
