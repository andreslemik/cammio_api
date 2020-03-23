# CammioAPI::Invitation

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** |  | [optional] 
**template_id** | **Integer** |  | [optional] 
**scheduled** | **DateTime** |  | [optional] 
**candidate** | [**InlineResponse2005**](InlineResponse2005.md) |  | [optional] 
**interviewer** | [**InlineResponse2005**](InlineResponse2005.md) |  | [optional] 
**guests** | [**Array&lt;InlineResponse2005&gt;**](InlineResponse2005.md) |  | [optional] 

## Code Sample

```ruby
require 'CammioAPI'

instance = CammioAPI::Invitation.new(id: null,
                                 template_id: null,
                                 scheduled: null,
                                 candidate: null,
                                 interviewer: null,
                                 guests: null)
```


