class StepsController < ApplicationController
  def index
  end

  def show
	@a=Myfile.find(params[:myfile_id]).data


	#@t.read(Myfile.find(params[:myfile_id]).data)
#@image= @t.readchar
	send_data(@a[2720190..2900000], :filename => 'mano', :disposition => 'inline', :type => 'image/jpeg')
  end
end
