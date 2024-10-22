Feature: qavajs framework

Scenario: Registration_admin_general

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
      And I wait 4000 ms
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
    Then I expect text of 'admin_search_results' contains 'General'

Scenario: Registration_Login
    Given I open "$base_url" url
    When I click 'signin_button'
    When I click 'create_account_button'
      And I wait 5000 ms
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
      And I wait 4000 ms
    When I hover over 'your_account'
      And I click 'dashboard_item'
    Then I expect current url contains '/my-account/dashboard'
    When I save text of 'customer_email' as 'customer_email_value'
    When I click 'my_account_logout'
      And I wait 5000 ms
    When I click 'signin_button'
    Then I expect 'login_popup' to be visible
    Then I expect 'social_login_google' to be visible
    When I type "$customer_email_value" to 'email_form'
    When I type '$registerred_user.password' to 'pass_form_login'
      And I wait 3000 ms
    When I click 'captcha_login'
      And I wait 2000 ms
    When I click "sign_in_button"
    Then I expect 'your_account' to be visible
    When I hover over 'your_account'
    When I click 'sign_out_button_item'
      And I wait 3000 ms
    Then I expect current url equals "$base_url"

Scenario: Checkout_Login
    Given I open "$base_url+$PDP_flooring_noMap_MSI" url
      And I wait 3000 ms
    When I click 'pdp_add_to_cart_button'
    When I click 'pdp_view_cart_button'
    When I click 'procced_to_checkout_button'
    Then I expect current url contains 'checkout/shipping'
    When I type "$registerred_user.email" to 'email_form_guest'
      And I wait 3000 ms
    Then I expect 'pass_form_login' to be visible
    When I type "$registerred_user.password" to 'pass_form_login'
    Then I click 'captcha_login'
      And I wait 3000 ms
    When I click 'sign_in_button'
      And I wait 3000 ms
    Then I expect 'saved_address_item' to be visible
    When I click 'homepage_button'
      And I wait 3000 ms
    When I click 'minicart_button'
      And I wait 3000 ms
    When I click 'minicart_remove_button'
      And I wait 3000 ms
    When I click 'minicart_close_button'
    When I hover over 'your_account'
    When I click 'sign_out_button_item'
      And I wait 3000 ms
    Then I expect current url equals "$base_url"






    