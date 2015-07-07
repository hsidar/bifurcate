class BillsController < ApplicationController

  require 'csv'
  require 'json'

  def index
  end

  def add_entry

    # take CSV imported and save the path to a variable to get around params weirdness
    #
    # recurse through entries converting them to hashes
    #
    # save the entries to database
    #
    # send to show page

    data = params[:file].path

    CSV.table(data).each do |x|

      x.to_hash

      Entry.create({date: x[:date], description: x[:description], amount: x[:debit]}) if x[:debit] != 0

    end

    redirect_to '/bills/show'

  end

  def show

    # grab all entries that do not have a tag
    #
    # grab all tags for form select

    @entries = Entry.where(tag: nil)
    @tags = Tag.all
  end

  def update

    # params is a list of all checked entries in show page
    #
    # grab all from database by id provided
    #
    # update all of returned entries with chosen tag

    Entry.where(id: params[:entry_ids]).update_all(tag: params[:tag])
    redirect_to '/bills/show'
  end

  def show_month
  end

end
