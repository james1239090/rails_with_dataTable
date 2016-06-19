class ProductDatatable < AjaxDatatablesRails::Base
  include AjaxDatatablesRails::Extensions::Kaminari
  def sortable_columns
    # 可排序的欄位，必填，否則會跳錯
    @sortable_columns ||= ['Product.id' ,'Product.title', 'Product.price']
  end

  def searchable_columns
    # 可搜尋的欄位，必填，否則會跳錯
    @searchable_columns ||= ['Product.id' ,'Product.title', 'Product.price']
  end

  private

  def data
    records.map do |record|
      [
        #輸入要回傳的欄位
        record.id,
        record.title,
        record.price
      ]
    end
  end

  def get_raw_records
    #將要抓的Model放在這裡
    Product.all
  end

  # ==== Insert 'presenter'-like methods below if necessary
end
