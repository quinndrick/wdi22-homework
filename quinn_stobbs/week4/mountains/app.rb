require "sinatra"
require "sinatra/reloader"
require "pry"
require "sqlite3"

def query_db( sql )
  # Create a connection to the database
  db = SQLite3::Database.new 'database.db'

  # Ask for the information in a nicer format
  db.results_as_hash = true

  # Show the SQL that was generated in the logs
  puts sql

  #Execute a line of SQL and store the result
  result = db.execute sql
  db.close

  result

end

#GIVE US THE DELETE OPTION
get '/mountains/:id/delete' do

  query_db "DELETE FROM mountains WHERE id =#{ params["id"] };"
  redirect "/mountains"

end



post "/mountains/:id" do

  sql = "Update mountains SET
  name = '#{ params["name"]}',
  image = '#{ params["image"]}',
  url = '#{ params["url"]}',
  description = #{ params["description"]},
  elevation = #{ params["text"]},
  WHERE id = #{ params["id"] }
  "

  query_db sql

  redirect "/mountains/#{ params["id"] }"

end


get "/mountains/new" do
  erb :new
end


##give me an update in this bitch
get "/mountains/:id/edit" do

  id = params["id"]
  @mountain = query_db "SELECT * FROM mountains WHERE id = #{id};"
  @mountain = @mountain.first

  erb :edit
end


#retrieve a specific animal (1 row) from the table by ID
get "/mountains/:id" do
  id = params[ "id" ]
  @mountain = query_db "SELECT * FROM mountains WHERE id = #{id};"

  @mountain = @mountain.first #same as @animal[0]

  # binding.pry

  erb :show
end



#adding in the mountains
get "/mountains" do

  @mountains = query_db "Select * FROM mountains"

  erb :index

end



post "/mountains" do

  sql = "
    INSERT INTO mountains( name, image, url, description, elevation ) VALUES(
    '#{ params["name"] }',
    '#{ params["image"] }',
    '#{ params["url"] }',
    '#{ params["description"]}',
     #{ params["elevation"]}


    );"


  query_db( sql )

  redirect "/mountains"

end




get "/" do

  sql = "
INSERT INTO mountains( name, image, url, description, elevation ) VALUES(
  'thredbo',
  'https://www.google.com.au/search?q=thredbo&source=lnms&tbm=isch&sa=X&ved=0ahUKEwjr-4C1kq7UAhUJKZQKHYrHDGAQ_AUICygC&biw=1436&bih=780#imgrc=siIeOHldZ3qzPM:',
  'https://www.thredbo.com.au/',
  'The best mountain in australia',
  2037
);
  "

  # Create a connection to the database
  db = SQLite3::Database.new 'database.db'

  # Ask for the information in a nicer format
  db.results_as_hash = true

  # Show the SQL that was generated in the logs
  puts sql

  # Execute a line of SQL and store the result
  result = db.execute sql

  p result

  erb :home

end
