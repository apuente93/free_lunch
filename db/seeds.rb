require 'rubygems'
require 'nokogiri'
require 'open-uri'

#Creates administrative users
User.create!(username:  "apuente93",
             email: "apuente@wisc.edu",
             address: "1334 Vilas Ave, Madison, WI 53715",
             password:              "9066278202",
             password_confirmation: "9066278202",
             admin: true)

#Creates Fresh Madison Market store
Store.create!(name:  "Fresh Madison Market",
             address: "703 University Ave, Madison, WI 53715",
             image_url: "https://pbs.twimg.com/profile_images/546893605/FMM_Logo2_400x400.png")
             
#Creates Hy-Vee store
Store.create!(name:  "Hy-Vee",
             address: "3801 E Washington Ave, Madison, WI 53704",
             image_url: "http://wkow.images.worldnow.com/images/21316805_SA.gif")

#Creates Capitol Centre Market store
Store.create!(name:  "Capitol Centre Market",
             address: "111 N Broom St, Madison, WI 53703",
             image_url: "http://www.lgbtdirectory.org/Capitol_Centre_Market_2012.jpg")

#Creates Woodman's Food Market store
Store.create!(name:  "Woodman's Food Market",
             address: "3817 Milwaukee St, Madison, WI 53714",
             image_url: "http://nikolainuthouse.com/wp-content/uploads/2013/12/woodmans.jpg")
            
#Creates Copps store 
Store.create!(name:  "Copps",
             address: "620 S Whitney Way, Madison, WI 53711",
             image_url: "http://www.mabaensch.com/wp-content/uploads/2015/02/copps.jpg")

#Creates Pick'n Save store 
Store.create!(name:  "Pick'n Save",
             address: "5709 US-51, McFarland, WI 53558",
             image_url: "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRy2JpY8xTffSHIVD728hnIxs0nNHIcGBVKbY1EBxqHv3WHuVxw")
             
#Creates Metcalfe's store 
Store.create!(name:  "Metcalfe's Market",
             address: "726 N Midvale Blvd, Madison, WI 53705",
             image_url: "http://sabraaitime.com//wp-content/uploads/2014/11/metcalfes-box.png")

#Creates Trader Joe's store 
Store.create!(name:  "Trader Joe's",
             address: "1810 Monroe St, Madison, WI 53711",
             image_url: "http://corneliusnews.net/wp-content/uploads/2014/10/traderjoes_logo.jpg")

#Creates Whole Foods store 
Store.create!(name:  "Whole Foods",
             address: "3313 University Ave, Madison, WI 53705",
             image_url: "http://upload.wikimedia.org/wikipedia/en/thumb/f/f3/Whole_Foods_Market_logo.svg/543px-Whole_Foods_Market_logo.svg.png")

#Creates Willy Street Co-op store 
Store.create!(name:  "Willy Street Co-op",
             address: "1221 Williamson St, Madison, WI 53703",
             image_url: "http://www.progressivegrocer.com/sites/default/files/styles/article-full/public/PG%20Articles/Willy%20Street%20Co-op%20Resized.jpg?itok=2OziQe7L")
             
OrderStatus.create! id: 1, name: "In Progress"
OrderStatus.create! id: 2, name: "Placed"
OrderStatus.create! id: 3, name: "Delivered"

product_snacks_page = Nokogiri::HTML(open("http://www.amazon.com/b/ref=pntry_strfnt_cat_2?ie=UTF8&node=8422705011&pf_rd_p=2086987622&pf_rd_s=merchandised-search-5&pf_rd_t=101&pf_rd_i=7301146011&pf_rd_m=ATVPDKIKX0DER&pf_rd_r=069KCFGFX8XDSFZ9B9WB"))   
product_snacks = product_snacks_page.css("div.rsltGrid.prod.celwidget")

product_beverages_page = Nokogiri::HTML(open("http://www.amazon.com/b/ref=pntry_strfnt_cat_3?ie=UTF8&node=8422706011&pf_rd_p=2078136842&pf_rd_s=merchandised-search-5&pf_rd_t=101&pf_rd_i=7301146011&pf_rd_m=ATVPDKIKX0DER&pf_rd_r=1QA724FJ41687W8MP35W"))   
product_beverages = product_beverages_page.css("div.rsltGrid.prod.celwidget")

product_household_page = Nokogiri::HTML(open("http://www.amazon.com/b/ref=amb_link_398549482_12?ie=UTF8&node=8308027011&pf_rd_m=ATVPDKIKX0DER&pf_rd_s=merchandised-search-leftnav&pf_rd_r=1WTBSTB3DERVX2G1CFCV&pf_rd_t=101&pf_rd_p=2083547182&pf_rd_i=8308028011"))   
product_household = product_household_page.css("div.rsltGrid.prod.celwidget")

product_personal_page = Nokogiri::HTML(open("http://www.amazon.com/b/ref=pntry_wayfind_5?node=8308028011"))   
product_personal = product_personal_page.css("div.rsltGrid.prod.celwidget")

product_breakfast_page = Nokogiri::HTML(open("http://www.amazon.com/s/ref=lp_8422704011_nr_n_1?srs=7301146011&fst=as%3Aoff&rh=i%3Apantry%2Cn%3A8422704011%2Cn%3A!16310211%2Cn%3A16310251&bbn=8422704011&ie=UTF8&qid=1430435419&rnid=16310211"))   
product_breakfast = product_breakfast_page.css("div.rsltGrid.prod.celwidget")

