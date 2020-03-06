# CammioAPI::Invitation

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** |  | [optional] 
**scheduled** | **DateTime** |  | [optional] 
**url** | **String** |  | [optional] 
**candidate** | [**Candidate**](Candidate.md) |  | [optional] 
**template** | [**Template**](Template.md) |  | [optional] 

## Code Sample

```ruby
require 'CammioAPI'

instance = CammioAPI::Invitation.new(id: null,
                                 scheduled: null,
                                 url: null,
                                 candidate: null,
                                 template: null)
```


