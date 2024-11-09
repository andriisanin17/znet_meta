import { $, $$, Component, NativeSelector } from "@qavajs/po-playwright";
export default class App {
  //General
  homepage_button = $(".Header-LogoWrapper_isVisible")
  main_banner = $(".Slider.SliderWidget.Znet.Home.Slider")
  copyright = $(".Footer-Copyright")
  footer = $(".Footer-Content")
  logo = $(".Logo")
  signin_button = $(".Header-SignIn")
  your_account = $(".Header-MyAccountLink")
  minicart_button = $(".Header-MinicartButtonWrapper")
  minicart_procced_to_checkout_button = $(".CartOverlay-CheckoutButton")
  minicart_popup = $(".Overlay_isVisible.CartOverlay.CartOverlay_isVisible")
  breadcrumbs = $(".Breadcrumbs-List")
  minicart_view_cart_button = $(".CartOverlay-CartButton")
  procced_to_checkout_button = $(".CartPage-CheckoutButton.Button")
  minicart_remove_button = $("#RemoveItem")
  notification_message = $(".Notification_type_success")
  minicart_empty_text = $(".CartOverlay-Empty")
  minicart_close_button = $(".CartOverlay-TitleAndCloseWrapper > svg")
  minicart_counter = $(".Header-MinicartButtonWrapper > div")
  minicart_remove_first_item = $(".CartOverlay-Items > div:nth-child(1) > span > figure > figcaption > div.CartItem-DescriptionDeleteWrapper > button")
  minicart_remove_third_item = $(".CartOverlay-Items > div:nth-child(3) > span > figure > figcaption > div.CartItem-DescriptionDeleteWrapper > button")
  minicart_first_item = $(".Overlay.Overlay_isVisible.CartOverlay.CartOverlay_isVisible > div.CartOverlay-Items > div > span > figure > a")
  error_brand_popup = $(".BrandWarningPopUp_isVisible")
  error_brand_popup_ok_button = $(".BrandWarningPopUp-OkButton")
  

  //Admin
  admin_username = $("#username")
  admin_password = $("#login")
  admin_signin_button = $(".action-login")
  admin_menu_sales = $("#menu-magento-sales-sales")
  admin_menu_sales_orders = $("li.item-sales-order.level-2")
  admin_search_field = $("#container > div > div.admin__data-grid-header > div:nth-child(1) > div.data-grid-search-control-wrap > #fulltext")
  admin_search_results = $$('#container > div > div.admin__data-grid-wrap > table')
  admin_menu_customers = $("#menu-magento-customer-customer")
  admin_menu_customers_all_customers = $(".item-customer-manage.level-1")

  
  //Login-Registration-Profile
  login_popup = $(".Popup-Content")
  email_form = $("#email")
  pass_form_login = $("#password")
  captcha_login = $(NativeSelector((page: any) => page.frameLocator('#GOOGLE_CAPTCHA_LOGIN_BTN iframe[title=reCAPTCHA]').locator('.recaptcha-checkbox')))
  social_login_google = $(".Button-Social_type_google")
  sign_in_button = $("div.MyAccountOverlay-Buttons > button")
  create_account_button = $("div.LoginAccount-CreateAccountWrapper > button")
  confirm_pass_registration_form = $("#confirm_password")
  captcha_registration = $(NativeSelector((page: any) => page.frameLocator('#GOOGLE_CAPTCHA_REGISTER_BTN iframe[title=reCAPTCHA]').locator('.recaptcha-checkbox')))
  sign_up_button = $("div.MyAccountOverlay-Buttons > button")
  dashboard_item = $("#root > div > section > header > nav > div > div.Header-Button.Header-Button_type_minicart > div > ul > li:nth-child(1) > button")
  my_orders_item = $("#root > div > section > header > nav > div > div.Header-Button.Header-Button_type_minicart > div > ul > li:nth-child(3) > button")
  first_order_row = $("tbody > tr:nth-child(1)")
  sign_out_button_item = $(".Header-Button.Header-Button_type_minicart > div > ul > li:nth-child(6) > button")
  my_account_logout = $(" li:nth-child(7) > button")
  my_account_my_wishlist_item_menu = $("article > div > ul > li:nth-child(5) > button")
  my_account_wishlist_item = $(".MyAccountMyWishlist-Products > li:nth-child(1)")
  my_account_clear_wishlist_button = $(".MyAccountMyWishlist-ClearWishlistButton")
  my_account_wishlist_empty_text = $("#root > div > main > section > div > div > div > div:nth-child(1)") 
  my_account_my_address_item_menu = $("article > div > ul > li:nth-child(2) > button")
  my_account_orders_item_menu = $("article > div > ul > li:nth-child(3) > button")
  my_account_address_item = $("section > div > div > div > div:nth-child(2)")
  my_account_order_record = $("tbody > tr:nth-child(1)")
  customer_email = $(".MyAccountDashboard-CustomerData > div > div > table > tbody > tr:nth-child(3) > td")

