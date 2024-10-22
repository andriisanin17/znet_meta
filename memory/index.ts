export default class Constants {
    base_url = 'https://cashncarrycarpet.net/';
    admin_url = '/admin_pwa/admin/'
    PDP_price_request = 'mohawk-solidtech-essentials-pro-solutions-smokey-grey';
    PDP_flooring_noMap_MSI = 'msi-everlife-xl-ashton-loton-hill';
    PDP_floorin_mohawk = 'mohawk-solidtech-select-burkwood-cove-clover';
    PDP_flooring_quote_form = 'coretec-original-enhanced-7-x-60-farington-oak';
    PDP_rug_parent = 'karastan-zula-mombasa-aquamarine-r1201';
    PDP_sample = 'pergo-elements-ultra-prestano-cocoa-mocha-hickory-sample';
    PDP_accessory = 'mohawk-s-performance-accessories-reducer-hredc-05998-conch-oak-red';
    PLP_msi = 'vinyl/msi-vinyl';
    PLP_mohawk = 'hardwood-flooring/mohawk-hardwood';
    PLP_rugs = 'carpet/rugs/karastan-rugs';
    PLP_coretech = 'waterproof-flooring/coretec-waterproof';
    PLP_accessories = 'all-accessories';
    region = {
        colorado: {
            zip: '80220',
            code: '13',
            city: 'Denver'
        },
        nevada: {
            zip: '89103',
            code: '39',
            city: 'Las Vegas'
        },
        delaware: {
            zip: '19706',
            code: '15',
            city: 'Delaware City'
        }
    };
    card_data = {
        num: '4111111111111111',
        mmyy: '0526',
        cvv: '123'
    };
   user = {
    get randomEmail() {return`autotest_${Date.now()}@znet.co`},
    
    };
   user1 = {
     get randomPhone() {return`$(random)`}
   };
   registerred_user = {    
        email: 'testpp10vqa@gmail.com',
        password: 'Qwerty123)'
     };
    
     nomap_user = {    
        email: 'testpp1vqa@gmail.com',
        password: 'Qwerty123)'
     };
    qty_add = '5';

    admin_user = {    
        email: 'autotest_adm',
        password: 'Qwerty123)'
     };
     extractOrderId = (str: string) => str.replace(/\D/g, '');

     customerEmail = (str: string) => str
}
