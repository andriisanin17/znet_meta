Feature: qavajs framework

 Scenario: E2E_Sample+Admin
    Given I open "$base_url" url
    Then I expect page title equals 'Premium Flooring Products by Category, Available Online at Znet Flooring'
    Then I expect text of 'copyright' to contain '2023'
    Then I expect 'main_banner' to be visible
    When I hover over 'menu_item_vinyl'
    Then I expect text of 'menu_sub_item_msi_vinyl' to be equal 'MSI VINYL'
    When I click 'menu_sub_item_msi_vinyl'
    Then I expect text of 'h1_plp' to contain 'MSI VINYL'
    Then I expect 'product_tile' to be visible
    When I click 'add_sample_to_cart_plp'
    Then I expect 'minicart_popup' to be visible
    When I click 'minicart_view_cart_button'
    Then I expect current url contains '/cart'
    When I click 'procced_to_checkout_button'
    Then I expect current url contains '/checkout/shipping'
    When I click 'email_form_guest'
    When I type '$user.randomEmail' to 'email_form_guest'
    And I type 'Test' to 'firstname_form'
    And I type 'Test' to 'lastname_form'
    And I type 'Test' to 'address_form'
    And I type '$region.colorado.zip' to 'zipcode_form'
    Then I expect 'value' property of 'region_id' to be equal '$region.colorado.code'
    Then I expect 'value' property of 'city_form ' to be equal '$region.colorado.city'
    Then I expect 'shipping_option_block' to be visible
    When I type '1185121214' to 'phone_form'
    When I click 'installation_checkbox'
    When I click 'proceed_to_billing_button'
    Then I expect current url contains '/checkout/billing'
      And I wait 10000 ms
    Then I expect text of 'cart_subtotal' to contain 'TAX'
    Then I expect 'payment_methods' to be visible
    When I type '$card_data.num' to 'cc_num'
      And I wait 2000 ms
    When I type '$card_data.mmyy' to 'cc_date'
      And I wait 2000 ms
    When I type '$card_data.cvv' to 'cc_cvv'
      And I wait 2000 ms
    When I hover over 'terms_button'
    When I click 'terms_button'
      And I wait 2000 ms
    Then I expect 'terms_popup' to be visible
    When I click 'terms_popup_close_button'
    Then I expect 'terms_popup' not to be visible
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
  
  
  Scenario: Homepage
    Given I open "$base_url" url
    Then I expect 'logo' to be visible
    Then I expect page title equals 'Premium Flooring Products by Category, Available Online at Znet Flooring'
    Then I expect 'main_banner' to be visible
    Then I expect 'footer' to be visible

  
  Scenario: Login/Logout
    Given I open "$base_url" url
    When I click 'signin_button'
    Then I expect 'login_popup' to be visible
    Then I expect 'social_login_google' to be visible
    When I type '$registerred_user.email' to 'email_form'
    When I type '$registerred_user.password' to 'pass_form_login'
      And I wait 3000 ms
    When I click 'captcha_login'
      And I wait 2000 ms
    When I click "sign_in_button"
    Then I expect 'your_account' to be visible
    When I hover over 'your_account'
    When I click 'dashboard_item'
    Then I expect current url contains '/my-account/dashboard'
    When I click 'my_account_logout'
    Then I expect 'signin_button' to be visible

  
  Scenario: Registration
    Given I open "$base_url" url
    When I click 'signin_button'
    Then I expect 'login_popup' to be visible
    When I click 'create_account_button'
      And I wait 5000 ms
    Then I expect current url contains '/account/create'
      And I wait 3000 ms
    When I type 'test' to 'firstname_form'
    When I type 'test' to 'lastname_form'
    When I type '$user.randomEmail' to 'email_form'
    When I type '$registerred_user.password' to 'pass_form_login'
    When I type '$registerred_user.password' to 'confirm_pass_registration_form'
      And I wait 3000 ms
    When I click 'captcha_registration'
      And I wait 3000 ms
    When I click 'sign_up_button'
      And I wait 4000 ms
    Then I expect 'your_account' to be visible
    When I hover over 'your_account'
      And I click 'dashboard_item'
    Then I expect current url contains '/my-account/dashboard'
      And I click 'my_account_logout'
    Then I expect 'signin_button' to be visible

  
  Scenario: PLP
    Given I open "$base_url" url
    When I hover over 'menu_item_vinyl'
    When I click 'menu_sum_item_mohawk_vinyl'
    Then I expect 'h1_plp' to be visible
    Then I expect 'filters_block' to be visible
    Then I expect number of elements in 'plp_tiles' collection to be equal '36'
    Then I expect 'breadcrumbs' to be visible
    Then I expect 'pagination' to be visible
    Then I expect 'footer' to be visible

  
  Scenario: PDP_Flooring_noMAP
    Given I open "$base_url" url
    When I hover over 'menu_item_vinyl'
    Then I expect text of 'menu_sub_item_msi_vinyl' to be equal 'MSI VINYL'
    When I click 'menu_sub_item_msi_vinyl'
    When I click 'plp_tile_image'
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
    When I click 'pdp_flooring_tab'
    Then I expect 'pdp_additional_section' to be visible
    When I type "$qty_add" to 'pdp_qty_form'
    When I click 'pdp_add_to_cart_button'
    Then I expect 'pdp_cart_popup' to be visible
    Then I expect text of 'cart_popup_qty' to be equal '5 box(es)'
    When I click 'pdp_continue_shopping_button'
    When I click 'minicart_button'
    Then I expect 'minicart_popup' to be visible
    When I click 'minicart_procced_to_checkout_button'
      And I wait 2000 ms
    Then I expect current url contains '/shipping'

  
  Scenario: PDP_Price_Request + Cart
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
      And I wait 2000 ms
    Then I expect current url contains '/shipping'

  
  Scenario: Login_Checkout
    Given I open "$base_url+$PDP_flooring_noMap_MSI" url
      And I wait 3000 ms
    When I click 'pdp_add_to_cart_button'
    When I click 'pdp_view_cart_button'
    When I click 'procced_to_checkout_button'
    Then I expect current url contains 'checkout/shipping'
      And I wait 3000 ms
    When I type 'testpp10vqa@gmail.com' to 'email_form_guest'
      And I wait 3000 ms
    Then I expect 'pass_form_login' to be visible
    When I type 'Qwerty123)' to 'pass_form_login'
    Then I click 'captcha_login'
      And I wait 3000 ms
    When I click 'sign_in_button'
      And I wait 3000 ms
    Then I expect 'saved_address_item' to be visible
    When I click 'checkout_cart_button'
    And I wait 3000 ms
    Then I expect current url contains '/cart'
      And I wait 2000 ms
    When I click 'cart_clear_shopping_cart'
      And I wait 3000 ms
    Then I expect 'main_banner' to be visible


  Scenario: Adding_to_Cart_as_logged_in
    Given I open "$base_url" url
    When I click 'signin_button'
    Then I expect 'login_popup' to be visible
    Then I expect 'social_login_google' to be visible
    When I type '$registerred_user.email' to 'email_form'
    When I type '$registerred_user.password' to 'pass_form_login'
      And I wait 3000 ms
    When I click 'captcha_login'
      And I wait 2000 ms
    When I click "sign_in_button"
      And I wait 5000 ms
    Then I expect 'your_account' to be visible
    When I open "$base_url+$PDP_floorin_mohawk" url
      And I wait 10000 ms
    When I click 'pdp_add_to_cart_button'
    When I click 'pdp_continue_shopping_button'
    When I open "$base_url+$PDP_flooring_noMap_MSI" url
      And I wait 10000 ms
    When I click 'pdp_add_to_cart_button'
    Then I expect 'error_brand_popup' to be visible
    When I click 'error_brand_popup_ok_button'
    When I click 'minicart_button'
    Then I expect 'minicart_popup' to be visible
    When I click 'minicart_remove_button'
      And I wait 2000 ms
    Then I expect 'minicart_empty_text' to be visible


  Scenario: User_Profile_Wishlist
    Given I open "$base_url" url
    When I hover over 'menu_item_carpet'
    When I click 'menu_item_carpet'
      And I wait 3000 ms
    When I click 'add_to_wishlist_button'
    Then I expect current url contains '/account/login'
    When I type '$registerred_user.email' to 'email_form'
    When I type '$registerred_user.password' to 'pass_form_login'
    And I wait 3000 ms
    When I click 'captcha_login'
      And I wait 2000 ms
    When I click "sign_in_button"
    Then I expect 'your_account' to be visible
      And I wait 3000 ms
    Then I expect current url contains '/carpet/carpet-tile'
    When I click 'add_to_wishlist_button'
    When I click 'your_account'
      And I wait 3000 ms
    When I click 'my_account_my_wishlist_item_menu'
    Then I expect 'my_account_wishlist_item' to be visible
    When I click 'my_account_clear_wishlist_button'
      And I wait 3000 ms
    Then I expect text of 'my_account_wishlist_empty_text' to be equal 'Wishlist is empty!'
    When I click 'my_account_my_address_item_menu'
    Then I expect 'my_account_address_item' to be visible
    When I click 'my_account_orders_item_menu'
    Then I expect 'my_account_order_record' to be visible

  
  Scenario: SRP
    Given I open "$base_url" url
     And I wait 2000 ms
    When I click 'search_field' 
    When I type 'mohawk' chars to 'search_field'
      And I wait 2000 ms
    Then I expect 'search_overlay' to be visible
    When I click 'search_field' 
    When I press 'Space' key
    When I type 'laminate' chars to 'search_field'
    When I click 'search_button'
    Then I expect current url contains 'laminate'
    Then I expect 'filters_block' to be visible
    Then I expect number of elements in 'plp_tiles' collection to be equal '36'
    Then I expect 'pagination' to be visible
    Then I expect text of 'search_breadcrumbs' to contain 'Search Results For'
    Then I expect 'footer' to be visible
    When I click 'product_tile'
      And I wait 4000 ms
    Then I expect 'breadcrumbs' to be visible
    Then I expect 'pdp_title' to be visible
    Then I expect 'pdp_h1' to be visible
    Then I expect 'pdp_sku' to be visible



  Scenario: Rug_Flow
   Given I open "$base_url" url
    When I hover over 'menu_item_rugs'
    When I click 'menu_item_rugs'
    Then I expect current url contains '/carpet/rugs'
    Then I expect text of 'h1_plp' to contain 'RUGS'
    Then I expect 'filters_block' to be visible
    Then I expect 'breadcrumbs' to be visible
    Then I expect 'pagination' to be visible
    Then I expect 'footer' to be visible
    When I click 'plp_size_button'
    Then I expect 'plp_size_popup' to be visible
    When I click 'plp_size_option'
      And I wait 3000 ms
    Then I expect 'breadcrumbs' to be visible
    Then I expect 'pdp_title' to be visible
    Then I expect 'pdp_h1' to be visible
    Then I expect 'pdp_sku' to be visible
    Then I expect 'pdp_price' to be visible
    Then I expect 'google_reviews' to be visible
    Then I expect 'pdp_accessoies_tab' to be visible
    When I type "$qty_add" to 'pdp_qty_form'
    When I click 'pdp_add_to_cart_button'
      And I wait 5000 ms
    Then I expect 'pdp_cart_popup' to be visible
    When I click 'pdp_view_cart_button'
    Then I expect current url contains '/cart'
    When I click 'procced_to_checkout_button'
    Then I expect current url contains '/checkout/shipping'
    When I click 'email_form_guest'
    When I type '$user.randomEmail' to 'email_form_guest'
    When I type 'Test' to 'firstname_form'
    When I type 'Test' to 'lastname_form'
    When I type 'Test' to 'address_form'
    When I type '$region.colorado.zip' to 'zipcode_form'
    Then I expect 'value' property of 'region_id' to be equal '$region.colorado.code'
    Then I expect 'value' property of 'city_form ' to be equal '$region.colorado.city'
    Then I expect 'shipping_option_block' to be visible
    When I type '8185121214' to 'phone_form'
    When I click 'proceed_to_billing_button'
      And I wait 10000 ms
    Then I expect current url contains '/checkout/billing'
    Then I expect text of 'cart_subtotal' to contain 'TAX'
    When I type '$card_data.num' to 'cc_num'
        And I wait 2000 ms
    When I type '$card_data.mmyy' to 'cc_date'
        And I wait 2000 ms
    When I type '$card_data.cvv' to 'cc_cvv'
        And I wait 2000 ms
    When I hover over 'terms_button'
    When I click 'terms_button'
        And I wait 2000 ms
    Then I expect 'terms_popup' to be visible
    When I click 'terms_popup_close_button'
    Then I expect 'terms_popup' not to be visible
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

  
  
  Scenario: Quote_Form_No_map_user
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
      And I wait 3000 ms
    When I click 'captcha_login'
      And I wait 2000 ms
    When I click "sign_in_button"
      And I wait 4000 ms
    Then I expect 'your_account' to be visible
    Then I expect 'pdp_price' to be visible
    Then I expect 'pdp_price_badge' not to be visible



  




    