  //PLP
  menu_item_vinyl = $("#root > div > section.Header-Wrapper > header > div.Menu-MenuWrapper > nav > ul > li:nth-child(3)")
  menu_sub_item_msi_vinyl = $("#root > div > section.Header-Wrapper > header > div.Menu-MenuWrapper > nav > ul > li:nth-child(3) > ul > li:nth-child(5)") 
  menu_sum_item_mohawk_vinyl = $("#root > div > section > header > div.Menu-MenuWrapper > nav > ul > li:nth-child(3) > ul > li:nth-child(1)")
  menu_item_rugs = $("div.Menu-MenuWrapper > nav > ul > li:nth-child(6)")
  menu_sub_item_karastan_rugs = $("div.Menu-MenuWrapper > nav > ul > li:nth-child(6) > ul > li:nth-child(5)")
  menu_item_carpet = $("div.Menu-MenuWrapper > nav > ul > li:nth-child(7)")
  h1_plp = $(".CategoryDetails-Description")
  filters_block = $(".Overlay.CategoryFilterOverlay")
  plp_tiles = $(".ProductCard_block")
  plp_tile_image = $("li:nth-child(1) > div.ProductCard-FigureReview")
  pagination = $(".CategoryPagination_isSearchSpring")
  product_tile = $("#root > div > main > section > div > div.CategoryPage-MainSectionWrapper > div.CategoryProductList-ProductListWrapper > ul > li:nth-child(1)")
  add_sample_to_cart_plp = $("#root > div > main > section > div > div.CategoryPage-MainSectionWrapper > div.CategoryProductList-ProductListWrapper > ul > li:nth-child(1) > div.ProductCard-Content > div.ProductCard-SampleAndWishlistWrapper > button")
  add_to_wishlist_button = $("li:nth-child(17) > div.ProductCard-Content > div.ProductCard-SampleAndWishlistWrapper > div > button > div")
  plp_size_button = $("li:nth-child(14) > div.ProductCard-FigureReview > div")
  plp_size_popup = $("div.ProductSwatchPopup-Popup.ProductSwatchPopup-Popup_isOpen")
  plp_size_option = $("div.ProductSwatchPopup-Popup.ProductSwatchPopup-Popup_isOpen > div > a:nth-child(2) > div")
  plp_first_tile_sku = $("li:nth-child(1) > div.ProductCard-Content > a > div > div > div > div.ProductCard-Information-CollectionNameSkuWrapper > span")
  plp_accessory_first_tile_sku = $("li:nth-child(1) > div.ProductCard-Content > a > div > div > div > div.ProductCard-Information-NameSkuWrapper > span")
  plp_first_tile_collection_color_name = $("li:nth-child(1) > div.ProductCard-Content > a > div > div > div > div.ProductCard-Information-CollectionNameSkuWrapper > div")

