# CammioAPI::InlineObject1

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**template_id** | **Integer** |  | 
**scheduled** | **DateTime** |  | 
**candidate** | [**Candidate**](Candidate.md) |  | 
**interviewer** | [**Interviewer**](Interviewer.md) |  | [optional] 
**guests** | [**Array&lt;Guest&gt;**](Guest.md) |  | [optional] 
**callback_params** | [**InvitationsCallbackParams**](InvitationsCallbackParams.md) |  | [optional] 

## Code Sample

```ruby
require 'CammioAPI'

instance = CammioAPI::InlineObject1.new(template_id: null,
                                 scheduled: null,
                                 candidate: null,
                                 interviewer: null,
                                 guests: null,
                                 callback_params: null)
```


