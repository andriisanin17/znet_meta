Feature: qavajs framework

  Scenario: Cart_CRUD_guest
    Given I open "$base_url+$PDP_flooring_noMap_MSI" url
      And I wait 5000 ms
    When I click 'pdp_add_to_cart_button'
      And I wait 3000 ms
    Then I expect 'pdp_cart_popup' to be visible
    When I click 'pdp_view_cart_button'
      And I wait 3000 ms
    Then I expect current url contains '/cart'
    Then I expect 'cart_tile' to be visible
    When I click 'cart_accessory_button'
      And I wait 2000 ms
    Then I expect 'cart_accessory_popup' to be visible
    When I click 'cart_accessory_popup_add_to_cart_button'
      And I wait 3000 ms
    When I click 'cart_accessory_popup_close_button'
    Then I expect number of elements in 'cart_tiles' collection to be equal '2' 
    When I click 'cart_add_qty_button_first_item'
      And I wait 3000 ms
    Then I expect 'value' property of 'cart_qty_value_first_item' to be equal '2'
    When I click 'cart_continue_shopping_button'
      And I wait 3000 ms
    Then I expect current url equals '$base_url'
    When I open "$base_url+$PDP_flooring_noMap_MSI" url
    When I click 'pdp_add_to_cart_button'
      And I wait 3000 ms
    Then I expect 'pdp_cart_popup' to be visible
    When I click 'pdp_view_cart_button'
      And I wait 3000 ms
    Then I expect current url contains '/cart'
    Then I expect 'value' property of 'cart_qty_value_first_item' to be equal '3'
    When I click 'cart_first_item_link'
      And I wait 5000 ms
    Then I expect current url equals '$base_url+$PDP_flooring_noMap_MSI'
      And I wait 3000 ms
    When I click 'get_sample_button'
      And I wait 5000 ms
    When I click 'minicart_close_button'
      And I wait 3000 ms
    When I click 'minicart_button'
    When I click 'minicart_view_cart_button'
    Then I expect current url contains '/cart'
    Then I expect number of elements in 'cart_tiles' collection to be equal '3' 
    When I click 'cart_clear_shopping_cart'
      And I wait 8000 ms
    Then I expect current url equals '$base_url'

  Scenario: Cart_CRUD_logged-in
    Given I open "$base_url" url
    When I click 'signin_button'
    Then I expect 'login_popup' to be visible
    Then I expect 'social_login_google' to be visible
    When I type '$nomap_user.email' to 'email_form'
    When I type '$nomap_user.password' to 'pass_form_login'
      And I wait 3000 ms
    When I click 'captcha_login'
      And I wait 2000 ms
    When I click "sign_in_button"
      And I wait 3000 ms
    Then I expect 'your_account' to be visible
    When I open "$base_url+$PDP_flooring_quote_form" url
      And I wait 10000 ms
    When I click 'pdp_add_to_cart_button'
      And I wait 3000 ms
    Then I expect 'pdp_cart_popup' to be visible
    When I click 'cart_accessory_popup_close_button'
      And I wait 3000 ms
    When I click 'get_sample_button'
      And I wait 3000 ms
    Then I expect 'minicart_popup' to be visible
    When I click 'minicart_view_cart_button'
      And I wait 3000 ms
    Then I expect current url contains '/cart'
    Then I expect number of elements in 'cart_tiles' collection to be equal '2' 
    When I hover over 'your_account'
    When I click 'dashboard_item'
      And I wait 3000 ms
    Then I expect current url contains '/my-account/dashboard'
    When I click 'my_account_logout'
    Then I expect 'signin_button' to be visible
    When I open "$base_url+$PDP_flooring_noMap_MSI" url
      And I wait 10000 ms
    When I click 'pdp_add_to_cart_button'
      And I wait 3000 ms
    When I click 'cart_accessory_popup_close_button'
      And I wait 3000 ms
    When I click 'signin_button'
    When I type '$nomap_user.email' to 'email_form'
    When I type '$nomap_user.password' to 'pass_form_login'
      And I wait 3000 ms
    When I click 'captcha_login'
      And I wait 2000 ms
    When I click "sign_in_button"
      And I wait 3000 ms
    Then I expect 'your_account' to be visible
    When I click 'minicart_button'
    When I click 'minicart_view_cart_button'
    Then I expect current url contains '/cart'
    Then I expect 'cart_brand_error' to be visible
    When I click 'minicart_button'
      And I wait 3000 ms
    When I click 'minicart_remove_third_item'
      And I wait 3000 ms
    When I click 'minicart_close_button'
    Then I expect 'cart_brand_error' not to be visible
    When I click 'cart_accessory_button'
      And I wait 3000 ms
    When I click 'cart_accessory_popup_suggested_filter_button'
      And I wait 3000 ms
    When I click 'cart_accessory_popup_add_to_cart_button'
      And I wait 3000 ms
    When I click 'cart_accessory_popup_close_button'
    Then I expect number of elements in 'cart_tiles' collection to be equal '3' 
    When I click 'cart_continue_shopping_button'
      And I wait 3000 ms
    Then I expect current url equals '$base_url'
    When I click 'minicart_button'
    When I click 'minicart_remove_first_item'
      And I wait 3000 ms
    When I click 'minicart_remove_first_item'
      And I wait 3000 ms
    When I click 'minicart_remove_first_item'
      And I wait 3000 ms
    Then I expect 'minicart_empty_text' to be visible

 
  Scenario: Cart_Checkout_logged-in
    Given I open "$base_url" url
      And I wait 3000 ms
    When I click 'signin_button'
    Then I expect 'login_popup' to be visible
    Then I expect 'social_login_google' to be visible
    When I type '$nomap_user.email' to 'email_form'
    When I type '$nomap_user.password' to 'pass_form_login'
      And I wait 3000 ms
    When I click 'captcha_login'
      And I wait 2000 ms
    When I click "sign_in_button"
    Then I expect 'your_account' to be visible
      And I wait 3000 ms
    When I open "$base_url+$PDP_rug_parent" url
      And I wait 10000 ms
    When I click 'pdp_add_to_cart_button'
      And I wait 5000 ms
    Then I expect 'pdp_cart_popup' to be visible
    When I click 'pdp_view_cart_button'
      And I wait 3000 ms
    Then I expect current url contains '/cart'
      And I wait 3000 ms
    When I click 'your_account'
    When I click 'my_account_logout'
      And I wait 5000 ms
    When I open "$base_url+$PDP_flooring_noMap_MSI" url
      And I wait 3000 ms
    When I click 'pdp_add_to_cart_button'
      And I wait 3000 ms
    When I click 'pdp_continue_shopping_button'
      And I wait 3000 ms
    When I click 'minicart_button'
      And I wait 2000 ms
    When I click 'minicart_procced_to_checkout_button'
      And I wait 3000 ms
    Then I expect current url contains '/shipping'
    When I type '$nomap_user.email' to 'email_form_guest'
      And I wait 5000 ms
    When I type '$nomap_user.password' to 'pass_form_login'
      And I wait 3000 ms
    When I click 'captcha_login'
      And I wait 4000 ms
    When I click 'sign_in_button'
      And I wait 10000 ms
    Then I expect current url contains '/cart'
    Then I expect 'cart_brand_error' to be visible
    When I click 'cart_clear_shopping_cart'
      And I wait 8000 ms
    Then I expect current url equals '$base_url'




    








    
    


