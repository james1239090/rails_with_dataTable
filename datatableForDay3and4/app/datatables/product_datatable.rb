class ProductDatatable < AjaxDatatablesRails::Base
  include AjaxDatatablesRails::Extensions::Kaminari
  def sortable_columns
    # Declare strings in this format: ModelName.column_name
    @sortable_columns ||= ['Product.id' ,'Product.title', 'Product.price']
  end

  def searchable_columns
    # Declare strings in this format: ModelName.column_name
    @searchable_columns ||= ['Product.id' ,'Product.title', 'Product.price']
  end

  private

  def data
    records.map do |record|
      [
        record.id,
        record.title,
        record.price
      ]
    end
  end

  def get_raw_records
    # insert query here
    Product.all
  end

  # ==== Insert 'presenter'-like methods below if necessary
end