  plp_accessory_first_tile_item_name = $("li:nth-child(1) > div.ProductCard-Content > a > div > div > div > div.ProductCard-Information-NameSkuWrapper > div")
  plp_accessory_first_tile_flooring_type = $("li:nth-child(1) > div.ProductCard-Content > a > div > div > div > div.ProductCard-Information-FlooringType")
  plp_accessory_first_tile_brand_name = $("li:nth-child(1) > div.ProductCard-Content > a > div > div > div > div.ProductCard-Information-Brand")
  plp_first_tile_product_name = $("li:nth-child(1) > div.ProductCard-Content > a > div > div > div > div.ProductCard-Information-ProductNameString")
  plp_first_tile_collection_name = $("li:nth-child(1) > div.ProductCard-Content > a > div > div > div > div.ProductCard-Information-ProductNameString-Collection")
  plp_first_tile_price_block = $("li:nth-child(1) > div.ProductCard-Content > div.ProductCard-PriceWrapper")
  plp_first_tile_pickup_color_button = $("li:nth-child(1) > div.ProductCard-FigureReview > div")
  plp_first_tile_pickup_color_popup = $(".ProductCard-Content > div.ProductSwatchPopup-Popup.ProductSwatchPopup-Popup_isOpen")
  plp_first_tile_pickup_color_popup_first_item = $(".ProductCard-Content > div.ProductSwatchPopup-Popup.ProductSwatchPopup-Popup_isOpen > div > div.ProductSwatchPopup-Content > a:nth-child(1) > div")
  plp_first_tile_pickup_color_popup_first_rug_item = $(".CategoryProductList-ProductListWrapper > ul > li:nth-child(1) > div.ProductCard-Content > div.ProductSwatchPopup-Popup.ProductSwatchPopup-Popup_isOpen > div > a:nth-child(2) > div")
  plp_first_tile_pickup_color_popup_price = $(".ProductCard-Content > div.ProductSwatchPopup-Popup.ProductSwatchPopup-Popup_isOpen > div > div.ProductSwatchPopup-Content > a:nth-child(2) > div > div.ProductSwatchPopup-SwatchItemInformation > div")
  plp_first_tile_pickup_color_popup_close_button = $(".ProductCard-Content > div.ProductSwatchPopup-Popup.ProductSwatchPopup-Popup_isOpen > div > div.ProductSwatchPopup-HeaderWrapper > label")
  plp_pagination_second_page_button = $(".CategoryPage-Miscellaneous_isSearchSpring.CategoryPage-Miscellaneous_isFooter > nav > ul > li:nth-child(3)")
  plp_first_tile_price_label = $(" li:nth-child(1) > div.ProductCard-Content > div.ProductCard-PriceWrapper.ProductCard-PriceWrapper_isLineThrough > div.ProductCard-PriceBadgeWrapper > p")
  plp_filter_waterproof_item = $(".CategoryFilterOverlay-Attributes > div > article:nth-child(1) > div > div > div > div:nth-child(1)")

  //SRP
  search_field = $("#search-field")
  search_button = $(".SearchField-SubmitButton")
  search_overlay = $(".SearchSpringOverlay.SearchSpringOverlay_isVisible")
  search_breadcrumbs = $("section.Breadcrumbs > div > nav > ul > li:nth-child(2)")
  search_results = $$('table row')
  search_overlay_all_accessories_button = $(".SearchField-Wrapper > div > article > div:nth-child(2) > div > div > a")



