var _pdamoc$elm_powercss$Native_HeadHelpers = function()
{

function createStyleElement(id, css){
    var style =document.createElement('style');
    style.type='text/css';
    style.id=id;
    style.innerHTML = css;
    document.getElementsByTagName('head')[0].appendChild(style);  
    document.getElementById("elmcss1").disabled = true;
}


createStyleElement("elmcss1", "");
createStyleElement("elmcss2", "");

document.getElementById("elmcss2").disabled = true;

var current_style_id = "elmcss1"
var other_style_id = "elmcss2"

function updateCss(css){

    var current_content = document.getElementById(current_style_id).innerHTML;
    if ( current_content!=css) {
        other_style_id = current_style_id == "elmcss1" ? "elmcss2" : "elmcss1"
        document.getElementById(other_style_id).innerHTML = css;
        document.getElementById(other_style_id).disabled = false;
        document.getElementById(current_style_id).disabled = true;
        current_style_id = other_style_id;

        return true;

    } else {
        return true;
    }
    
}

return {
    updateCss: updateCss
};

}();