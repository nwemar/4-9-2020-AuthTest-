# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

======================(4-9-2020 4:30PM copy-paste)===============================

=============Authentication /Authorization======
https://github.com/RailsApps/rails-devise-roles


=============================
rails new appname -d mysql
-add password for app/config/database.yml
-rails db:create
====devise install======
https://www.nopio.com/blog/authentication-authorization-rails/
====for admin devise ====
-rails g devise Admin
-rails g devise:controllers Admin
-rails g devise:views Admin
====for user devise====
-rails g devise customer
-rails g devise:controllers customer
-rails g devise:views customer
====after login (choose devise/choose path) using condition====
-rails g scaffold adminview
-rails g scaffole customerview
- (using adminview controller - before_action :authenticate_admin!)
-(using customerview controller- before_action :authenticate_customer!)
app/application_controller.rb (example)
  def after_sign_in_path_for(resource)
  if admin_signed_in? 
    adminview_path 
  elsif customer_signed_in? 	
    customerview_path
  end
  end
===================Ending for Authentication==========


===for role table create===
- $ rails g model Role name:string
- $ rake db:migrate
-db/seed.rb (insert Role table record)
[:superadmin, :supervisor, :student].each do |role|
  Role.create({ name: role,created_at: DateTime.now,updated_at: DateTime.now })
end
-$ rake db:seed
-check your db (Role table insert 3 records)
- ===If you add column using devise====
using reference: https://gist.github.com/withoutwax/46a05861aa4750384df971b641170407
-insert roleid column to admin table using above reference
- /app/views/admins/registrations/ new.html.erb and edit.html.erb 
   <div class="field">
  <%= f.label :roleid %><br />
  <%= f.select :roleid, Role.all.map{|c| [c.name, c.id]}, :prompt => "Select One" %>
  </div>
- gem 'cancancan' , bundle install  using reference https://github.com/CanCanCommunity/cancancan
- rails g cancan:ability  ,using reference https://www.rubydoc.info/github/ryanb/cancan/CanCan/Ability
- to get current login user for authorizaion(/app/controller/application_controller.rb)
  def current_ability
   @current_ability ||= Ability.new(current_admin)
  end
- for access denied (/app/controller/application_controller.rb)
  rescue_from CanCan::AccessDenied do |exception|
   sign_out :admin if admin_signed_in?
   redirect_to root_path, :alert => exception.message
  end
- for authorization (controller and cancan:ability of relation)
-  authorize! :new, @adminhome and  load_and_authorize_resource (using reference https://github.com/ryanb/cancan)

=====reference for devise creation==========
https://stackoverflow.com/questions/41972575/generating-devise-controllers-rails-devise
https://altalogy.com/blog/rails-6-user-accounts-with-3-types-of-roles/

====reference for authorization using cancancan ========
https://stackoverflow.com/questions/12748056/is-it-possible-to-use-cancan-with-two-ability-class
https://www.sitepoint.com/cancancan-rails-authorization-dance/

======Testing Project(two devises and authorization)=====
https://github.com/nwemar/4-9-2020-AuthTest-