  //PDP
  pdp_title = $(".ProductActions-BrandTitle")
  pdp_h1 = $(".ProductPage-ProductTitle")
  pdp_sku = $(".ProductActions-Sku")
  pdp_price = $(".ProductPriceLogicBase-Price")
  pdp_pick_color = $(".ProductActions-ColorPicker")
  pdp_pick_color_dropdown = $("div.ProductActions-SwatchItemInformation")
  pdp_pick_color_dropdown_expanded = $(".ProductSwatchPopup-Popup_isOpen.ProductSwatchPopup-Popup_isPDP")
  pdp_pick_color_dropdown_first_option = $(" div.ProductSwatchPopup-Content > a:nth-child(1) > div")
  pdp_calculator = $(".ProductActions-CalculatorPreview")
  pdp_accessoies_tab = $("#ProductTabs > ul > li:nth-child(2) > button")
  pdp_flooring_tab = $("#ProductTabs > ul > li:nth-child(1) > button")
  pdp_add_to_cart_button = $(".ProductActions-AddToCartAndAccessoryWrapper")
  pdp_accessoies_filters = $(".ProductLinks-FiltersWrapper")
  pdp_additional_section = $(".ProductActions-AdditionalSection")
  pdp_details = $(".ProductDetails-Wrapper")
  pdp_qty_form = $("#AddToCartQty")
  pdp_qty_add_button = $("div.Field.Field_type_number.Field_isValid.ProductActions-AddToCartQty > button.Field-AddBtn")
  pdp_cart_popup = $(".Popup-Content")
  cart_popup_qty = $(".CartPopup-Quantity")
  pdp_request_price_button = $("Button.ProductActions-RequestForm")
  pdp_request_price_popup = $(".Popup_isVisible.PriceFormPopup.PriceFormPopup_isVisible > div")
  pdp_request_quote_popup = $("div.Popup.Popup_isVisible.QuoteFormPopup.QuoteFormPopup_isVisible")
  pdp_request_price_form_qty = $("#AddToCartQty.ProductPreviewAndQuantity-QtyInput")
  firstn_form_price_req = $("#firstName")
  lastn_form_price_req = $("#lastName")
  phone_form_price_req = $("#telephone")
  street_form_price_req = $("#address")
  price_form_state_dropdown = $("#PRICE_REQUEST_FORM > div.PriceRequestForm.FieldForm > div > div.Field.Field_type_select.Field_hasError.PriceRequestForm-State > div")
  price_form_state_colorado = $("#o13")
  submit_price_req_button = $(".PriceRequestForm-ButtonSubmit")
  pdp_view_cart_button = $(".CartPopup-CartButton")
  pdp_continue_shopping_button = $(".CartPopup-ContinueButton")
  pdp_price_badge = $(".PriceBadge-PriceBadge")
  pdp_request_quote_button = $("Button.ProductActions-RequestQuote")
  quote_form_state_dropdown = $("#QUOTE_FORM > div.QuoteForm.FieldForm > div > div.Field.Field_type_select.Field_isValid.QUOTE_FORM-State > div")
  quote_form_state_colorado = $("#o13")
  submit_quote_req_button = $(".Button.QuoteForm-ButtonSubmit")
  get_sample_popup = $(".QuoteForm-QuoteFormThanks_isVisible")
  add_sample_button_quote_form = $(".AddSampleToCart-QuoteBtn")
  add_to_cart_accessory_from_accessories_tab = $("li:nth-child(1) > div.ProductCard-Content.ProductCard-Content_isCrossSell > button")
  qty_in_accessories_tab = $(".ProductCard-AccessoryAddToCartWrapper_isAddToCartVisible")
  get_sample_button = $("div.ProductActions-GetSample > button")
  accessory_tile_in_cart_popup = $("div.CarouselScroll.CarouselScroll_dynamicItems > div > div > div.CarouselScrollItem.CarouselScrollItem_isActive")
  pdp_cart_popup_second_tile_link_to_pdp = $(".CarouselScroll.CarouselScroll_dynamicItems > div > div > div:nth-child(2) > li > div:nth-child(1) > a")
  pdp_related_item_tile = $(".ProductLinks-Upsell > li:nth-child(1)")
  pdp_square_calculator_button = $(".ProductActions-CalculatorPreviewButton")
  pdp_square_calculator_popup = $(".Calculator-Wrapper")
  pdp_square_calculator_popup_close_button = $(".Popup-CloseBtn")
  pdp_email_button = $(".RequestQuoteButtons > div > button:nth-child(1)")
  pdp_request_form_close_button = $(".Popup-CloseBtn")
  pdp_sms_button = $(".RequestQuoteButtons > div > button:nth-child(2)")
  pdp_sms_popup = $(".Popup-Content")
  pdp_sms_popup_close_button = $(".Popup-CloseBtn")
  pdp_phone_call_button = $(".RequestQuoteButtons > div > button:nth-child(2)")
  pdp_phone_call_popup = $(".Popup-Content")
  pdp_phone_call_popup_close_button = $(".Popup-CloseBtn")
  pdp_cart_popup_suggested_filter = $(".Popup.Popup_isVisible.CartPopup.CartPopup_isVisible > div > div > div.CartPopup-NeededAccessories > section > div > div.ProductLinks-FiltersAndTitleWrapper > div > button.ProductLinks-FilterButton.ProductLinks-FilterButton_isActive")
  pdp_cart_popup_add_to_cart_accessory = $(".CarouselScrollItem.CarouselScrollItem_isActive > li > div:nth-child(2) > div > button")
  pdp_text_add_to_cart_to_see_final_price = $(".ProductPriceLogicBase-AddToCartForPrice_isMap")
  pdp_rug_sizes_block = $(".ProductConfigurableAttributes-SwatchPickerWrapper")
  pdp_description = $(".ProductDescription-Description")
  pdp_rug_second_size = $(".ProductConfigurableAttributes-SwatchPickerWrapper > div > a:nth-child(2)")
  pdp_sample_buy_this_product = $(".ProductActions-LinkToParent > a")
  pdp_sample_view_full_product_item = $(".ProductActions-FullLink")
  pdp_accessories_total_price = $(".ProductActions-TotalWrapper.ProductActions-TotalWrapper_isHidden_null > div")
  pdp_add_to_wishlist_button = $(".ProductWishlistButton-Button-Wishlist")
  




