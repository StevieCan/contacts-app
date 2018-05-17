class Api::ContactsController < ApplicationController
  # def one_contact_action
  #   @contact = Contact.first
  #   render 'one_contact_action.json.jbuilder'
  # end
  # def second_contact_action
  #   @contact = Contact.find(2)
  #   render 'second_contact_action.json.jbuilder'
  # end
  # def third_contact_action
  #   @contact = Contact.find(3)
  #   render 'third_contact_action.json.jbuilder'
  # end
  # def all_contacts_for_me
  #   @contacts = Contact.all
  #   render 'belonging_to_us.json.jbuilder'
  # end
  def index
    @contacts = Contact.all
    render 'index.json.jbuilder'
  end
  def show
    contact_id = params[:id]
    @contact = Contact.find(contact_id)
    render 'show.json.jbuilder'
  end
  def create
    @contact = Contact.new( 
                          id: params[:id],
                          first_name: params[:first_name],
                          middle_name: params[:middle_name],
                          last_name: params[:last_name],
                          email: params[:email],
                          phone_number: params[:phone_number],
                          bio: params[:bio]
                          )
    @contact.save
    render 'show.json.jbuilder'
  end
  def update
    contact_id = params[:id]
    @contact = Contact.find(contact_id)

    @contact.id = params[:id] || @contact.id
    @contact.first_name = params[:first_name] || @contact.first_name
    @contact.middle_name = params[:middle_name] || @contact.middle_name
    @contact.last_name = params[:last_name] || @contact.last_name
    @contact.email = params[:email] || @contact.email
    @contact.phone_number = params[:phone_number] || @contact.phone_number
    @contact.bio = params[:bio] || @contact.bio
    
    @contact.save
    render 'show.json.jbuilder'
  end
  def destroy
    contact_id = params[:id]
    @contact = Contact.find(contact_id)
    @contact.destroy
    render json: {message: "Product has been successfully destroyed!!!"}
  end

end
