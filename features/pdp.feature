Feature: qavajs framework
@test
  Scenario: PDP_Flooring_noMAP
    Given I open "$base_url+$PDP_flooring_noMap_MSI" url
      And I wait 3000 ms
    Then I expect 'breadcrumbs' to be visible
    Then I expect 'pdp_title' to be visible
    Then I expect 'pdp_h1' to be visible
    Then I expect 'pdp_sku' to be visible
    Then I expect 'pdp_price' to be visible
    Then I expect 'pdp_pick_color' to be visible
    Then I expect 'pdp_calculator' to be visible
    Then I expect 'pdp_details' to be visible
    When I click 'pdp_accessoies_tab'
    Then I expect 'pdp_pick_color' not to be visible
    Then I expect 'pdp_accessoies_filters' to be visible
    When I click 'add_to_cart_accessory_from_accessories_tab'
      And I wait 3000 ms
    Then I expect 'qty_in_accessories_tab' to be visible
    When I click 'pdp_flooring_tab'
    Then I expect 'pdp_additional_section' to be visible
    When I click 'get_sample_button'
      And I wait 3000 ms
    Then I expect 'minicart_popup' to be visible
    When I click 'minicart_close_button'
      And I wait 3000 ms
    When I type "$qty_add" to 'pdp_qty_form'
    When I click 'pdp_add_to_cart_button'
    Then I expect 'pdp_cart_popup' to be visible
    Then I expect text of 'cart_popup_qty' to be equal '5 box(es)'
    Then I expect 'accessory_tile_in_cart_popup' to be visible
    When I click 'pdp_continue_shopping_button'
    When I click 'pdp_pick_color_dropdown'
    Then I expect 'pdp_pick_color_dropdown_expanded' to be visible
    When I click 'pdp_pick_color_dropdown_first_option'
      And I wait 3000 ms
    Then I expect current url not contains '$PDP_flooring_noMap_MSI'
    When I click 'pdp_add_to_cart_button'
    Then I expect 'pdp_cart_popup' to be visible
    When I click 'pdp_continue_shopping_button'
    When I click 'minicart_button'
    Then I expect 'minicart_popup' to be visible
    When I click 'minicart_procced_to_checkout_button'
      And I wait 2000 ms
    Then I expect current url contains '/shipping'
    When I click 'checkout_item_link'
      And I wait 3000 ms
    Then I expect current url contains '$PDP_flooring_noMap_MSI'
    When I click 'get_sample_button'
      And I wait 3000 ms
    Then I expect text of 'minicart_counter' to be equal '7'

  Scenario: PDP_Flooring_Price_Request
    Given I open "$base_url+$PDP_price_request" url
    And I wait 5000 ms
    Then I expect 'pdp_price' not to be visible
    Then I expect 'pdp_h1' to be visible
    Then I expect 'pdp_sku' to be visible
    When I click 'pdp_qty_add_button'
    When I click 'pdp_request_price_button'
    Then I expect 'pdp_request_price_popup' to be visible
    Then I expect 'value' property of 'pdp_request_price_form_qty' to be equal '2'
    When I type 'Auto' to 'firstn_form_price_req'
    When I type 'Test' to 'lastn_form_price_req'
    When I type '$user.randomEmail' to 'email_form'
    When I type '23121211421' to 'phone_form_price_req'
    When I type 'test' to 'street_form_price_req'
    When I type '$region.colorado.zip' to 'zipcode_form'
    When I type '$region.colorado.city' to 'city_form'
    When I click 'price_form_state_dropdown'
    When I click 'price_form_state_colorado'
    When I click 'submit_price_req_button'
      And I wait 3000 ms
    When I click 'pdp_view_cart_button'
    Then I expect current url contains '/cart'
    Then I expect 'cart_tile' to be visible
    Then I expect 'social_login_google' to be visible
    Then I expect 'cart_item_coverage' to be visible
    Then I expect 'cart_item_unit_price' to be visible
    Then I expect 'cart_item_weight' to be visible
    Then I expect 'google_reviews' to be visible
    When I click 'cart_add_qty_button'
      And I wait 3000 ms
    Then I expect 'value' property of 'cart_qty_value' to be equal '3'
    When I click 'cart_tile'
    Then I expect current url to be equal "$base_url+$PDP_price_request"
      And I wait 5000 ms
    When I click 'pdp_related_item_tile'
      And I wait 3000 ms
    Then I expect current url not to be equal "$base_url+$PDP_price_request"
    When I click 'pdp_square_calculator_button'
    Then I expect 'pdp_square_calculator_popup' to be visible
    When I click 'pdp_square_calculator_popup_close_button'
    When I click 'pdp_email_button'
    Then I expect 'pdp_request_quote_popup' to be visible
    When I click 'pdp_request_form_close_button'
    When I click 'pdp_sms_button'
    Then I expect 'pdp_sms_popup' to be visible
    When I click 'pdp_sms_popup_close_button'
    When I click 'pdp_phone_call_button'
    Then I expect 'pdp_phone_call_popup' to be visible
    When I click 'pdp_phone_call_popup_close_button'
      And I wait 3000 ms
    When I click 'pdp_request_price_button'
    When I click 'submit_price_req_button'
    When I click 'pdp_view_cart_button'
    Then I expect current url contains '/cart'
    When I click 'cart_proceed_to_checkout_button'
      And I wait 3000 ms
    Then I expect current url contains '/shipping'
    When I click 'checkout_cart_button'
    Then I expect current url contains '/cart'
    When I click 'cart_clear_shopping_cart'
    And I wait 7000 ms
    Then I expect current url to be equal "$base_url"

  Scenario: PDP_Quote_Form_No_map_user
    When I open "$base_url+$PDP_flooring_quote_form" url
      And I wait 3000 ms
    Then I expect 'pdp_price' not to be visible
    Then I expect 'pdp_price_badge' to be visible
    When I click 'pdp_qty_add_button'
      And I wait 2000 ms
    When I click 'pdp_request_quote_button'
    Then I expect 'pdp_request_quote_popup' to be visible
    Then I expect 'value' property of 'pdp_request_price_form_qty' to be equal '2'
    When I type 'test' to 'firstn_form_price_req'
    When I type 'test' to 'lastn_form_price_req'
    When I type '$user.randomEmail' to 'email_form'
    When I type '23121211421' to 'phone_form_price_req'
    When I type '$region.colorado.zip' to 'zipcode_form'
    When I click 'quote_form_state_dropdown'
    When I click 'quote_form_state_dropdown'
    Then I click 'submit_quote_req_button'
      And I wait 3000 ms
    Then I expect 'get_sample_popup' to be visible
    When I click 'add_sample_button_quote_form'
    And I wait 3000 ms
    Then I expect 'minicart_popup' to be visible
    When I click 'minicart_remove_button'
      And I wait 3000 ms
    When I click 'minicart_close_button'
    When I click 'signin_button'
    Then I expect 'login_popup' to be visible
    When I type '$nomap_user.email' to 'email_form'
    When I type '$nomap_user.password' to 'pass_form_login'
    When I wait 3000 ms
    When I click 'captcha_login'
    When I wait 2000 ms
    When I click "sign_in_button"
    Then I expect 'your_account' to be visible
    When I open "$base_url+$PDP_flooring_quote_form" url
      And I wait 4000 ms
    Then I expect 'pdp_price' to be visible
    Then I expect 'pdp_price_badge' not to be visible
    When I click 'pdp_add_to_cart_button'
    Then I expect 'pdp_cart_popup' to be visible
    When I click 'pdp_cart_popup_suggested_filter'
      And I wait 3000 ms
    When I click 'pdp_cart_popup_add_to_cart_accessory'
      And I wait 3000 ms
    When I click 'pdp_view_cart_button'
    Then I expect current url contains '/cart'
    When I click 'cart_clear_shopping_cart'
      And I wait 5000 ms
    Then I expect current url to be equal "$base_url"

  Scenario: Rug_PDP 
    When I open "$base_url+$PDP_rug_parent" url
      And I wait 10000 ms
    Then I expect 'pdp_price' not to be visible
    Then I expect 'pdp_h1' to be visible
    Then I expect 'pdp_sku' to be visible
    Then I expect text of 'pdp_text_add_to_cart_to_see_final_price' to be equal 'Add to cart for final price'
    Then I expect 'pdp_rug_sizes_block' to be visible
    Then I expect 'pdp_description' to be visible
    Then I expect 'pdp_email_button' to be visible
    Then I expect 'pdp_sms_button' to be visible
    Then I expect 'pdp_phone_call_button' to be visible
    When I click 'pdp_accessoies_tab'
    Then I expect 'pdp_pick_color' not to be visible
    Then I expect 'pdp_accessoies_filters' to be visible
    When I click 'add_to_cart_accessory_from_accessories_tab'
      And I wait 3000 ms
    Then I expect 'qty_in_accessories_tab' to be visible
    When I click 'pdp_flooring_tab'
    When I click 'pdp_rug_second_size'
      And I wait 3000 ms
    When I click 'pdp_add_to_cart_button'
      And I wait 3000 ms
    Then I expect 'pdp_cart_popup' to be visible
    When I click 'pdp_continue_shopping_button'
      And I wait 3000 ms
    When I click 'minicart_button'
    Then I expect 'minicart_popup' to be visible
    When I click 'minicart_remove_first_item'
      And I wait 5000 ms
    When I click 'minicart_remove_button'
      And I wait 3000 ms
    Then I expect text of 'minicart_empty_text' to be equal 'You have no items in your shopping cart.'

  
  Scenario: Sample_PDP
     When I open "$base_url+$PDP_sample" url
     Then I expect 'pdp_price' to be visible
     Then I expect 'breadcrumbs' to be visible
     Then I expect 'pdp_h1' to be visible
     Then I expect 'pdp_sku' to be visible
     Then I expect 'pdp_accessoies_tab' not to be visible
     Then I expect 'pdp_sample_buy_this_product' to be visible
     Then I expect 'pdp_sample_view_full_product_item' to be visible
     When I click 'pdp_add_to_cart_button'
     Then I expect 'minicart_popup' to be visible
     When I click 'minicart_close_button'
     When I click 'pdp_pick_color_dropdown'
     When I click 'pdp_pick_color_dropdown_first_option'
        And I wait 3000 ms
     Then I expect current url not contain 'sample'
     When I click 'minicart_button'
     Then I expect 'minicart_popup' to be visible
     When I click 'minicart_first_item'
        And I wait 3000 ms
     Then I expect current url contains 'sample'
     When I click 'pdp_sample_buy_this_product'
        And I wait 3000 ms
     Then I expect current url not contain 'sample'
     Then I expect 'pdp_h1' to be visible
     When I click 'get_sample_button'
        And I wait 3000 ms
     When I click 'minicart_button'
     Then I expect 'minicart_empty_text' to be visible

  Scenario: Accessories_PDP
    When I open "$base_url+$PDP_accessory" url
      And I wait 4000 ms
    Then I expect 'pdp_price' to be visible
    Then I expect 'breadcrumbs' to be visible
    Then I expect 'pdp_h1' to be visible
    Then I expect 'pdp_sku' to be visible
    Then I expect 'pdp_accessoies_tab' to be visible
    Then I expect 'pdp_accessories_total_price' to be visible
    When I type "$qty_add" to 'pdp_qty_form'
    When I click 'pdp_add_to_cart_button'
    Then I expect 'pdp_cart_popup' to be visible
    Then I expect text of 'cart_popup_qty' to be equal '5'
    Then I expect 'accessory_tile_in_cart_popup' to be visible
    When I click 'pdp_cart_popup_add_to_cart_accessory'
      And I wait 4000 ms
    When I click 'pdp_continue_shopping_button'
    When I click 'pdp_add_to_wishlist_button'
      And I wait 3000 ms
    Then I expect current url contains 'account/login'
    
    









