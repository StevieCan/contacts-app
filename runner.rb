require 'unirest'

#INDEX ACTION
# response = Unirest.get("http://localhost:3000/api/contacts")
# puts JSON.pretty_generate(response.body)

# #SHOW ACTION
# response = Unirest.get("http://localhost:3000/api/contacts/#{:id}")
# puts JSON.pretty_generate(response.body)

# CREATE ACTION
# response = Unirest.post("http://localhost:3000/api/contacts",
#     parameters: {
#                 first_name: "Bahama",
#                 last_name: "Mama",
#                 email: "bahamamama@gmail.com",
#                 phone_number: "888-888-8888"}
#                 )
# puts JSON.pretty_generate(response.body)

# #UPDATE ACTION
# contact_id = 2
# update_params = {
#                 last_name: "Lee Jones"
#                 }
# response = Unirest.patch("http://localhost:3000/api/contact/#{contact_id}",
#                 parameters: update_params)
# contact_update_hash = response.body
# puts JSON.pretty_generate(contact_update_hash)

# DESTROY ACTION
contact_id = 3
response = Unirest.delete("http://localhost:3000/api/contacts/#{contact_id}")
data = response.body
puts JSON.pretty_generate(data)
