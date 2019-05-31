json.extract! agri, :id, :name, :description, :varieties, :climate, :soil, :seedrate, :season, :fertilizer, :diseases, :created_at, :updated_at
json.url agri_url(agri, format: :json)