get '/potlucks' do
  @potlucks = Potluck.all
  erb :'potlucks/index'
end

get '/potlucks/new' do
  @potluck = Potluck.new
  erb :'potlucks/new'
end

get '/potlucks/:id' do
  @potluck = Potluck.find(params[:id])
  erb :'/potlucks/show'
end

post '/potlucks' do
  @potluck = Potluck.new(params[:potluck])
  @potluck.host = current_user

  if @potluck.save
    redirect '/'
  else
    @errors = @potluck.errors.full_messages
    erb :"potlucks/new"
  end
end

get '/potlucks/:id/edit' do
  @potluck = Potluck.find(params[:id])
  erb :'potlucks/edit'
end

def update_potluck
  @potluck = Potluck.find(params[:id])
  @potluck.update(params[:potluck])
  redirect "/potlucks/#{@potluck.id}"
end

put '/potlucks/:id' do
  update_potluck
end

patch '/potlucks/:id' do
  update_potluck
end
