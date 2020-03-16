# CammioAPI::InvitationsApi

All URIs are relative to *https://api.cammio.me/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_invitation**](InvitationsApi.md#add_invitation) | **POST** /invitations | Invite a candidate for a video interview
[**delete_invitation**](InvitationsApi.md#delete_invitation) | **DELETE** /invitations/{invitationId} | Delete an invitation
[**get_invitation_by_id**](InvitationsApi.md#get_invitation_by_id) | **GET** /invitations/{invitationId} | Find an invitation by ID
[**get_invitations**](InvitationsApi.md#get_invitations) | **GET** /invitations | Returns the list of invitations



## add_invitation

> Invitation add_invitation(body)

Invite a candidate for a video interview

### Example

```ruby
# load the gem
require 'Cammio API'
# setup authorization
CammioAPI.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CammioAPI::InvitationsApi.new
body = CammioAPI::InlineObject1.new # InlineObject1 | 

begin
  #Invite a candidate for a video interview
  result = api_instance.add_invitation(body)
  p result
rescue CammioAPI::ApiError => e
  puts "Exception when calling InvitationsApi->add_invitation: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**InlineObject1**](InlineObject1.md)|  | 

### Return type

[**Invitation**](Invitation.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_invitation

> delete_invitation(invitation_id)

Delete an invitation

With this resource, you can delete an invitation, which effectively un-invites a candidate. Use with caution! 

### Example

```ruby
# load the gem
require 'Cammio API'
# setup authorization
CammioAPI.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CammioAPI::InvitationsApi.new
invitation_id = 56 # Integer | Invitation id to delete

begin
  #Delete an invitation
  api_instance.delete_invitation(invitation_id)
rescue CammioAPI::ApiError => e
  puts "Exception when calling InvitationsApi->delete_invitation: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invitation_id** | **Integer**| Invitation id to delete | 

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_invitation_by_id

> Invitation get_invitation_by_id(invitation_id)

Find an invitation by ID

With this resource you can get the details of an invitation. 

### Example

```ruby
# load the gem
require 'Cammio API'
# setup authorization
CammioAPI.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CammioAPI::InvitationsApi.new
invitation_id = 56 # Integer | ID of invitation to return

begin
  #Find an invitation by ID
  result = api_instance.get_invitation_by_id(invitation_id)
  p result
rescue CammioAPI::ApiError => e
  puts "Exception when calling InvitationsApi->get_invitation_by_id: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **invitation_id** | **Integer**| ID of invitation to return | 

### Return type

[**Invitation**](Invitation.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_invitations

> Array&lt;Invitation&gt; get_invitations(opts)

Returns the list of invitations

This resource returns all invitations within Cammio. When a candidate completes an interview, the invitation will be removed from the list. All parameters are optional. 

### Example

```ruby
# load the gem
require 'Cammio API'
# setup authorization
CammioAPI.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'

  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = CammioAPI::InvitationsApi.new
opts = {
  template_id: 56, # Integer | Invitations belonging to template
  first_name: 'first_name_example', # String | Query by first name
  last_name: 'last_name_example', # String | Query by last name
  email: 'email_example', # String | Query by email
  offset: 56, # Integer | The number of items to skip before starting to collect the result set.
  limit: 10 # Integer | The numbers of items to return.
}

begin
  #Returns the list of invitations
  result = api_instance.get_invitations(opts)
  p result
rescue CammioAPI::ApiError => e
  puts "Exception when calling InvitationsApi->get_invitations: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **Integer**| Invitations belonging to template | [optional] 
 **first_name** | **String**| Query by first name | [optional] 
 **last_name** | **String**| Query by last name | [optional] 
 **email** | [**String**](.md)| Query by email | [optional] 
 **offset** | **Integer**| The number of items to skip before starting to collect the result set. | [optional] 
 **limit** | **Integer**| The numbers of items to return. | [optional] [default to 10]

### Return type

[**Array&lt;Invitation&gt;**](Invitation.md)

### Authorization

[basicAuth](../README.md#basicAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

