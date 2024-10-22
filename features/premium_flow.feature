Feature: qavajs framework

Scenario: Premium_flow
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
      And I wait 5000 ms
    When I click 'captcha_registration'
      And I wait 3000 ms
    When I click 'sign_up_button'
      And I wait 4000 ms
    Then I expect 'your_account' to be visible
    When I click 'become_premium_link'
      And I wait 4000 ms
    Then I expect current url contains '/premium-customers'
    Then I expect text of 'premium_cms_page_h1' contains 'PREMIUM ZNET CUSTOMER' 
    When I click 'premium_cms_sign_up_button'
    Then I expect current url contains '/checkout/billing'
    When I type 'Test' to 'firstname_form'
    When I type 'Test' to 'lastname_form'
    When I type 'Test' to 'address_form'
    When I type '$region.colorado.zip' to 'zipcode_form'
    Then I expect 'value' property of 'region_id' to be equal '$region.colorado.code'
    Then I expect 'value' property of 'city_form ' to be equal '$region.colorado.city'
    Then I type '512121210211' to 'phone_form'
    When I click 'premium_flow_checkout_save_button' 
      And I wait 7000 ms
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
    When I click 'homepage_button'
      And I wait 4000 ms
    When I open "$base_url+$PDP_flooring_quote_form" url
      And I wait 5000 ms
    Then I expect 'pdp_request_quote_button' not to be visible
    Then I expect 'pdp_add_to_cart_button' to be visible
    When I click 'get_sample_button'
      And I wait 3000 ms
    When I click 'minicart_procced_to_checkout_button'
    Then I expect current url contains '/checkout/shipping'
    When I click 'installation_checkbox_logged_in'
    When I click 'proceed_to_billing_button'
        And I wait 4000 ms
    Then I expect text of 'checkout_order_total' contains '0.00'
    Then I expect text of 'checkout_zero_subtotal_method' contains 'Zero'
    Then I click 'terms_checkbox'
    Then I click 'complete_order'
    When I wait until current url to contain '/checkout/success' (timeout: 60000)
    When I hover over 'your_account'
      And I click 'dashboard_item'
    Then I expect current url contains '/my-account/dashboard'
    When I save text of 'customer_email' as 'customer_email_value'
    When I click 'my_account_logout'
    Then I expect 'signin_button' to be visible
        And I wait 5000 ms
    When I open "$base_url+$admin_url" url
    When I type '$admin_user.email' to 'admin_username'
    When I type '$admin_user.password' to 'admin_password'
    When I click 'admin_signin_button'
    Then I expect current url contains 'admin_pwa/dashboard/dashboard/index/'
    When I click 'admin_menu_customers'
    When I click 'admin_menu_customers_all_customers'
        And I wait 7000 ms
    When I type "$customer_email_value" to 'admin_search_field'
      And I wait 2000 ms
    When I press 'Enter' key
      And I wait 2000 ms
    Then I expect '#{$customerEmail($customer_email_value)} in admin_search_results' to be visible
    Then I expect text of 'admin_search_results' contains 'Verified'
    





    


