json.array!(@bills) do |bill|
  json.extract! bill, :id, :codigo, :fecha, :valor, :dependencia, :beneficiario, :depositante
  json.url bill_url(bill, format: :json)
end
