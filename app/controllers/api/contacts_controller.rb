class Api::ContactsController < ApplicationController
  def one_contact_action
    @contact = Contact.first
    render 'one_contact_action.json.jbuilder'
  end
  def second_contact_action
    @contact = Contact.find(2)
    render 'second_contact_action.json.jbuilder'
  end
  def third_contact_action
    @contact = Contact.find(3)
    render 'third_contact_action.json.jbuilder'
  end
  def all_contacts_for_me
    @contact = Contact.all
    render 'belonging_to_us.json.jbuilder'
  end
end
