json.array!(@patients) do |patient|
  json.extract! patient, :id, :pet_name, :pet_type, :notes, :date_in, :date_out, :healthy, :doctor_id
  json.url patient_url(patient, format: :json)
end
