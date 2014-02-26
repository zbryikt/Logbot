prelude = require \prelude-ls

main = ($scope, $http) ->
  $scope.data = {}
  $http.get \quote.json .success (data) ->
    for k of data =>
      data[k] = prelude.unique data[k]
      if data[k]length>5 => data[k] = data[k]splice(0,5)
    delete data[\*]
    $scope.data = data
    console.log data
