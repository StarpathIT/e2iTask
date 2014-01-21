class FieldType
  def FieldType.add_item(key,value)
    @hash ||= {}
    @hash[key]=value
  end

  def FieldType.const_missing(key)
    @hash[key]
  end

  def FieldType.each
    @hash.each {|key,value| yield(key,value)}
  end

  FieldType.add_item :TEXT, 1
  FieldType.add_item :COMBO, 2
  FieldType.add_item :PHOTO, 3
  FieldType.add_item :PAYMENT, 4
  FieldType.add_item :DATE, 5
end