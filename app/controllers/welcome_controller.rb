class WelcomeController < ApplicationController
  def index
#    redirect_to("http://www.google.com")
    #  render('def_arr') 
  end
  def def_arr
    @array = [1,2,3,4,5]
  end
  def abcde
    render(:text =>'HelloWorld')
  end

end
