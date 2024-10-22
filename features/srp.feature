Feature: qavajs framework

  Scenario: PLP_guest_general
    Given I open "$base_url" url
        And I wait 2000 ms
    When I click 'search_field' 
    When I type 'msi' chars to 'search_field'
        And I wait 2000 ms
    Then I expect 'search_overlay' to be visible
    When I click 'search_field' 
    When I press 'Space' key
    When I type 'vinyl' chars to 'search_field'
    When I click 'search_button'
    Then I expect current url contains 'vinyl'
    Then I expect 'filters_block' to be visible
    Then I expect number of elements in 'plp_tiles' collection to be equal '36'
    Then I expect 'breadcrumbs' to be visible
    Then I expect 'pagination' to be visible
    Then I expect 'plp_first_tile_sku' to be visible
    Then I expect 'plp_first_tile_collection_color_name' to be visible
    Then I expect 'plp_first_tile_product_name' to be visible
    Then I expect 'plp_first_tile_collection_name' to be visible
    Then I expect 'plp_first_tile_price_block' to be visible
    When I click 'plp_filter_waterproof_item'
        And I wait 4000 ms
    Then I expect number of elements in 'plp_tiles' collection to be equal '36'
    Then I expect 'breadcrumbs' to be visible
    Then I expect 'pagination' to be visible
    Then I expect 'plp_first_tile_sku' to be visible
    Then I expect 'plp_first_tile_collection_color_name' to be visible
    Then I expect 'plp_first_tile_product_name' to be visible
    Then I expect 'plp_first_tile_collection_name' to be visible
    Then I expect 'plp_first_tile_price_block' to be visible
    When I click 'add_sample_to_cart_plp'
        And I wait 3000 ms
    Then I expect 'minicart_popup' to be visible
    When I click 'minicart_close_button'
    When I click 'plp_first_tile_pickup_color_button'
    Then I expect 'plp_first_tile_pickup_color_popup' to be visible
    Then I expect text of 'plp_first_tile_pickup_color_popup_price' not contain 'Price In Cart'
    When I click 'plp_first_tile_pickup_color_popup_close_button'
    When I click 'add_to_wishlist_button'
    Then I expect current url contains 'account/login'
    When I click back button
        And I wait 4000 ms
    Then I expect current url contains 'vinyl' 
    When I click 'plp_pagination_second_page_button'
        And I wait 4000 ms
    Then I expect current url contains 'p=2'
    When I click 'plp_first_tile_pickup_color_button'
    When I click 'plp_first_tile_pickup_color_popup_first_item'
        And I wait 4000 ms
    When I click 'pdp_add_to_cart_button'
    Then I expect 'pdp_cart_popup' to be visible
    When I click 'pdp_continue_shopping_button'
    When I click 'search_field' 
    When I type 'mohawk' chars to 'search_field'
        And I wait 2000 ms
    Then I expect 'search_overlay' to be visible
    When I click 'search_field' 
    When I press 'Space' key
    When I type 'laminate' chars to 'search_field'
    When I press 'Enter' key
    Then I expect current url contains 'laminate'
    Then I expect 'filters_block' to be visible
    Then I expect number of elements in 'plp_tiles' collection to be equal '36'
    Then I expect 'breadcrumbs' to be visible
    Then I expect 'pagination' to be visible
    Then I expect 'plp_first_tile_sku' to be visible
    Then I expect 'plp_first_tile_collection_color_name' to be visible
    Then I expect 'plp_first_tile_product_name' to be visible
    Then I expect 'plp_first_tile_collection_name' to be visible
    Then I expect text of 'plp_first_tile_price_block' contains 'Price In Cart'
    When I click 'plp_first_tile_pickup_color_button'
    Then I expect 'plp_first_tile_pickup_color_popup' to be visible
    Then I expect text of 'plp_first_tile_pickup_color_popup_price' equals 'Price In Cart'
    When I click 'plp_first_tile_pickup_color_popup_close_button'
    Then I expect text of 'plp_first_tile_price_label' equals 'Price In Cart'
    When I click 'plp_tile_image'
        And I wait 4000 ms
    Then I expect current url not contain 'laminate'
    When I click 'pdp_add_to_cart_button'
        And I wait 3000 ms
    Then I expect 'error_brand_popup' to be visible
    When I click 'error_brand_popup_ok_button'
    When I click 'minicart_button'
    When I click 'minicart_remove_first_item'
        And I wait 4000 ms
    When I click 'minicart_remove_first_item'
        And I wait 4000 ms
    Then I expect 'minicart_empty_text' to be visible
    When I click 'minicart_close_button'
    When  I click 'pdp_add_to_cart_button'
    Then I expect 'pdp_cart_popup' to be visible
    When I click 'pdp_continue_shopping_button'
    When I click 'search_field' 
    When I type 'rugs' chars to 'search_field'
        And I wait 2000 ms
    Then I expect 'search_overlay' to be visible
    When I click 'search_field' 
    When I press 'Space' key
    When I type 'karastan' chars to 'search_field'
    When I click 'search_button'
    Then I expect current url contains 'karastan'
    Then I expect 'filters_block' to be visible
    Then I expect number of elements in 'plp_tiles' collection to be equal '36'
    Then I expect 'breadcrumbs' to be visible
    Then I expect 'pagination' to be visible
    Then I expect 'plp_first_tile_sku' to be visible
    Then I expect 'plp_first_tile_collection_color_name' to be visible
    Then I expect 'plp_first_tile_product_name' to be visible
    Then I expect 'plp_first_tile_collection_name' to be visible
    Then I expect 'plp_first_tile_price_block' to be visible
    When I click 'plp_pagination_second_page_button'
        And I wait 4000 ms
    Then I expect current url contains '?p=2'
    When I click 'plp_first_tile_product_name'
        And I wait 10000 ms
    When I click 'pdp_add_to_cart_button'
        And I wait 10000 ms
    Then I expect 'pdp_cart_popup' to be visible
    When I click 'pdp_continue_shopping_button'
    When I click 'search_field' 
    When I type 'coretec ' chars to 'search_field'
        And I wait 2000 ms
    Then I expect 'search_overlay' to be visible
    When I click 'search_field' 
    When I type 'kingston' chars to 'search_field'
    When I press 'Enter' key
    Then I expect current url contains 'kingston'
    Then I expect 'filters_block' to be visible
    Then I expect number of elements in 'plp_tiles' collection to be equal '6'
    Then I expect 'breadcrumbs' to be visible
    Then I expect 'pagination' to be visible
    Then I expect 'plp_first_tile_sku' to be visible
    Then I expect 'plp_first_tile_collection_color_name' to be visible
    Then I expect 'plp_first_tile_product_name' to be visible
    Then I expect 'plp_first_tile_collection_name' to be visible
    Then I expect text of 'plp_first_tile_price_block' contains 'Price In Quote'
    When I click 'plp_first_tile_pickup_color_button'
    Then I expect 'plp_first_tile_pickup_color_popup' to be visible
    Then I expect text of 'plp_first_tile_pickup_color_popup_price' equals 'Price In Quote'
    When I click 'plp_first_tile_pickup_color_popup_close_button'
    Then I expect text of 'plp_first_tile_price_label' equals 'Price In Quote'
    When I click 'plp_tile_image'
        And I wait 6000 ms
    When I click 'get_sample_button'
        And I wait 3000 ms
    Then I expect 'error_brand_popup' to be visible
    When I click 'error_brand_popup_ok_button'
    When I click 'minicart_button'
    When I click 'minicart_remove_first_item'
        And I wait 4000 ms
    When I click 'minicart_remove_first_item'
        And I wait 4000 ms
    Then I expect 'minicart_empty_text' to be visible
    When I click 'minicart_close_button'
    When I click 'get_sample_button'
    Then I expect 'minicart_popup' to be visible

 
  Scenario: PLP_NoMap
    Given I open "$base_url" url
        And I wait 3000 ms
    When I click 'signin_button'
        And I wait 2000 ms
    When I type '$nomap_user.email' to 'email_form'
    When I type '$nomap_user.password' to 'pass_form_login'
        And I wait 3000 ms
    When I click 'captcha_login'
        And I wait 2000 ms
    When I click "sign_in_button"
    Then I expect 'your_account' to be visible
    When I click 'search_field' 
    When I type 'coretec ' chars to 'search_field'
        And I wait 2000 ms
    Then I expect 'search_overlay' to be visible
    When I click 'search_field' 
    When I type 'kingston' chars to 'search_field'
    When I press 'Enter' key
    Then I expect current url contains 'kingston'
    Then I expect 'filters_block' to be visible
    Then I expect number of elements in 'plp_tiles' collection to be equal '6'
    Then I expect 'breadcrumbs' to be visible
    Then I expect 'pagination' to be visible
    Then I expect 'plp_first_tile_sku' to be visible
    Then I expect 'plp_first_tile_collection_color_name' to be visible
    Then I expect 'plp_first_tile_product_name' to be visible
    Then I expect 'plp_first_tile_collection_name' to be visible
    Then I expect text of 'plp_first_tile_price_block' contains 'Price In Quote'
    When I click 'plp_first_tile_pickup_color_button'
    Then I expect 'plp_first_tile_pickup_color_popup' to be visible
    Then I expect text of 'plp_first_tile_pickup_color_popup_price' equals 'Price In Quote'
    When I click 'plp_first_tile_pickup_color_popup_close_button'
    Then I expect text of 'plp_first_tile_price_label' equals 'Price In Quote'
    When I click 'add_sample_to_cart_plp'
        And I wait 6000 ms
    Then I expect 'minicart_popup' to be visible
    When I click 'minicart_close_button'
        And I wait 3000 ms
    When I clear 'search_field'
    When I click 'search_field'
        And I wait 3000 ms
    When I type 'mohawk' chars to 'search_field'
        And I wait 2000 ms
    Then I expect 'search_overlay' to be visible
    When I click 'search_field' 
    When I press 'Space' key
    When I type 'laminate' chars to 'search_field'
    When I press 'Enter' key
    Then I expect current url contains 'laminate'
    Then I expect 'filters_block' to be visible
    Then I expect number of elements in 'plp_tiles' collection to be equal '36'
    Then I expect 'breadcrumbs' to be visible
    Then I expect 'pagination' to be visible
    Then I expect 'plp_first_tile_sku' to be visible
    Then I expect 'plp_first_tile_collection_color_name' to be visible
    Then I expect 'plp_first_tile_product_name' to be visible
    Then I expect 'plp_first_tile_collection_name' to be visible
    Then I expect text of 'plp_first_tile_price_block' contains 'Price In Cart'
    When I click 'plp_first_tile_pickup_color_button'
    Then I expect 'plp_first_tile_pickup_color_popup' to be visible
    Then I expect text of 'plp_first_tile_pickup_color_popup_price' equals 'Price In Cart'
    When I click 'plp_first_tile_pickup_color_popup_close_button'
    Then I expect text of 'plp_first_tile_price_label' equals 'Price In Cart'
    When I click 'plp_tile_image'
        And I wait 4000 ms
    Then I expect current url not contain 'laminate'
    When I click 'pdp_add_to_cart_button'
    Then I expect 'error_brand_popup' to be visible
    When I click 'error_brand_popup_ok_button'
        And I wait 3000 ms
    When I click 'minicart_button'
    When I click 'minicart_remove_first_item'
        And I wait 3000 ms
    When I click 'minicart_close_button'
        And I wait 3000 ms
    When I click 'pdp_add_to_cart_button'
        And I wait 3000 ms
    Then I expect 'pdp_cart_popup' to be visible
    When I click 'pdp_continue_shopping_button'
        And I wait 3000 ms
    When I click 'search_field' 
    When I type 'rugs' chars to 'search_field'
        And I wait 2000 ms
    Then I expect 'search_overlay' to be visible
    When I click 'search_field' 
    When I press 'Space' key
    When I type 'karastan' chars to 'search_field'
    When I click 'search_button'
    Then I expect current url contains 'karastan'
    Then I expect 'filters_block' to be visible
    Then I expect number of elements in 'plp_tiles' collection to be equal '36'
    Then I expect 'breadcrumbs' to be visible
    Then I expect 'pagination' to be visible
    Then I expect 'plp_first_tile_sku' to be visible
    Then I expect 'plp_first_tile_collection_color_name' to be visible
    Then I expect 'plp_first_tile_product_name' to be visible
    Then I expect 'plp_first_tile_collection_name' to be visible
    Then I expect 'plp_first_tile_price_block' to be visible
    When I click 'plp_pagination_second_page_button'
        And I wait 4000 ms
    Then I expect current url contains '?p=2'
    When I click 'plp_first_tile_product_name'
        And I wait 10000 ms
    When I click 'pdp_add_to_cart_button'
        And I wait 10000 ms
    Then I expect 'pdp_cart_popup' to be visible
    When I click 'pdp_continue_shopping_button'
    When I click 'search_field' 
    When I type 'msi' chars to 'search_field'
        And I wait 2000 ms
    Then I expect 'search_overlay' to be visible
    When I click 'search_field' 
    When I press 'Space' key
    When I type 'vinyl' chars to 'search_field'
    When I click 'search_button'
    Then I expect current url contains 'vinyl'
    Then I expect 'filters_block' to be visible
    Then I expect number of elements in 'plp_tiles' collection to be equal '36'
    Then I expect 'breadcrumbs' to be visible
    Then I expect 'pagination' to be visible
    Then I expect 'plp_first_tile_sku' to be visible
    Then I expect 'plp_first_tile_collection_color_name' to be visible
    Then I expect 'plp_first_tile_product_name' to be visible
    Then I expect 'plp_first_tile_collection_name' to be visible
    Then I expect 'plp_first_tile_price_block' to be visible
    When I click 'plp_filter_waterproof_item'
        And I wait 4000 ms
    Then I expect number of elements in 'plp_tiles' collection to be equal '36'
    Then I expect 'breadcrumbs' to be visible
    Then I expect 'pagination' to be visible
    Then I expect 'plp_first_tile_sku' to be visible
    Then I expect 'plp_first_tile_collection_color_name' to be visible
    Then I expect 'plp_first_tile_product_name' to be visible
    Then I expect 'plp_first_tile_collection_name' to be visible
    Then I expect 'plp_first_tile_price_block' to be visible
    When I click 'add_sample_to_cart_plp'
        And I wait 3000 ms
    Then I expect 'error_brand_popup' to be visible
    When I click 'error_brand_popup_ok_button'
        And I wait 3000 ms
    When I click 'minicart_button'
    When I click 'minicart_remove_first_item'
        And I wait 4000 ms
    When I click 'minicart_remove_first_item'
        And I wait 4000 ms
    Then I expect 'minicart_empty_text' to be visible
    When I click 'minicart_close_button'
    When I click 'add_sample_to_cart_plp'
        And I wait 4000 ms
    Then I expect 'minicart_popup' to be visible
    When I click 'minicart_view_cart_button'
        And I wait 4000 ms
    When I click 'cart_clear_shopping_cart'
        And I wait 7000 ms


