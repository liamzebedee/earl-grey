var ___lib=require("./lib");(exports["patch_array"]=function(){var r=[];for(var i=0;(i<arguments.length);(i++)){(r=r.concat(___lib.send(arguments,i)));}return r;});(exports["StructFactory"]=function(name){var make=function(){var r=Array.prototype.slice.call(arguments,0);(r["#"]=name);return r;};(make["___project"]=function(value){if(((value instanceof Array)&&(value["#"]===name))){return [true,value];}else{if(true){return [true,make(value)];}else{return false;}}});(make["___check"]=function(value){if(((value instanceof Array)&&(value["#"]===name))){return true;}else{if(true){return false;}else{return false;}}});(make["___deconstruct"]=function(value){if(((value instanceof Array)&&(value["#"]===name))){return [true,value.slice(0)];}else{if(true){return [false,false];}else{return false;}}});return make;});(exports["Struct"]=function(name){var r=Array.prototype.slice.call(arguments,1);(r["#"]=name);return r;});(exports.Struct["___check"]=function(value){if((value instanceof Array)){return (value["#"]!==undefined);}else{if(true){return false;}else{return false;}}});(exports.Struct["___deconstruct"]=function(value){if(((value instanceof Array)&&(value["#"]!==undefined))){return [value["#"]].concat(value.slice(0));}else{if(true){throw "cannot deconstruct";}else{return false;}}});var pr=function(x){var r=repr(x);var pre=(String.fromCharCode(27)+"[?0;7y+h <div class=\"ug\">");var post=("</div>"+String.fromCharCode(7));return console.log(((pre+r)+post));};(exports["pr"]=pr);var __slash____slash____slash__=function(cls,contents){var τ0=contents;var other;if((typeof(τ0)==="string")){return (((("<span class=\""+cls)+"\">")+contents)+"</span>");}else{if(((other=τ0),true)){return (((("<span class=\""+cls)+"\">")+contents.join(""))+"</span>");}else{throw ["Could not find a match",τ0];}}};var repr=function(x){var τ1=x;var entries;if((τ1===true)){return __slash____slash____slash__("special",__slash____slash____slash__("true","true"));}else{if((τ1===false)){return __slash____slash____slash__("special",__slash____slash____slash__("false","false"));}else{if((τ1===null)){return __slash____slash____slash__("special",__slash____slash____slash__("nil","null"));}else{if((τ1===undefined)){return __slash____slash____slash__("special",__slash____slash____slash__("nil","undefined"));}else{if((typeof(τ1)==="number")){return __slash____slash____slash__("num",String(x));}else{if((typeof(τ1)==="string")){return __slash____slash____slash__("str",x);}else{if(((entries=τ1),true)){var tag=entries["#"];var τ2=tag;var other;if((τ2===undefined)){return __slash____slash____slash__("sequence",entries.map(function(x){return repr(x);}));}else{if(((other=τ2),true)){return __slash____slash____slash__("struct",[__slash____slash____slash__("sym",tag),__slash____slash____slash__("sequence",entries.map(function(x){return repr(x);}))]);}else{throw ["Could not find a match",τ2];}}}else{throw ["Could not find a match",τ1];}}}}}}}};(exports["repr"]=repr);(exports["send"]=function(obj,msg){var τ3=msg;var other;if(((typeof(τ3)==="string")||(typeof(τ3)==="number"))){return obj[msg];}else{if(((other=τ3),true)){return obj.___send(msg);}else{throw ["Could not find a match",τ3];}}});(Function.prototype["___send"]=function(args){return this.apply(this,args);});(exports["checker"]=function(type){var τ4=type.___check;var f;if((τ4===undefined)){return function(value){return (value instanceof type);};}else{if(((f=τ4),true)){return function(value){return f(value);};}else{throw ["Could not find a match",τ4];}}});(exports["projector"]=function(type){return function(value){var τ5=type.___project;var f;if((τ5===undefined)){if((value instanceof type)){return [true,value];}else{if(true){return [false,null];}else{return false;}}}else{if(((f=τ5),true)){return f(value);}else{throw ["Could not find a match",τ5];}}};});(Array["___project"]=function(value){var τ6=value;if(___lib.checker(Array)(τ6)){return [true,value];}else{if(true){return [true,[value]];}else{throw ["Could not find a match",τ6];}}});(exports["deconstructor"]=function(type){return function(value){var τ7=type.___deconstruct;var f;if((τ7===undefined)){if((value instanceof Array)){return [true,value];}else{if(true){return [false,null];}else{return false;}}}else{if(((f=τ7),true)){return f(value);}else{throw ["Could not find a match",τ7];}}};});