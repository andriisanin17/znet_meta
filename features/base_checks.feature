Feature: qavajs framework

Scenario: Homepage

Given I open "$base_url" url
        And I wait 7000 ms  
    Then I expect 'content' attribute of 'meta_title' to be equal 'Premium Flooring Products by Category, Available Online at Znet Flooring'
    Then I expect 'content' attribute of 'meta_robots' to be equal 'follow, index'
    Then I expect 'itemtype' attribute of 'itemscope_organization' to be equal 'https://schema.org/Organization'
    Then I expect 'itemtype' attribute of 'itemscope_postalAddress' to be equal 'https://schema.org/PostalAddress'
    Then I expect 'content' attribute of 'meta_itemprop_name' to be equal 'Znet Flooring'
    Then I expect 'content' attribute of 'meta_itemprop_description' to be equal 'Shop for flooring products of top brands from the online store at Znet Flooring, ranging from hardwood, laminate, vinyl, area rugs & more.'
    Then I expect 'content' attribute of 'meta_itemprop_logo' to be equal '/pub/media/favicon.jpg'
    Then I expect 'content' attribute of 'meta_itemprop_streetAddress' to be equal '10161 Park Run Dr. Ste 150'
    Then I expect 'content' attribute of 'meta_itemprop_postalCode' to be equal '89145'
    Then I expect 'content' attribute of 'meta_itemprop_addressLocality' to be equal 'Las Vegas, United States'
    Then I expect 'content' attribute of 'meta_itemprop_location' to be equal '10161 Park Run Dr. Ste 150 Las Vegas, NV 89145'
    Then I expect 'content' attribute of 'meta_itemprop_telephone' to be equal '7252010303'


Scenario: PLP
Given I open "$base_url+$PLP_waterproof_flooring " url
        And I wait 7000 ms
    Then I expect 'content' attribute of 'meta_title' to be equal 'Waterproof Catalog for Products from Znet Flooring'
    Then I expect 'content' attribute of 'meta_description' to be equal 'Look through the Waterproof catalog to find the types of Waterproof products to fit your home aesthetic or accompany new interior design projects.'
    Then I expect 'content' attribute of 'meta_keywords' to be equal 'znet flooring, hardwood flooring, ceramic tiles, carpets, laminate flooring, vinyl, area rugs, flooring education'
    Then I expect 'content' attribute of 'meta_robots' to be equal 'follow, index'
    Then I expect 'itemtype' attribute of 'itemscope_organization' to be equal 'https://schema.org/Organization'
    Then I expect 'itemtype' attribute of 'itemscope_postalAddress' to be equal 'https://schema.org/PostalAddress'
    Then I expect 'content' attribute of 'meta_itemprop_name_PLP' to be equal 'Znet Flooring'
    Then I expect 'content' attribute of 'meta_itemprop_description_PLP' to be equal 'Shop for flooring products of top brands from the online store at Znet Flooring, ranging from hardwood, laminate, vinyl, area rugs & more.'
    Then I expect 'content' attribute of 'meta_itemprop_logo_PLP' to be equal '/pub/media/favicon.jpg'
    Then I expect 'content' attribute of 'meta_itemprop_streetAddress_PLP' to be equal '10161 Park Run Dr. Ste 150'
    Then I expect 'content' attribute of 'meta_itemprop_postalCode_PLP' to be equal '89145'
    Then I expect 'content' attribute of 'meta_itemprop_addressLocality_PLP' to be equal 'Las Vegas, United States'
    Then I expect 'content' attribute of 'meta_itemprop_location_PLP' to be equal '10161 Park Run Dr. Ste 150 Las Vegas, NV 89145'
    Then I expect 'content' attribute of 'meta_itemprop_telephone_PLP' to be equal '7252010303'
    Then I expect 'itemtype' attribute of 'itemscope_itemtype_PLP' to be equal 'http://schema.org/Product'
    Then I expect 'itemtype' attribute of 'itemscope_itemtype_PLP_brand' to be equal 'http://schema.org/Brand'
    Then I expect 'itemtype' attribute of 'itemscope_itemtype_PLP_item' to be equal 'http://schema.org/Product'
    Then I expect 'meta_itemprop_name_PLP_item' to be present
    Then I expect 'meta_itemprop_name_PLP_item_brand' to be present
    Then I expect 'meta_itemprop_image_PLP_item' to be present
    Then I expect 'meta_itemprop_condition_PLP_item' to be present
    Then I expect 'meta_itemprop_color_PLP_item' to be present
    Then I expect 'meta_itemprop_sku_PLP_item' to be present
    Then I expect 'itemtype' attribute of 'itemscope_itemtype_PLP_offer' to be equal 'https://schema.org/Offer'
    Then I expect 'meta_itemprop_availiability_PLP_item_offer' to be present
    Then I expect 'meta_itemprop_url_PLP_item_offer' to be present
    Then I expect 'meta_itemprop_priceCurrency_PLP_item_offer' to be present
    Then I expect 'content' attribute of 'meta_itemprop_priceCurrency_PLP_item_offer' to be equal 'USD'
    Then I expect 'meta_itemprop_price_PLP_item_offer' to be present

    @test
