# CammioAPI::Profile

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**agreeableness** | [**ProfileAgreeableness**](ProfileAgreeableness.md) |  | [optional] 
**conscientiousness** | [**ProfileConscientiousness**](ProfileConscientiousness.md) |  | [optional] 
**extraversion** | [**ProfileExtraversion**](ProfileExtraversion.md) |  | [optional] 
**neuroticism** | [**ProfileNeuroticism**](ProfileNeuroticism.md) |  | [optional] 
**openness** | [**ProfileOpenness**](ProfileOpenness.md) |  | [optional] 

## Code Sample

```ruby
require 'CammioAPI'

instance = CammioAPI::Profile.new(agreeableness: null,
                                 conscientiousness: null,
                                 extraversion: null,
                                 neuroticism: null,
                                 openness: null)
```


