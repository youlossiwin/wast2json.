```
script: <cmd>*

cmd:
  <module>                                   ;; define, validate, and initialize module
  ( register <string> <name>? )              ;; register module for imports
module with given failure string
  <action>                                   ;; perform action and print results
  <assertion>                                ;; assert result of an action
  <meta>                                     ;; meta command

module:
  ...
  ( module <name>? binary <string>* )        ;; module in binary format (may be malformed)
  ( module <name>? quote <string>* )         ;; module quoted in text (may be malformed)

action:
  ( invoke <name>? <string> <expr>* )        ;; invoke function export
  ( get <name>? <string> )                   ;; get global export

assertion:
  ( assert_return <action> <result>* )       ;; assert action has expected results
  ( assert_trap <action> <failure> )         ;; assert action traps with given failure string
  ( assert_exhaustion <action> <failure> )   ;; assert action exhausts system resources
  ( assert_malformed <module> <failure> )    ;; assert module cannot be decoded with given failure string
  ( assert_invalid <module> <failure> )      ;; assert module is invalid with given failure string
  ( assert_unlinkable <module> <failure> )   ;; assert module fails to link
  ( assert_trap <module> <failure> )         ;; assert module traps on instantiation

result:
  ( <val_type>.const <numpat> )

numpat:
  <value>                                    ;; literal result
  nan:canonical                              ;; NaN in canonical form
  nan:arithmetic                             ;; NaN with 1 in MSB of payload

meta:
  ( script <name>? <script> )                ;; name a subscript
  ( input <name>? <string> )                 ;; read script or module from file
  ( output <name>? <string>? )               ;; output module to stout or file
```
