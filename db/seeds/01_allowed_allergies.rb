# #https://api.yummly.com/v1/api/metadata/allergy?_app_id=f5430465&_app_key=4453474a9424bee5c1644497b38c9453
# data =[{id:"396",shortDescription:"Dairy-Free",longDescription:"Dairy-Free",
#         searchValue:"396^Dairy-Free",type:"allergy",localesAvailableIn:["en-US"]},
#        {id:"397",shortDescription:"Egg-Free", longDescription:"Egg-Free",
#         searchValue:"397^Egg-Free",type:"allergy",localesAvailableIn:["en-US"]},
#        {id:"393",shortDescription:"Gluten-Free", longDescription:"Gluten-Free",
#         searchValue:"393^Gluten-Free",type:"allergy",localesAvailableIn:["en-US"]},
#        {id:"394",shortDescription:"Peanut-Free",longDescription:"Peanut-Free",
#         searchValue:"394^Peanut-Free",type:"allergy",localesAvailableIn:["en-US"]},
#        {id:"398",shortDescription:"Seafood-Free",longDescription:"Seafood-Free",
#         searchValue:"398^Seafood-Free",type:"allergy",localesAvailableIn:["en-US"]},
#        {id:"399",shortDescription:"Sesame-Free",longDescription:"Sesame-Free",
#         searchValue:"399^Sesame-Free",type:"allergy",localesAvailableIn:["en-US"]},
#        {id:"400",shortDescription:"Soy-Free",longDescription:"Soy-Free",
#         searchValue:"400^Soy-Free",type:"allergy",localesAvailableIn:["en-US"]},
#        {id:"401",shortDescription:"Sulfite-Free",longDescription:"Sulfite-Free",
#         searchValue:"401^Sulfite-Free",type:"allergy",localesAvailableIn:["en-US"]},
#        {id:"395",shortDescription:"Tree Nut-Free",longDescription:"Tree Nut-Free",
#         searchValue:"395^Tree Nut-Free",type:"allergy",localesAvailableIn:["en-US"]},
#       {id:"392",shortDescription:"Wheat-Free",longDescription:"Wheat-Free",
#        searchValue:"392^Wheat-Free",type:"allergy",localesAvailableIn:["en-US"]}
#       ]
#
# data.each do |d|
#  AllowedAllergy.create({
#    yummly_id:       d[:id],
#    allergy_name:    d[:shortDescription],
#    search_value:    d[:searchValue]
#    })
#  end