@test
   Scenario: SRP_Verified
    Given I open "$base_url" url
        And I wait 3000 ms
    When I click 'signin_button'
        And I wait 2000 ms
    When I type '$registerred_user.email' to 'email_form'
    When I type '$registerred_user.password' to 'pass_form_login'
        And I wait 3000 ms
    When I click 'captcha_login'
        And I wait 2000 ms
    When I click "sign_in_button"
    Then I expect 'your_account' to be visible
    When I click 'search_field' 
    When I type 'VTRSUNSET7X48-4.4MM-12MIL' chars to 'search_field'
        And I wait 2000 ms
    Then I expect 'search_overlay' to be visible
    When I press 'Enter' key
    Then I expect current url contains 'VTRSUNSET7X48-4.4MM-12MIL'
    Then I expect 'filters_block' to be visible
    Then I expect number of elements in 'plp_tiles' collection to be equal '1'
    Then I expect 'breadcrumbs' to be visible
    Then I expect 'pagination' to be visible
    Then I expect 'plp_first_tile_sku' to be visible
    Then I expect 'plp_first_tile_collection_color_name' to be visible
    Then I expect 'plp_first_tile_product_name' to be visible
    Then I expect 'plp_first_tile_collection_name' to be visible
    Then I expect 'plp_first_tile_price_block' to be visible
    When I click 'add_sample_to_cart_plp'
        And I wait 3000 ms
    Then I expect 'minicart_popup' to be visible
    When I click 'minicart_close_button'
    When I click 'plp_first_tile_pickup_color_button'
    Then I expect 'plp_first_tile_pickup_color_popup' to be visible
    Then I expect text of 'plp_first_tile_pickup_color_popup_price' not contain 'Price In Cart'
    When I click 'plp_first_tile_pickup_color_popup_close_button'
        And I wait 3000 ms
    When I clear 'search_field' 
    When I click 'search_field'
        And I wait 3000 ms
    When I type 'rugs' chars to 'search_field'
        And I wait 2000 ms
    Then I expect 'search_overlay' to be visible
    When I click 'search_field' 
    When I press 'Space' key
    When I type 'karastan' chars to 'search_field'
    When I click 'search_button'
    Then I expect current url contains 'karastan'
    Then I expect 'filters_block' to be visible
    Then I expect number of elements in 'plp_tiles' collection to be equal '36'
    Then I expect 'breadcrumbs' to be visible
    Then I expect 'pagination' to be visible
    Then I expect 'plp_first_tile_sku' to be visible
    Then I expect 'plp_first_tile_collection_color_name' to be visible
    Then I expect 'plp_first_tile_product_name' to be visible
    Then I expect 'plp_first_tile_collection_name' to be visible
    Then I expect 'plp_first_tile_price_block' to be visible
    When I click 'plp_pagination_second_page_button'
        And I wait 4000 ms
    Then I expect current url contains '?p=2'
    When I click 'add_to_wishlist_button'
        And I wait 3000 ms
    When I click 'plp_first_tile_product_name'
        And I wait 10000 ms
    When I click 'pdp_add_to_cart_button'
        And I wait 3000 ms
    Then I expect 'error_brand_popup' to be visible
    When I click 'error_brand_popup_ok_button'
        And I wait 3000 ms
    When I click 'minicart_button'
    When I click 'minicart_remove_first_item'
        And I wait 4000 ms
    When I click 'minicart_close_button'
        And I wait 3000 ms
    When I click 'pdp_add_to_cart_button'
    Then I expect 'pdp_cart_popup' to be visible
    When I click 'pdp_continue_shopping_button'
        And I wait 3000 ms
    When I click 'search_field' 
    When I type 'coretec ' chars to 'search_field'
        And I wait 2000 ms
    Then I expect 'search_overlay' to be visible
    When I click 'search_field' 
    When I type 'waterproof' chars to 'search_field'
    When I press 'Enter' key
        And I wait 6000 ms
    Then I expect current url contains 'waterproof'
    Then I expect 'filters_block' to be visible
    Then I expect number of elements in 'plp_tiles' collection to be equal '36'
    Then I expect 'breadcrumbs' to be visible
    Then I expect 'pagination' to be visible
    Then I expect 'plp_first_tile_sku' to be visible
    Then I expect 'plp_first_tile_collection_color_name' to be visible
    Then I expect 'plp_first_tile_product_name' to be visible
    Then I expect 'plp_first_tile_collection_name' to be visible
    Then I expect text of 'plp_first_tile_price_block' equals 'Price in Cart'
    When I click 'plp_first_tile_pickup_color_button'
    Then I expect 'plp_first_tile_pickup_color_popup' to be visible
    Then I expect text of 'plp_first_tile_pickup_color_popup_price' equals 'Price In Quote'
    When I click 'plp_first_tile_pickup_color_popup_close_button'
    Then I expect text of 'plp_first_tile_price_label' equals 'Price in Cart'
    When I click 'plp_tile_image'
        And I wait 6000 ms
    When I click 'get_sample_button'
        And I wait 3000 ms
    Then I expect 'error_brand_popup' to be visible
    When I click 'error_brand_popup_ok_button'
    When I click 'minicart_button'
    When I click 'minicart_remove_first_item'
        And I wait 3000 ms
    When I click 'minicart_close_button'
        And I wait 3000 ms
    When I click 'get_sample_button'
    Then I expect 'minicart_popup' to be visible
    When I click 'minicart_close_button'
        And I wait 3000 ms
    When I click 'search_field' 
    When I type 'coretec ' chars to 'search_field'
        And I wait 2000 ms
    Then I expect 'search_overlay' to be visible
    When I click 'search_field' 
    When I type 'accessories' chars to 'search_field'
        And I wait 3000 ms
    When I click 'search_overlay_all_accessories_button'
        And I wait 3000 ms
    Then I expect number of elements in 'plp_tiles' collection to be equal '36'
    Then I expect 'breadcrumbs' to be visible
    Then I expect 'pagination' to be visible
    Then I expect 'plp_accessory_first_tile_sku' to be visible
    Then I expect 'plp_accessory_first_tile_item_name' to be visible
    Then I expect 'plp_accessory_first_tile_flooring_type' to be visible
    Then I expect 'plp_accessory_first_tile_brand_name' to be visible
    Then I expect text of 'plp_first_tile_price_block' not contain 'Price In Cart'
    Then I expect text of 'plp_first_tile_price_block' not contain 'Price In Quote'
    When I click 'plp_tile_image'
        And I wait 6000 ms
    When I click 'pdp_add_to_cart_button'
        And I wait 3000 ms
    When I click 'pdp_view_cart_button'
        And I wait 6000 ms
    When I click 'cart_clear_shopping_cart'
        And I wait 7000 ms
    



    


    

