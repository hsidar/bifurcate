class BillsController < ApplicationController
  
  require 'csv'
  require 'json'
  
  def index
  end

  def add_entry
    
    data = params[:file].path
    
    @tags = CSV.table(data).map {|x| x.to_hash}
    
  end

  def show_month
  end
end