  //Cart
  cart_tile = $(".CartPage-Items > div > span > figure > a")
  cart_item_coverage = $(".CartItem-Coverage.CartItem-Coverage_isCart")
  cart_item_unit_price = $("div.CartItem-CoverageAndPrice.CartItem-CoverageAndPrice_isCart > div.CartItem-UnitPriceWrapper > dd")
  cart_item_weight = $(".CartItem-Weight_isCart")
  google_reviews = $(".ElfsightReviews-Reviews")
  cart_add_qty_button = $("div.CartItem-QuantityWrapper > div.ProductCard-AccessoryAddToCartWrapper.ProductCard-AccessoryAddToCartWrapper_isAddToCartVisible.ProductCard-AccessoryAddToCartWrapper_isCartPopup_undefined > div > button.Field-AddBtn")
  cart_add_qty_button_first_item = $("div:nth-child(1) > span > figure > div > div.CartItem-QuantityWrapper > div.ProductCard-AccessoryAddToCartWrapper.ProductCard-AccessoryAddToCartWrapper_isAddToCartVisible.ProductCard-AccessoryAddToCartWrapper_isCartPopup_undefined > div > button.Field-AddBtn")
  cart_qty_value = $("#AddToCartQty-22921")
  cart_qty_value_first_item = $("#AddToCartQty-29617")
  cart_proceed_to_checkout_button = $(".CartPage-CheckoutButton")
  cart_clear_shopping_cart = $(".CartPage-ClearCartAction")
  cart_accessory_button = $(".CartItem-AccessoriesButton")
  cart_accessory_popup = $(".Popup-Content")
  cart_accessory_popup_suggested_filter_button = $(".ProductLinks-FiltersAndTitleWrapper > div > button:nth-child(1)")
  cart_accessory_popup_add_to_cart_button = $(".CarouselScrollItem.CarouselScrollItem_isActive > li > div:nth-child(2) > div > button")
  cart_accessory_popup_close_button = $(".Popup-CloseBtn")
  cart_tiles = $(".CartPage-Static > div.CartPage-Items > div")
  cart_continue_shopping_button = $(".CartPage-ContinueShoppingAction")
  cart_first_item_link = $(".CartPage-Items > div:nth-child(1) > span > figure > a")
  cart_brand_error = $(".CartPage-Warning")



