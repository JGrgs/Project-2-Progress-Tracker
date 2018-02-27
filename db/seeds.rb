# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if User.destroy_all
    @user = User.new({name: "Philippe", email: "philippe@gmail.com", username: "philippe", password: "password"})
    @user.save

    @image = @user.images.new({title: "image one", image_url: "https://www.parkablogs.com/sites/default/files/masters-drawing-handbook-04.jpg", description: "First Image!", category: "test", date: "Jan 02, 2018"})
    @image.save

    @user2 = User.new({name: "Jimmy", email: "jimmy@gmail.com", username: "jimmy", password: "password"})
    @user2.save

    @user3 = User.new({name: "Katie", email: "katie@gmail.com", username: "katie", password: "password"})
    @user3.save
end