product_canned_page = Nokogiri::HTML(open("http://www.amazon.com/s/ref=amb_link_406100822_3?ie=UTF8&bbn=8422704011&rh=i%3Apantry%2Cn%3A8422704011%2Cn%3A!16310211%2Cn%3A6464939011&srs=7301146011&pf_rd_m=ATVPDKIKX0DER&pf_rd_s=merchandised-search-5&pf_rd_r=0VSD9QJT0D5F3224B4X1&pf_rd_t=101&pf_rd_p=2062785582&pf_rd_i=8422704011"))   
product_canned = product_canned_page.css("div.rsltGrid.prod.celwidget")

=begin
product_vegetable_page = Nokogiri::HTML(open("https://fresh.amazon.com/Search?input=&pageNumber=2&sort=bestselling&browseNode=16319281,6507190011,6507193011,6507186011&allergen=&resultsPerPage=42"))
product_vegetable = product_vegetable_page.css("div.smallProduct")
=end

stores = Store.all

product_snacks.each do |snack|
  a = snack.css("h3.newaps a")
  b = snack.css("img")
  c = snack.css("span.bld.lrg.red")
	if "#{snack.text}".squish.empty?
	else
	 if Product.find_by_name("#{a.text}".squish).nil? && "#{a.text}".squish.length <= 65
	    stores.each do |store|
	      Product.create!(name: "#{a.text}".squish,
		    category: "Snacks",
		    price: "#{c.text}".delete( "$" ).to_f,
		    image_url: "#{b.attr('src')}".squish,
	  	  store_id:  store.id,
	  	  active: true)
	    end
	 else
	 end
	end
end

product_beverages.each do |beverage|
  a = beverage.css("h3.newaps a")
  b = beverage.css("img")
  c = beverage.css("span.bld.lrg.red")
	if "#{beverage.text}".squish.empty?
	else
	  if Product.find_by_name("#{a.text}".squish).nil? && "#{a.text}".squish.length <= 65
	    stores.each do |store|
	      Product.create!(name: "#{a.text}".squish,
	      category: "Beverages",
	      price: "#{c.text}".delete( "$" ).to_f,
		    image_url: "#{b.attr('src')}".squish,
	      store_id:  store.id,
	  	  active: true)
	    end
    else
	  end
	end
end

product_household.each do |household|
  a = household.css("h3.newaps a")
  b = household.css("img")
  c = household.css("span.bld.lrg.red")
	if "#{household.text}".squish.empty?
	else
	  if Product.find_by_name("#{a.text}".squish).nil? && "#{a.text}".squish.length <= 65
	    stores.each do |store|
	      Product.create!(name: "#{a.text}".squish,
	      category: "Household Supplies",
	      price: "#{c.text}".delete( "$" ).to_f,
		    image_url: "#{b.attr('src')}".squish,
	      store_id:  store.id,
	  	  active: true)
	    end
    else
	  end
	end
end

product_personal.each do |personal|
  a = personal.css("h3.newaps a")
  b = personal.css("img")
  c = personal.css("span.bld.lrg.red")
	if "#{personal.text}".squish.empty?
	else
	  if Product.find_by_name("#{a.text}".squish).nil? && "#{a.text}".squish.length <= 65
	    stores.each do |store|
	      Product.create!(name: "#{a.text}".squish,
	      category: "Personal Care",
	      price: "#{c.text}".delete( "$" ).to_f,
		    image_url: "#{b.attr('src')}".squish,
	      store_id:  store.id,
	  	  active: true)
	    end
    else
	  end
	end
end

product_breakfast.each do |breakfast|
  a = breakfast.css("h3.newaps a")
  b = breakfast.css("img")
  c = breakfast.css("span.bld.lrg.red")
	if "#{breakfast.text}".squish.empty?
	else
	  if Product.find_by_name("#{a.text}".squish).nil? && "#{a.text}".squish.length <= 65
	    stores.each do |store|
	      Product.create!(name: "#{a.text}".squish,
	      category: "Breakfast Foods",
	      price: "#{c.text}".delete( "$" ).to_f,
		    image_url: "#{b.attr('src')}".squish,
	      store_id:  store.id,
	  	  active: true)
	    end
    else
	  end
	end
end

product_canned.each do |canned|
  a = canned.css("h3.newaps a")
  b = canned.css("img")
  c = canned.css("span.bld.lrg.red")
	if "#{canned.text}".squish.empty?
	else
	  if Product.find_by_name("#{a.text}".squish).nil? && "#{a.text}".squish.length <= 65
	    stores.each do |store|
	      Product.create!(name: "#{a.text}".squish,
	      category: "Canned Foods",
	      price: "#{c.text}".delete( "$" ).to_f,
		    image_url: "#{b.attr('src')}".squish,
	      store_id:  store.id,
	  	  active: true)
	    end
    else
	  end
	end
end

=begin
product_vegetable.each do |vegetable|
  a = vegetable.css("h4.title.longTitle a")
  b = vegetable.css("img")
  c = vegetable.css("span.value")
	if "#{vegetable.text}".squish.empty?
	else
	  if Product.find_by_name("#{a.text}".squish).nil? && "#{a.text}".squish.length <= 65
	    stores.each do |store|
	      Product.create!(name: "#{a.text}".squish,
	      category: "Vegetables",
	      price: "#{c.text}".delete( "$" ).to_f,
		    image_url: "#{b.attr('src')}".squish,
	      store_id:  store.id)
	    end
    else
	  end
	end
end
=end

=begin
99.times do |n|
  username  = Faker::Internet.user_name
  email = Faker::Internet.email
  address = Faker::Address.street_address
  password = "password"
  User.create!(username:  username,
               email: email,
               address: address,
               password:              password,
               password_confirmation: password)
end
=end