  //Checkout
  email_form_guest = $("#guest_email")
  firstname_form = $("#firstname")
  lastname_form = $("#lastname")
  address_form = $("#street0")
  zipcode_form = $("#postcode")
  city_form = $("#city")
  region_id = $("#region_id")
  shipping_option_block = $(".CheckoutDeliveryOptions")
  shipping_option_price = $(".CheckoutDeliveryOption-Price")
  shipping_option_second = $(".CheckoutDeliveryOptions > ul > li:nth-child(2) > button")
  pickup_option_first = $(".CheckoutDeliveryOptions-PickupOptionWrapper > div:nth-child(1) > button")
  phone_form = $("#telephone")
  curbside_disclaimer_checkbox = $("#curbsideDisclaimer")
  curbside_disclaimer_checkbox_2 = $("#deliveryDisclaimer")
  curbside_disclaimer_checkbox_pick_up = $(".CheckoutDeliveryOptions-Checkbox > label > div")
  installation_checkbox = $(".CheckoutAddressBook > div.FieldForm.CheckoutAddressForm > div.FlooringInstallationStatus > div > div > div:nth-child(1) > label")
  installation_checkbox_error_message = $(".FlooringInstallationStatus-Error")
  installation_checkbox_logged_in = $(".CheckoutAddressBook > div.FlooringInstallationStatus > div > div > div:nth-child(2) > label")
  installation_checkbox_newly_registered = $(".CheckoutAddressBook-CustomAddressWrapper > div > div.FlooringInstallationStatus > div > div > div:nth-child(2) > label")
  proceed_to_billing_button = $(".Button.CheckoutShipping-Button")
  cart_subtotal = $("#root > div > main > section > div > div:nth-child(2) > article > div.CheckoutOrderSummary-OrderTotals")
  payment_methods = $("#BRAINTREE_CONTAINER_ID")
  cc_pay_method = $(".braintree-option.braintree-option__card")
  cc_num = $(NativeSelector((page: any) => page.frameLocator('iframe[name=braintree-hosted-field-number]').locator('#credit-card-number')))
  cc_date = $(NativeSelector((page: any) => page.frameLocator('iframe[name=braintree-hosted-field-expirationDate]').locator('#expiration')))
  cc_cvv = $(NativeSelector((page: any) => page.frameLocator('iframe[name=braintree-hosted-field-cvv]').locator('#cvv')))
  terms_checkbox = $("#BILLING_STEP > div.CheckoutBilling-TermsAndConditions > div > label > div")
  terms_button = $("#BILLING_STEP > div.CheckoutBilling-TermsAndConditions > label > button")
  terms_popup = $("body > div.Popup.Popup_isVisible.CheckoutTermsAndConditionsPopup.CheckoutTermsAndConditionsPopup_isVisible > div")
  terms_popup_close_button = $(".Popup-CloseBtn")
  complete_order = $(".Button.CheckoutBilling-Button")
  saved_address_item = $("div.CheckoutAddressBook-Wrapper > div:nth-child(1)")
  checkout_cart_button = $("div.CheckoutProgressBar-Cart.CheckoutProgressBar-Cart_status_completed > a")
  checkout_order_num = $("div.Checkout-Step > div > h3")
  checkout_item_link = $("div.CheckoutOrderSummary-OrderItems > div > div:nth-child(3) > span > figure > a")
  checkout_order_total = $(".CheckoutOrderSummary-OrderTotals > ul > li:nth-child(5) > strong:nth-child(2)")
  checkout_zero_subtotal_method = $(".CheckoutPayments > ul > li:nth-child(1) > button")
  same_billing_as_shipping_checkbox = $(".Field.Field_type_checkbox.Field_isValid.CheckoutBilling-Checkbox > label")
  billing_address_block = $(".CheckoutAddressBook")
  coupon_code_form = $("#couponCode")
  apply_coupon_button = $(".CartCoupon-Button")
  success_page_continue_shopping_button = $(".CheckoutSuccess-ContinueButton")

  //premium_flow
  become_premium_link = $("footer > div > div > div:nth-child(4) > div > a")
  premium_cms_page_h1 = $(".PremiumCustomer-Cta > h1")
  premium_cms_sign_up_button = $(".PremiumCustomer-Cta > div > div.PremiumCustomer-CtaAction > button")
  premium_flow_checkout_save_button = $(".CheckoutBilling-SaveVirtualAddressButton")

