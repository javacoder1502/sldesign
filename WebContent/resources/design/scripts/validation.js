/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function validateSearch() {
                var users_keyword = document.search_form.users_keyword.value;
//                var sub_number = msisdn.substr(0, 2);
if (!users_keyword.replace(/\s/g, '').length) {
    alert("Please enter a valid search keyword!");
    return false;
    // string only contained whitespace (ie. spaces, tabs or line breaks)
}
              
                
            }
