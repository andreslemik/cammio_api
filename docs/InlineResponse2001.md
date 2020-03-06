# CammioAPI::InlineResponse2001

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** |  | [optional] 
**started** | **DateTime** |  | [optional] 
**completed** | **DateTime** |  | [optional] 
**url** | **String** |  | [optional] 
**still_url** | **String** |  | [optional] 
**thumb_url** | **String** |  | [optional] 
**candidate** | [**Candidate**](Candidate.md) |  | [optional] 
**template** | [**Template**](Template.md) |  | [optional] 

## Code Sample

```ruby
require 'CammioAPI'

instance = CammioAPI::InlineResponse2001.new(id: null,
                                 started: null,
                                 completed: null,
                                 url: null,
                                 still_url: null,
                                 thumb_url: null,
                                 candidate: null,
                                 template: null)
```