Scenario: PDP
Given I open "$base_url+$PDP_karndeam" url
        And I wait 7000 ms
     Then I expect 'content' attribute of 'meta_title' to be equal 'Karndean - Art Select Stone Rigid Core - Rose Onyx | AKT-LM36'
    Then I expect 'content' attribute of 'meta_description' to be equal 'Art Select Stone Rigid Core Rose Onyx is a waterproof vinyl tile flooring by Karndean. This features a bevel edge and a 30 mil wear layer.'
    Then I expect 'content' attribute of 'meta_keywords' to be equal 'Karndean,Art Select Stone Rigid Core,Rose Onyx,,Virgin Vinyl,K-Guard Plus'
    Then I expect 'content' attribute of 'meta_robots' to be equal 'index, follow'
    Then I expect 'itemtype' attribute of 'itemscope_organization' to be equal 'https://schema.org/Organization'
    Then I expect 'itemtype' attribute of 'itemscope_postalAddress' to be equal 'https://schema.org/PostalAddress'
    Then I expect 'content' attribute of 'meta_itemprop_name_PLP' to be equal 'Znet Flooring'
    Then I expect 'content' attribute of 'meta_itemprop_description_PLP' to be equal 'Shop for flooring products of top brands from the online store at Znet Flooring, ranging from hardwood, laminate, vinyl, area rugs & more.'
    Then I expect 'content' attribute of 'meta_itemprop_logo_PLP' to be equal '/pub/media/favicon.jpg'
    Then I expect 'content' attribute of 'meta_itemprop_streetAddress_PLP' to be equal '10161 Park Run Dr. Ste 150'
    Then I expect 'content' attribute of 'meta_itemprop_postalCode_PLP' to be equal '89145'
    Then I expect 'content' attribute of 'meta_itemprop_addressLocality_PLP' to be equal 'Las Vegas, United States'
    Then I expect 'content' attribute of 'meta_itemprop_location_PLP' to be equal '10161 Park Run Dr. Ste 150 Las Vegas, NV 89145'
    Then I expect 'content' attribute of 'meta_itemprop_telephone_PLP' to be equal '7252010303'
    Then I expect 'itemtype' attribute of 'itemscope_itemtype_PDP' to be equal 'http://schema.org/Product'
    Then I expect 'itemtype' attribute of 'itemscope_itemtype_PDP_brand' to be equal 'http://schema.org/Brand' 
    Then I expect 'meta_itemprop_name_PDP_item' to be present    
    Then I expect 'meta_itemprop_name_PDP_item_brand' to be present
    Then I expect 'meta_itemprop_image_PDP_item' to be present
    Then I expect 'itemtype' attribute of 'meta_itemprop_condition_PDP_item' to be equal 'https://schema.org/NewCondition'
    Then I expect 'content' attribute of 'meta_itemprop_manufacturer_PDP_item' to be equal 'Karndean'
    Then I expect 'itemtype' attribute of 'itemprop_additionalProperty_PDP_item' to be equal 'https://schema.org/PropertyValue'
    Then I expect 'content' attribute of 'meta_itemprop_additionalProperty_PDP_name' to be equal 'Flooring Type'
    Then I expect 'content' attribute of 'meta_itemprop_additionalProperty_PDP_value' to be equal 'Vinyl Tile'
    Then I expect 'itemtype' attribute of 'itemprop_height_PDP_item' to be equal 'https://schema.org/QuantitativeValue' 
    Then I expect 'meta_itemprop_height_PDP_value' to be present
    Then I expect 'content' attribute of 'meta_itemprop_height_PDP_unitCode' to be equal 'INH'
    Then I expect 'itemtype' attribute of 'itemprop_width_PDP_item' to be equal 'https://schema.org/QuantitativeValue' 
    Then I expect 'meta_itemprop_width_PDP_value' to be present
    Then I expect 'content' attribute of 'meta_itemprop_width_PDP_unitCode' to be equal 'INH'
    Then I expect 'itemtype' attribute of 'itemprop_depth_PDP_item' to be equal 'https://schema.org/QuantitativeValue' 
    Then I expect 'meta_itemprop_depth_PDP_value' to be present
    Then I expect 'content' attribute of 'meta_itemprop_depth_PDP_unitCode' to be equal 'MMT'
    Then I expect 'itemprop_color_PDP_item' to be present
    Then I expect 'meta_itemprop_sku_PDP_item' to be present
    Then I expect 'itemtype' attribute of 'itemscope_itemtype_PDP_offer' to be equal 'https://schema.org/Offer'
    Then I expect 'meta_itemprop_availiability_PDP_item_offer' to be present
    Then I expect 'meta_itemprop_url_PDP_item_offer' to be present
    Then I expect 'meta_itemprop_priceCurrency_PDP_item_offer' to be present
    Then I expect 'content' attribute of 'meta_itemprop_priceCurrency_PDP_item_offer' to be equal 'USD'
    Then I expect 'meta_itemprop_price_PDP_item_offer' to be present
    Then I expect 'itemtype' attribute of 'itemprop_return_policy' to be equal 'https://schema.org/MerchantReturnPolicy'
    Then I expect 'content' attribute of 'meta_return_policy_applicableCountry' to be equal 'US'
    Then I expect 'content' attribute of 'meta_return_policy_returnPolicyCategory' to be equal 'https://schema.org/MerchantReturnFiniteReturnWindow'
    Then I expect 'meta_return_policy_merchantReturnDays' to be present
    Then I expect 'content' attribute of 'meta_return_policy_returnMethod' to be equal 'https://schema.org/ReturnByMail'
    Then I expect 'content' attribute of 'meta_return_policy_returnFees' to be equal 'https://schema.org/ReturnShippingFees'
    Then I expect 'itemtype' attribute of 'itemprop_return_policy_returnShippingFeesAmount' to be equal 'https://schema.org/MonetaryAmount'
    Then I expect 'meta_return_policy_minValue' to be present
    Then I expect 'meta_return_policy_maxValue' to be present
    Then I expect 'content' attribute of 'meta_return_policy_currency' to be equal 'USD'
    Then I expect 'itemtype' attribute of 'itemprop_deliveryTime' to be equal 'https://schema.org/ShippingDeliveryTime'
    Then I expect 'itemtype' attribute of 'itemprop_handlingTime' to be equal 'https://schema.org/QuantitativeValue'
    Then I expect 'meta_itemprop_handlingTime_minValue' to be present
    Then I expect 'meta_itemprop_handlingTime_maxValue' to be present
    Then I expect 'content' attribute of 'meta_itemprop_handlingTime_unitCode' to be equal 'DAY'
    Then I expect 'itemtype' attribute of 'itemprop_transitTime' to be equal 'https://schema.org/QuantitativeValue'
    Then I expect 'meta_itemprop_transitTime_minValue' to be present
    Then I expect 'meta_itemprop_transitTime_maxValue' to be present
    Then I expect 'content' attribute of 'meta_itemprop_transitTime_unitCode' to be equal 'DAY'


















  
  
