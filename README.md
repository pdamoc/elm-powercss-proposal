# elm-powercss-proposal

Two proposals for a new way to do CSS. 

inspiration: [PowerCSS](http://powercss.org/)

to test the code, enter the proposal folder and `elm-package install -y && elm-make Main.elm`

the method can be used currently with ports like by adding the following to your script and using `updateCss` like in proposal A. 


```javascript
      function createStyleElement(id, css){
        var style =document.createElement('style');
        style.type='text/css';
        style.id=id;
        style.innerHTML = css;
        document.getElementsByTagName('head')[0].appendChild(style);  
      }

      createStyleElement("elmcss1", "");
      createStyleElement("elmcss2", "");
      document.getElementById("elmcss2").disabled = true;
      
      var current_style_id = "elmcss1"
      var other_style_id = "elmcss2"

      function updateCss(css){
        var current_content = document.getElementById(current_style_id).innerHTML;
        if ( current_content != css) {
          other_style_id = current_style_id == "elmcss1" ? "elmcss2" : "elmcss1"
          document.getElementById(other_style_id).innerHTML = css;
          document.getElementById(other_style_id).disabled = false;
          document.getElementById(current_style_id).disabled = true;
          current_style_id = other_style_id;
        }
      }

      app.ports.updateCss.subscribe(function(css) {
         updateCss(css);
      });
```
