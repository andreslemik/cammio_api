# CammioAPI::Interview

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** |  | [optional] 
**started** | **DateTime** |  | [optional] 
**completed** | **DateTime** |  | [optional] 
**url** | **String** |  | [optional] 
**thumb_url** | **String** |  | [optional] 
**still_url** | **String** |  | [optional] 
**answers** | [**Array&lt;Answer&gt;**](Answer.md) |  | [optional] 
**candidate** | [**Candidate**](Candidate.md) |  | [optional] 
**template** | [**Template**](Template.md) |  | [optional] 
**feedback** | [**Feedback**](Feedback.md) |  | [optional] 

## Code Sample

```ruby
require 'CammioAPI'

instance = CammioAPI::Interview.new(id: null,
                                 started: null,
                                 completed: null,
                                 url: null,
                                 thumb_url: null,
                                 still_url: null,
                                 answers: null,
                                 candidate: null,
                                 template: null,
                                 feedback: null)
```


