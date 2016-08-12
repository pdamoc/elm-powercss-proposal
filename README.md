# elm-powercss-proposal

Two proposals for a new way to mount a CSS stylesheet into an Elm app. 

The CSS can be generated with a tool like [rtfeldman/elm-css](https://github.com/rtfeldman/elm-css).

inspiration: [PowerCSS](http://powercss.org/)

to test the code, enter the proposal folder and `elm-package install -y && elm-make Main.elm`

the method can be used currently with ports by adding the following to your script and using `updateCss` like in proposal A. 


```javascript
      var elmcss =document.createElement('style');
      elmcss.type='text/css';
      elmcss.id="elmcss"
      document.getElementsByTagName('head')[0].appendChild(elmcss);

      app.ports.updateCss.subscribe(function(css) {
        if ( elmcss.textContent != css) {
          elmcss.textContent = css;
        }
      });
```
