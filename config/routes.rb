Rails.application.routes.draw do
  namespace :api do
    get '/contact_one_url' => 'contacts#one_contact_action'
    get '/contact_two_url' => 'contacts#second_contact_action'
    get '/contact_three_url' => 'contacts#third_contact_action'
    get '/all_contacts_url' => 'contacts#all_contacts_for_me'
  end
end
