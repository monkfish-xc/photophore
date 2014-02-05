photoPhoreApp.factory 'Photo', ['$resource', ($resource) ->
  $resource '/api/p/:public_hash.json', public_hash: '@public_hash'
]