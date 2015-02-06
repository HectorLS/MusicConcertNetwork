Rails.application.routes.draw do
  resources :concerts do
    resources :comments
  end

  get '/' => 'site#home'
end


# CONCERTS
# Crear nuevos conciertos
# Each concert a SHOW page


# concert_poster






# Calendar
# concert_id
# city_id






# COMMENTS  concerts with comments (form name and comment)
# user, comment, concert_id



# (validate format)


# CITIES AVAILABLE
# Home with:
# today concerts
# sidebar future concerts (link to future concerts)
# Other page
# 1)select concerts by price range 
# 2)Popular concerts (ordered by number of comments)