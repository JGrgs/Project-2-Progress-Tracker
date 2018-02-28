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

    @image = @user.images.new({title: "image one", image_url: "https://www.parkablogs.com/sites/default/files/masters-drawing-handbook-04.jpg", description: "First Image!", category: "art", date: "Jan 02, 2018"})
    @image.save

    @image = @user.images.new({title: "image two", image_url: "https://www.artistsnetwork.com/wp-content/uploads/2017/03/pencil-portraits.jpg", description: "Second Image!", category: "art", date: "Jan 02, 2018"})
    @image.save

    @user2 = User.new({name: "Jimmy", email: "jimmy@gmail.com", username: "jimmy", password: "password"})
    @user2.save

    @image = @user2.images.new({title: "image one", image_url: "https://media.mnn.com/assets/images/2011/10/gallery2_flatiron.jpg.638x0_q80_crop-smart.jpg", description: "First Image!", category: "architecture", date: "Jan 02, 2018"})
    @image.save

    @image = @user2.images.new({title: "image two", image_url: "https://static01.nyt.com/images/2016/04/04/nyregion/05APPRAISAL1/05APPRAISAL1-master768.jpg", description: "Second Image!", category: "architecture", date: "Jan 02, 2018"})
    @image.save

    @user3 = User.new({name: "Katie", email: "katie@gmail.com", username: "katie", password: "password"})
    @user3.save

    @image = @user3.images.new({title: "image one", image_url: "http://i242.photobucket.com/albums/ff231/bour3/things%20I%20made%20then%20ate/Things%20I%20Made%20The%20Ate%20IV/DSC_6565.jpg", description: "First Image!", category: "agriculture", date: "Jan 02, 2018"})
    @image.save

    @image = @user3.images.new({title: "image two", image_url: "http://doubledanger.com/Images/blog/gardening/april27th2008/basil.jpg", description: "Second Image!", category: "agriculture", date: "Jan 02, 2018"})
    @image.save
end