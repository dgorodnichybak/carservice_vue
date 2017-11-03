class EmailFormatValidator < ActiveModel::EachValidator
  EMAIL_REGEX = /^(|(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6})$/i

  def validate_each(record, attribute, value)
    return if EMAIL_REGEX.match value
    record.errors.add(attribute, :invalid, value: value, message: 'is not valid')
  end
end
