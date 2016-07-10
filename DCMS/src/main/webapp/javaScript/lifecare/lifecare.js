function searchOptionSelection(searchOpt){

//    if (searchValue != "") {
//        var msg = $.ajax({
//            url:"/pico/ajax/getEmailAddressForCommittee.action?searchValue=" + searchValue,
//            async:false
//        }).responseText;
//
//        document.getElementById(DestinationListID).setAttribute("value",msg);
//        }



      var group = document.getElementsByName("radSearchOption");

    for (var i = 0; i < group.length; i++) {
        if (group[i].checked) {
            var searchValue = group[i].value;
        }
    }
}

