# Elm PowerCss proposal A
 
`updateCss : String -> Cmd msg`

advantages : 
    - Has a clear semmantic: you give the runtime a Command to change the style 

disadvantages : 
    - tie the styles to the `update` rather than the `view` 
    - cannot be used with `beginnerProgram` 
