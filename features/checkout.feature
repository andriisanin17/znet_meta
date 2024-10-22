Feature: qavajs framework

 Scenario: Checkout_Sample
    Given I open "$base_url+$PDP_flooring_noMap_MSI" url
      And I wait 3000 ms
    When I click 'get_sample_button'
    Then I expect 'minicart_popup' to be visible
    When I click 'minicart_view_cart_button'
    Then I expect current url contains '/cart'
    When I click 'procced_to_checkout_button'
    Then I expect current url contains '/checkout/shipping'
    When I type '$user.randomEmail' to 'email_form_guest'
    When I type 'Test' to 'firstname_form'
    When I type 'Test' to 'lastname_form'
    When I type 'Test' to 'address_form'
    When I type '$region.colorado.zip' to 'zipcode_form'
    Then I expect 'value' property of 'region_id' to be equal '$region.colorado.code'
    Then I expect 'value' property of 'city_form ' to be equal '$region.colorado.city'
    Then I expect 'shipping_option_block' to be visible
    When I type '8185121214' to 'phone_form'
    Then I expect text of 'shipping_option_price' contains '0.00'
    When I click 'proceed_to_billing_button'
    Then I expect 'installation_checkbox_error_message' to be visible
    When I click 'installation_checkbox'
    When I click 'proceed_to_billing_button'
      And I wait 10000 ms
    Then I expect current url contains '/checkout/billing'
    When I click 'checkout_cart_button'
      And I wait 4000 ms
    When I click 'cart_proceed_to_checkout_button'
      And I wait 4000 ms
    When I click 'installation_checkbox'
    When I click 'proceed_to_billing_button'
      And I wait 10000 ms
    When I click 'same_billing_as_shipping_checkbox'
    Then I expect 'billing_address_block' not to be visible
    Then I expect text of 'cart_subtotal' to contain 'TAX'
    Then I click 'cc_pay_method'
      And I wait 2000 ms
    When I type '$card_data.num' to 'cc_num'
      And I wait 2000 ms
    When I type '$card_data.mmyy' to 'cc_date'
      And I wait 2000 ms
    When I type '$card_data.cvv' to 'cc_cvv'
      And I wait 2000 ms
    Then I click 'terms_checkbox'
    Then I click 'complete_order'
    When I wait until current url to contain '/checkout/success' (timeout: 60000)
    When I save text of 'checkout_order_num' as 'order_id'
    When I open "$base_url+$admin_url" url
    When I type '$admin_user.email' to 'admin_username'
    When I type '$admin_user.password' to 'admin_password'
    When I click 'admin_signin_button'
    Then I expect current url contains 'admin_pwa/dashboard/dashboard/index/'
    When I click 'admin_menu_sales'
    When I click 'admin_menu_sales_orders'
    When I type '$extractOrderId($order_id)' to 'admin_search_field'
      And I wait 2000 ms
    When I press 'Enter' key
      And I wait 2000 ms
    Then I expect '#{$extractOrderId($order_id)} in admin_search_results' to be visible

  
 Scenario: Checkout_Flooring_two_orders
    Given I open "$base_url+$PDP_floorin_mohawk" url
      And I wait 3000 ms
    When I set 'email' = '$user.randomEmail'   
    When I click 'pdp_add_to_cart_button'
    Then I click 'pdp_view_cart_button'
    Then I expect current url contains '/cart'
    When I click 'procced_to_checkout_button'
    Then I expect current url contains '/checkout/shipping'
    When I type '$email' to 'email_form_guest'
    When I type 'Test' to 'firstname_form'
    When I type 'Test' to 'lastname_form'
    When I type 'Test' to 'address_form'
    When I type '$region.delaware.zip' to 'zipcode_form'
    Then I expect 'value' property of 'region_id' to be equal '$region.delaware.code'
    Then I expect 'value' property of 'city_form ' to be equal '$region.delaware.city'
      And I wait 3000 ms
    Then I expect 'shipping_option_block' to be visible
    When I type '8185121214' to 'phone_form'
    When I click 'installation_checkbox'
    When I click 'shipping_option_second'
    When I click 'curbside_disclaimer_checkbox'
    When I click 'curbside_disclaimer_checkbox_2'
    When I click 'proceed_to_billing_button'
      And I wait 10000 ms
    Then I expect current url contains '/checkout/billing'
    Then I expect text of 'cart_subtotal' not contain 'TAX'
    When I clear 'firstname_form'
    When I type 'Test_1' to 'firstname_form'
    When I clear 'lastname_form'
    When I type 'Test_1' to 'lastname_form'
    When I type 'Test' to 'address_form'
    When I type '$region.colorado.zip' to 'zipcode_form'
    Then I expect 'value' property of 'region_id' to be equal '$region.colorado.code'
    Then I expect 'value' property of 'city_form ' to be equal '$region.colorado.city'
    When I type 'znet50' to 'coupon_code_form'
    When I click 'apply_coupon_button'
      And I wait 3000 ms
    Then I expect text of 'cart_subtotal' contains 'znet50'
    Then I click 'cc_pay_method'
      And I wait 2000 ms
    When I type '$card_data.num' to 'cc_num'
      And I wait 2000 ms
    When I type '$card_data.mmyy' to 'cc_date'
      And I wait 2000 ms
    When I type '$card_data.cvv' to 'cc_cvv'
      And I wait 2000 ms
    Then I click 'terms_checkbox'
    Then I click 'complete_order'
    When I wait until current url to contain '/checkout/success' (timeout: 60000)
      And I wait 5000 ms
    When I click 'success_page_continue_shopping_button'
      And I wait 5000 ms
    When I hover over 'menu_item_vinyl'
    Then I expect text of 'menu_sub_item_msi_vinyl' to be equal 'MSI VINYL'
    When I click 'menu_sub_item_msi_vinyl'
    When I click 'add_sample_to_cart_plp'
    Then I expect 'minicart_popup' to be visible
    When I click 'minicart_procced_to_checkout_button'
    Then I expect current url contains '/checkout/shipping'
      And I wait 5000 ms
    Then I expect value of 'email_form_guest' equals '$email'
    Then I expect value of 'firstname_form' equals 'Test'
    Then I expect value of 'zipcode_form' equals '$region.delaware.zip'


 Scenario: Checkout_Price_Request_login_in_checkout
    Given I open "$base_url+$PDP_price_request" url
      And I wait 3000 ms
    Then I expect 'pdp_price' not to be visible
    When I click 'pdp_qty_add_button'
    When I click 'pdp_request_price_button'
    Then I expect 'pdp_request_price_popup' to be visible
    Then I expect 'value' property of 'pdp_request_price_form_qty' to be equal '2'
    When I type 'test' to 'firstn_form_price_req'
    When I type 'test' to 'lastn_form_price_req'
    When I type '$user.randomEmail' to 'email_form'
    When I type '23121211421' to 'phone_form_price_req'
    When I type 'test' to 'street_form_price_req'
    When I type '$region.colorado.zip' to 'zipcode_form'
    When I type '$region.colorado.city' to 'city_form'
    When I click 'price_form_state_dropdown'
    When I click 'price_form_state_colorado'
    When I click 'submit_price_req_button'
      And I wait 4000 ms
    When I click 'pdp_view_cart_button'
    Then I expect current url contains '/cart'
    Then I expect 'cart_tile' to be visible
    Then I expect 'social_login_google' to be visible
    Then I expect 'cart_item_coverage' to be visible
    Then I expect 'cart_item_unit_price' to be visible
    Then I expect 'cart_item_weight' to be visible
    Then I expect 'google_reviews' to be visible
    When I click 'cart_add_qty_button'
      And I wait 2000 ms
    Then I expect 'value' property of 'cart_qty_value' to be equal '3'
    When I click 'cart_proceed_to_checkout_button'
      And I wait 3000 ms
    When I type '$registerred_user.email' to 'email_form_guest'
      And I wait 3000 ms
    Then I expect 'pass_form_login' to be visible
    When I type '$registerred_user.password' to 'pass_form_login'
    Then I click 'captcha_login'
      And I wait 3000 ms
    When I click 'sign_in_button'
      And I wait 3000 ms
    Then I expect 'saved_address_item' to be visible
    When I click 'installation_checkbox_logged_in'
    When I click 'shipping_option_second'
    When I click 'pickup_option_first'
      And I wait 3000 ms
    When I click 'curbside_disclaimer_checkbox_pick_up'
    When I click 'proceed_to_billing_button'
      And I wait 10000 ms
    Then I expect current url contains '/checkout/billing'
    Then I expect text of 'cart_subtotal' contains 'TAX'
    Then I expect text of 'cart_subtotal' contains 'Will-Call 5'
    When I click 'same_billing_as_shipping_checkbox'
    Then I click 'cc_pay_method'
      And I wait 2000 ms
    When I type '$card_data.mmyy' to 'cc_date'
    When I type '$card_data.cvv' to 'cc_cvv'
    Then I click 'terms_checkbox'
    When I click 'checkout_cart_button'
      And I wait 4000 ms
    When I click 'cart_proceed_to_checkout_button'
      And I wait 4000 ms
    When I click 'installation_checkbox_logged_in'
    When I click 'proceed_to_billing_button'
      And I wait 10000 ms
    Then I expect current url contains '/checkout/billing'
    Then I expect text of 'cart_subtotal' contains 'TAX'
    Then I expect text of 'cart_subtotal' contains 'Will-Call 5'
    When I click 'same_billing_as_shipping_checkbox'
    Then I click 'cc_pay_method'
      And I wait 2000 ms
    When I type '$card_data.num' to 'cc_num'
      And I wait 2000 ms
    When I type '$card_data.mmyy' to 'cc_date'
      And I wait 2000 ms
    When I type '$card_data.cvv' to 'cc_cvv'
      And I wait 2000 ms
    Then I click 'terms_checkbox'
    Then I click 'complete_order'
    When I wait until current url to contain '/checkout/success' (timeout: 60000)
    When I save text of 'checkout_order_num' as 'order_id'
    When I hover over 'your_account'
    When I click 'my_orders_item'
    Then I expect current url contains '/my-account/my-orders'
    Then I expect text of 'first_order_row' contains '#{$extractOrderId($order_id)}'

 Scenario: Checkout_Login_user_Rug
    Given I open "$base_url" url
    When I click 'signin_button'
    Then I expect 'login_popup' to be visible
    Then I expect 'social_login_google' to be visible
    When I type '$registerred_user.email' to 'email_form'
    When I type '$registerred_user.password' to 'pass_form_login'
      And I wait 3000 ms
    When I click 'captcha_login'
    When I wait 2000 ms
    When I click "sign_in_button"
    Then I expect 'your_account' to be visible
    When I open "$base_url+$PDP_rug_parent" url
      And I wait 10000 ms
    Then I expect 'pdp_accessoies_tab' to be visible
    When I type "$qty_add" to 'pdp_qty_form'
    When I click 'pdp_add_to_cart_button'
      And I wait 5000 ms
    Then I expect 'pdp_cart_popup' to be visible
    When I click 'pdp_view_cart_button'
    Then I expect current url contains '/cart'
    When I click 'procced_to_checkout_button'
    Then I expect current url contains '/checkout/shipping'
      And I wait 3000 ms
    Then I expect text of 'shipping_option_price' contains '0.00'
    When I click 'proceed_to_billing_button'
      And I wait 10000 ms
    Then I expect current url contains '/checkout/billing'
    Then I expect text of 'cart_subtotal' contains 'TAX'
    When I click 'same_billing_as_shipping_checkbox'
    Then I click 'cc_pay_method'
      And I wait 2000 ms
    When I type '$card_data.num' to 'cc_num'
      And I wait 2000 ms
    When I type '$card_data.mmyy' to 'cc_date'
      And I wait 2000 ms
    When I type '$card_data.cvv' to 'cc_cvv'
      And I wait 2000 ms
    Then I click 'terms_checkbox'
    Then I click 'complete_order'
    When I wait until current url to contain '/checkout/success' (timeout: 60000)
    When I save text of 'checkout_order_num' as 'order_id'
    When I hover over 'your_account'
    When I click 'my_orders_item'
    Then I expect current url contains '/my-account/my-orders'
    Then I expect text of 'first_order_row' contains '#{$extractOrderId($order_id)}'


 Scenario: Checkout_flooring_plus_accessories_new_customer
    Given I open "$base_url" url
    When I set 'email' = '$user.randomEmail'  
    When I click 'signin_button'
    Then I expect 'login_popup' to be visible
    When I click 'create_account_button'
      And I wait 5000 ms
    Then I expect current url contains '/account/create'
      And I wait 3000 ms
    When I type 'test_auto' to 'firstname_form'
    When I type 'test_auto' to 'lastname_form'
    When I type '$email' to 'email_form'
    When I type '$registerred_user.password' to 'pass_form_login'
    When I type '$registerred_user.password' to 'confirm_pass_registration_form'
      And I wait 3000 ms
    When I click 'captcha_registration'
      And I wait 3000 ms
    When I click 'sign_up_button'
      And I wait 4000 ms
    Then I expect 'your_account' to be visible
    When I open "$base_url+$PDP_flooring_noMap_MSI" url 
      And I wait 4000 ms
    When I click 'pdp_accessoies_tab'
    Then I expect 'pdp_pick_color' not to be visible
    Then I expect 'pdp_accessoies_filters' to be visible
    When I click 'add_to_cart_accessory_from_accessories_tab'
      And I wait 3000 ms
    Then I expect 'qty_in_accessories_tab' to be visible
    When I click 'pdp_flooring_tab'
    When I type "$qty_add" to 'pdp_qty_form'
    When I click 'pdp_add_to_cart_button'
    Then I expect 'pdp_cart_popup' to be visible
    Then I expect text of 'cart_popup_qty' to be equal '5 box(es)'
    When I click 'pdp_cart_popup_second_tile_link_to_pdp'
      And I wait 10000 ms
    When I click 'pdp_add_to_cart_button'
    Then I expect 'pdp_cart_popup' to be visible
    Then I click 'pdp_view_cart_button'
      And I wait 3000 ms
    When I click 'cart_proceed_to_checkout_button'
      And I wait 5000 ms
    Then I expect current url contains '/checkout/shipping'
    When I type 'Test' to 'firstname_form'
    When I type 'Test' to 'lastname_form'
    When I type 'Test' to 'address_form'
    When I type '$region.colorado.zip' to 'zipcode_form'
    Then I expect 'value' property of 'region_id' to be equal '$region.colorado.code'
    Then I expect 'value' property of 'city_form ' to be equal '$region.colorado.city'
    Then I expect 'shipping_option_block' to be visible
    When I type '8185121214' to 'phone_form'
    When I click 'installation_checkbox_newly_registered'
    When I click 'curbside_disclaimer_checkbox'
    When I click 'curbside_disclaimer_checkbox_2'
    When I click 'proceed_to_billing_button'
      And I wait 10000 ms
    Then I expect current url contains '/checkout/billing'
    Then I expect text of 'cart_subtotal' contains 'TAX'
    When I clear 'firstname_form'
    When I type 'Test_1' to 'firstname_form'
    When I clear 'lastname_form'
    When I type 'Test_1' to 'lastname_form'
    When I type 'Test' to 'address_form'
    When I type '$region.nevada.zip' to 'zipcode_form'
    Then I expect 'value' property of 'region_id' to be equal '$region.nevada.code'
    Then I expect 'value' property of 'city_form ' to be equal '$region.nevada.city'
    When I type 'znet50' to 'coupon_code_form'
    When I click 'apply_coupon_button'
      And I wait 6000 ms
    Then I expect text of 'cart_subtotal' contains 'znet50'
    Then I click 'cc_pay_method'
      And I wait 2000 ms
    When I type '$card_data.num' to 'cc_num'
      And I wait 2000 ms
    When I type '$card_data.mmyy' to 'cc_date'
      And I wait 2000 ms
    When I type '$card_data.cvv' to 'cc_cvv'
      And I wait 2000 ms
    Then I click 'terms_checkbox'
    Then I click 'complete_order'
    When I wait until current url to contain '/checkout/success' (timeout: 60000)
    When I save text of 'checkout_order_num' as 'order_id'
    When I hover over 'your_account'
    When I click 'my_orders_item'
    Then I expect current url contains '/my-account/my-orders'
    Then I expect text of 'first_order_row' contains '#{$extractOrderId($order_id)}'
    When I open "$base_url+$admin_url" url
    When I type '$admin_user.email' to 'admin_username'
    When I type '$admin_user.password' to 'admin_password'
    When I click 'admin_signin_button'
    Then I expect current url contains 'admin_pwa/dashboard/dashboard/index/'
    When I click 'admin_menu_customers'
    When I click 'admin_menu_customers_all_customers'
        And I wait 7000 ms
    When I type "$email" to 'admin_search_field'
      And I wait 2000 ms
    When I press 'Enter' key
      And I wait 2000 ms
    Then I expect text of 'admin_search_results' contains "$email" 
    Then I expect text of 'admin_search_results' contains 'Verified'
    


    

    



    

   
   