  //meta_elements
  meta_title = $('meta[name=title]');
  meta_description = $('meta[name=description]');
  meta_keywords = $('meta[name=keywords]');
  meta_robots = $('meta[name=robots]');
  itemscope_organization = $("header > div:nth-child(1)")
  itemscope_postalAddress = $("header > div:nth-child(1) > div")
  meta_itemprop_name = $('meta[itemprop=name]');
  meta_itemprop_description = $('meta[itemprop=description]');
  meta_itemprop_logo = $('meta[itemprop=logo]');
  meta_itemprop_streetAddress = $('meta[itemprop=streetAddress]');
  meta_itemprop_postalCode = $('meta[itemprop=postalCode]');
  meta_itemprop_addressLocality = $('meta[itemprop=addressLocality]');
  meta_itemprop_location = $('meta[itemprop=location]');
  meta_itemprop_telephone = $('meta[itemprop=telephone]');
  meta_itemprop_name_PLP = $('header meta[itemprop=name]');
  meta_itemprop_description_PLP = $('header meta[itemprop=description]');
  meta_itemprop_logo_PLP = $('header meta[itemprop=logo]');
  meta_itemprop_streetAddress_PLP = $('header meta[itemprop=streetAddress]');
  meta_itemprop_postalCode_PLP = $('header meta[itemprop=postalCode]');
  meta_itemprop_addressLocality_PLP = $('header meta[itemprop=addressLocality]');
  meta_itemprop_location_PLP = $('header meta[itemprop=location]');
  meta_itemprop_telephone_PLP = $('header meta[itemprop=telephone]');
  itemscope_itemtype_PLP = $(".CategoryProductList-ProductListWrapper > ul > div:nth-child(2)");
  itemscope_itemtype_PLP_item = $(".ProductCard:nth-of-type(1) + [itemscope]");
  itemscope_itemtype_PLP_brand = $(".CategoryProductList-ProductListWrapper > ul > div:nth-child(2) > div:nth-child(3)");
  meta_itemprop_name_PLP_item = $(".ProductCard:nth-of-type(1) + [itemscope] > meta[itemprop=name]");
  meta_itemprop_name_PLP_item_brand = $(".ProductCard:nth-of-type(1) + [itemscope] > div > meta[itemprop=name]");
  meta_itemprop_image_PLP_item = $(".ProductCard:nth-of-type(1) + [itemscope] > meta[itemprop=image]");
  meta_itemprop_condition_PLP_item = $(".ProductCard:nth-of-type(1) + [itemscope] > meta[itemprop=itemCondition]");
  meta_itemprop_color_PLP_item = $(".ProductCard:nth-of-type(1) + [itemscope] > meta[itemprop=color]");
  meta_itemprop_sku_PLP_item = $(".ProductCard:nth-of-type(1) + [itemscope] > meta[itemprop=sku]");
  itemscope_itemtype_PLP_offer = $(".CategoryProductList-ProductListWrapper > ul > div:nth-child(2) > div:nth-child(7)");
  meta_itemprop_availiability_PLP_item_offer = $(".ProductCard:nth-of-type(1) + [itemscope] > div > meta[itemprop=availability]")
  meta_itemprop_url_PLP_item_offer = $(".ProductCard:nth-of-type(1) + [itemscope] > div > meta[itemprop=url]")
  meta_itemprop_priceCurrency_PLP_item_offer = $(".ProductCard:nth-of-type(1) + [itemscope] > div > meta[itemprop=priceCurrency]")
  meta_itemprop_price_PLP_item_offer = $(".ProductCard:nth-of-type(1) + [itemscope] > div > meta[itemprop=price]")
  itemscope_itemtype_PDP = $("div > main");
  itemscope_itemtype_PDP_brand = $(".ProductActions-Section.ProductActions-Section_type_details > div:nth-child(1)");
  meta_itemprop_name_PDP = $('header meta[itemprop=name]');
  meta_itemprop_name_PDP_item = $(".ProductPage-Wrapper > meta[itemprop=name]");
  meta_itemprop_name_PDP_item_brand = $(".ProductActions-Section.ProductActions-Section_type_details > div:nth-child(1) >meta[itemprop=name]");
  meta_itemprop_image_PDP_item = $("meta[itemprop=image]");
  meta_itemprop_condition_PDP_item = $("meta[itemprop=itemCondition]");
  meta_itemprop_manufacturer_PDP_item = $(".ProductActions-Section.ProductActions-Section_type_details > div:nth-child(3) > meta[itemprop=name]");
  itemprop_additionalProperty_PDP_item = $("[itemprop=additionalProperty]");
  meta_itemprop_additionalProperty_PDP_name = $("[itemprop=additionalProperty] > meta[itemprop=name]");
  meta_itemprop_additionalProperty_PDP_value = $("[itemprop=additionalProperty] > meta[itemprop=value]");
  itemprop_height_PDP_item = $("[itemprop=height]");
  meta_itemprop_height_PDP_value = $("[itemprop=height] > meta[itemprop=value]");
  meta_itemprop_height_PDP_unitCode = $("[itemprop=height] > meta[itemprop=unitCode]");
  itemprop_width_PDP_item = $("[itemprop=width]");
  meta_itemprop_width_PDP_value = $("[itemprop=width] > meta[itemprop=value]");
  meta_itemprop_width_PDP_unitCode = $("[itemprop=width] > meta[itemprop=unitCode]");
  itemprop_depth_PDP_item = $("[itemprop=depth]");
  meta_itemprop_depth_PDP_value = $("[itemprop=depth] > meta[itemprop=value]");
  meta_itemprop_depth_PDP_unitCode = $("[itemprop=depth] > meta[itemprop=unitCode]");
  itemprop_color_PDP_item = $("[itemprop=color]");
  meta_itemprop_sku_PDP_item = $("meta[itemprop=sku]");
  itemscope_itemtype_PDP_offer = $(".ProductActions-PricingWrapper > [itemprop=offers]");
  meta_itemprop_availiability_PDP_item_offer = $("[itemprop=availability]");
  meta_itemprop_url_PDP_item_offer = $("[itemprop=offers] >[itemprop=url]");
  meta_itemprop_priceCurrency_PDP_item_offer = $("[itemprop=priceCurrency]");
  meta_itemprop_price_PDP_item_offer = $("[itemprop=price]");
  itemprop_return_policy = $("[itemprop=hasMerchantReturnPolicy]");
  meta_return_policy_applicableCountry = $("meta[itemprop=applicableCountry]");
  meta_return_policy_returnPolicyCategory = $("meta[itemprop=returnPolicyCategory]");
  meta_return_policy_merchantReturnDays = $("meta[itemprop=merchantReturnDays]");
  meta_return_policy_returnMethod = $("meta[itemprop=returnMethod]");
  meta_return_policy_returnFees = $("meta[itemprop=returnFees]");
  itemprop_return_policy_restockingFee = $("[itemprop=restockingFee]");
  meta_return_policy_restockingFee = $("[itemprop=restockingFee] > meta[itemprop]");
  itemprop_return_policy_returnShippingFeesAmount = $("[itemprop=returnShippingFeesAmount]");
  meta_return_policy_minValue = $("[itemprop=returnShippingFeesAmount] > meta[itemprop=minValue]");
  meta_return_policy_maxValue = $("[itemprop=returnShippingFeesAmount] > meta[itemprop=maxValue]");
  meta_return_policy_currency = $("[itemprop=returnShippingFeesAmount] > meta[itemprop=currency]");

  itemprop_deliveryTime = $("[itemprop=deliveryTime]");
  itemprop_handlingTime = $("[itemprop=handlingTime]");
  meta_itemprop_handlingTime_minValue = $("[itemprop=handlingTime] > meta[itemprop=minValue]");
  meta_itemprop_handlingTime_maxValue = $("[itemprop=handlingTime] > meta[itemprop=maxValue]");
  meta_itemprop_handlingTime_unitCode = $("[itemprop=handlingTime] > meta[itemprop=unitCode]");
  itemprop_transitTime = $("[itemprop=transitTime]");  
  meta_itemprop_transitTime_minValue = $("[itemprop=transitTime] > meta[itemprop=minValue]");
  meta_itemprop_transitTime_maxValue = $("[itemprop=transitTime] > meta[itemprop=maxValue]");
  meta_itemprop_transitTime_unitCode = $("[itemprop=transitTime] > meta[itemprop=unitCode]");










  


 






  


 

  






 






}
