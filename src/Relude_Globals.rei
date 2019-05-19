module AsyncData = Relude_AsyncData;
module AsyncResult = Relude_AsyncResult;
module Array = Relude_Array;
module IO = Relude_IO;
module List = Relude_List;
module NonEmpty = Relude_NonEmpty;
module Option = Relude_Option;
module RJs = Relude_Js;
module Result = Relude_Result;
module String = Relude_String;
let ( >> ): ('a => 'b, 'b => 'c, 'a) => 'c;
let ( << ): ('a => 'b, 'c => 'a, 'c) => 'b;
let id: 'a => 'a;
let const: ('a, 'b) => 'a;
let flip: (('a, 'b) => 'c, 'b, 'a) => 'c;
