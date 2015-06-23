class BillsController < ApplicationController
  
  require 'csv'
  require 'json'
  
  def index
  end

  def add_entry
    
    # Take provided CSV and save the data to the model 
        
    data = params[:file].path
    
    CSV.table(data).map do |x|
      
      x.to_hash
      
      Entry.create({date: x[:date], description: x[:description], amount: x[:debit]}) if x[:debit] != 0
      
    end
    
    redirect_to '/bills/show'
    
  end

  def show
    @entries = Entry.where(tag: nil)
    @tags = Tag.all 
  end
  
  def update
    Entry.where(id: params[:entry_ids]).update_all(tag: params[:tag])
    redirect_to '/bills/show'
  end
  
  def show_month
  end
  
end
