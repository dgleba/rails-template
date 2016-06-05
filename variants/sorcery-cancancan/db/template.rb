# ask seed input
# email = ask_wizard_with_default('Please input the admin emailaddress', 'a@e')
# pass = ask_wizard_with_default('Please input the admin password', 'a')
email = 'a@e'
pass = 'a'

seed = "User.create! email: '#{email}', password: '#{pass}', password_confirmation: '#{pass}'"
append_to_file 'db/seeds.rb', seed
