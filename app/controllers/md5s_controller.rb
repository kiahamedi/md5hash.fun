require 'digest/md5'

class Md5sController < ApplicationController

  layout false

  def index
  	if !params[:hash].nil?
  		@hash = params[:hash]
  		@string = params[:string]
  	end

  	render :action => :index
  end

  def new
  	@string = params[:md5][:userString]
  	if !@string.nil?
  		if Md5.exists?(:userString => @string)
  			md = Md5.find_by(:userString => @string)
  			@hash = md.userHash
  		else
	  		@hash = Digest::MD5.hexdigest(@string)
	  		md = Md5.new
	  		md.userString = @string
	  		md.userHash = @hash
	  		md.userId = "unknown"
	  		md.save
	  	end
  	end

  	if @string.nil?
  		@hash = "Please enter your text"
  	end

  	redirect_to :controller => 'md5s', :action => 'index', :hash => @hash, :string => @string
  end


  def show
  end

  def btc
  end

end
