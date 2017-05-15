json.array!(@doctors) do |doctor|
  json.extract! doctor, :id, :name, :specialty, :phone, :available
  json.url doctor_url(doctor, format: :json)
end
