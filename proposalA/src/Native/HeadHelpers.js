var _pdamoc$elm_powercss$Native_HeadHelpers = function()
{

var elmcss =document.createElement('style');
elmcss.type='text/css';
elmcss.id="elmcss"
document.getElementsByTagName('head')[0].appendChild(elmcss);

function updateCss(css){
    if ( elmcss.textContent != css) {
      elmcss.textContent = css;
    }
    return true;
}

return {
    updateCss: updateCss
};

}();