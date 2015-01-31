class ContactsController < ActionController::Base
  layout 'application'

  def index
    @contacts = Contact.all
    # render('contacts/index.html.erb')
  end

  def show
    @contact = Contact.find(params[:id])
    # render('contacts/show.html.erb')
  end

  def new
    @contact = Contact.new
    # render('contacts/new.html.erb')
  end

  def edit
    @contact = Contact.find(params[:id])
    # render('contacts/edit.html.erb')
  end

  def create
    @contact = Contact.create(
    :name => params[:name],
    :email => params[:email],
    :phone => params[:phone])
    if @contact.save
      render('contacts/success.html.erb')
    else
      render('contacts/new.html.erb')
    end
  end

  def update
    @contact = Contact.find(params[:id])
    @contact.name = params[:name]
    @contact.email = params[:email]
    @contact.phone = params[:phone]
    if @contact.save
      # @contacts = Contact.all
      # render('contacts/index.html.erb')
      render('contacts/show.html.erb')
    else
      render('contacts/edit.html.erb')
    end
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy
    @contacts = Contact.all
    render('contacts/index.html.erb')
  end

end
