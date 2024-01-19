// common
targetScope = 'subscription'

// parameters
////////////////////////////////////////////////////////////////////////////////

param rgLocation string = 'eastus'

param sufixHyphenated string = '1198464'

// variables
////////////////////////////////////////////////////////////////////////////////

// rg for storage account, service bus, cosmos db & function app
var rgName = 'contosotraders-${sufixHyphenated}'

// tags
var rgTags = {
  Product: sufixxHyphenated
  Environment: 'testing'
}

// resource groups
////////////////////////////////////////////////////////////////////////////////

resource rg 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: rgName
  location: rgLocation
  tags: rgTags
}

// outputs
////////////////////////////////////////////////////////////////////////////////

output outputRgName string = rg.name
