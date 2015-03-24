#https://api.yummly.com/v1/api/metadata/diet?_app_id=f5430465&_app_key=4453474a9424bee5c1644497b38c9453
# data =[{id:"388",shortDescription:"Lacto vegetarian",
#         longDescription:"Lacto vegetarian",searchValue:"388^Lacto vegetarian",
#         type:"diet",localesAvailableIn:["en-US"]},
#        {id:"389",shortDescription:"Ovo vegetarian",longDescription:"Ovo vegetarian",
#         searchValue:"389^Ovo vegetarian",type:"diet",localesAvailableIn:["en-US"]},
#        {id:"390",shortDescription:"Pescetarian",longDescription:"Pescetarian",
#         searchValue:"390^Pescetarian",type:"diet",localesAvailableIn:["en-US"]},
#        {id:"386",shortDescription:"Vegan",longDescription:"Vegan",
#         searchValue:"386^Vegan",type:"diet",localesAvailableIn:["en-US"]},
#        {id:"387",shortDescription:"Lacto-ovo vegetarian",longDescription:"Vegetarian",
#         searchValue:"387^Lacto-ovo vegetarian",type:"diet",localesAvailableIn:["en-US"]},
#        {id:"403",shortDescription:"Paleo",longDescription:"Paleo",
#         searchValue:"403^Paleo",type:"diet",localesAvailableIn:["en-US"]}
#       ]
#
# data.each do |d|
#   AllowedDiet.create({
#     yummly_id:    d[:id],
#     diet_name:    d[:shortDescription],
#     search_value: d[:searchValue]
#     })
#   end
