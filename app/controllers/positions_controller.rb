get '/positions/:id/edit' do
  @position = Position.find(params[:id])
  erb :'positions/edit'
end

put '/positions/:id' do 
  @position = Position.find(params[:id])
  brother = Brother.find_by(scroll_number: params[:scroll_number])
  brother ? new_id = brother.id : new_id = nil
  params[:position][:brother_id] = new_id
  params[:position][:picture] = nil if params[:position][:picture] == ""
  @position.assign_attributes(params[:position])
  if @position.save 
    redirect '/contact' 
  else
    erb :'positions/edit' 
  end
end