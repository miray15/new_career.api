json.extract! code, :id, :created_at, :updated_at
json.url codes_url(code, format: :json)

json.id code.id 
json.name code.id 
json.location code.location 
json.salary code.salary 
json.created_at code.created_at
json.updated_at code.updated_at