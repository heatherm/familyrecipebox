class PagesController < ApplicationController
  before_filter :require_login, :only => :secret

  def root
  end

end
