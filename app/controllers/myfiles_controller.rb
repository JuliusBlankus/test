class MyfilesController < ApplicationController
  def index
  end

  def new
  end

  def create
	name_io=params[:picture1]
	@kk=File.open(name_io.read)
  end
def upload
  @uploaded1 = params[:picture1]
  @uploaded2 = params[:picture2]
  @desc = params[:description]

@n=File.new("ff", "wb")
@n.write("mano foto1= 16 " +(@uploaded1.size+16).to_s)
@n.write(@uploaded1.read)
@n.write(@uploaded2.read)
@tem=Myfile.new
@tem.data=IO.binread(@n)
@tem.save
@n.close

@n=File.open("ff", "rb")
#@nn=File.new("fff", "wb")
@image= IO.binread(@n,  @uploaded1.size, 22)


#@nn.close
#send_data(IO.binread(@n,  @uploaded1.size, 22) , :filename => 'name', :type=>’image/jpeg’)
@n.close

send_data(@image, :filename => 'mano', :disposition => 'inline', :type => 'image/jpeg')




  #File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'w') do |file|
   # file.write(uploaded_io.read)
  #end
end
end
