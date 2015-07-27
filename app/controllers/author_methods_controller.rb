class AuthorMethodsController < ApplicationController
  skip_before_action :verify_authenticity_token, :only => [:subscribe]
  
  def subscribe
    author = params[:author_method]
    newAuthor = Email.new
    newAuthor.email = author

    if newAuthor.save
      responseString = "Success"
    else
      responseString = "Failed"
    end

    respond_to do |format|
      format.html { render :html => responseString }
      format.json { render :json => responseString }
    end

  end
end
