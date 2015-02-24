
'use strict';require('earlgrey-runtime/6');let $26$0;let $28$0;let $30$0;let $32$0;let $34$0;let $36$0;let $38$0;let $40$0;let $42$0;let $44$0;let $46$0;let $48$0;let $targ$0;let $targ$1;let mt$0;let Env$0;let Expander$0;let topscope$0;let stdenv$0;let mac$0;let bind$0;let make_expander$0;mt$0=require("./expand");Env$0=mt$0.Env;Expander$0=mt$0.Expander;topscope$0=mt$0.topscope;stdenv$0=Env$0();mac$0=(function mac(name$0){return (function(m$0){let m2$0;m2$0=(function m2(ctx$0,info$0,form$0,temp$0$0){let t0$0;let t0$1;let expr$0;let ph$0$0;t0$0=temp$0$0;expr$0=t0$0;ph$0$0=t0$0;t0$1=ph$0$0;if((___hasprop(t0$1,"brackets")&&(t0$1.brackets==="()"))){throw ErrorFactory(["syntax","no_parens"]).create("Parentheses cannot be used here.\n             Use [] or {} depending on your intent.\n             []s are usually equivalent to an absence\n             of brackets.\n             ".replace(RegExp("\\n *","g")," "),({"expr":expr$0}));}else{return m$0.call(this,ctx$0,info$0,form$0,expr$0);}});stdenv$0.bind(topscope$0,name$0,["macro",m2$0]);return m2$0;});});bind$0=(function bind(name$1,value$0){return stdenv$0.bind(topscope$0,name$1,value$0);});(($26$0=require("./macros/consts")),$26$0)(mac$0,bind$0);(($28$0=require("./macros/core")),$28$0)(mac$0,bind$0);(($30$0=require("./macros/operators")),$30$0)(mac$0,bind$0);(($32$0=require("./macros/loop")),$32$0)(mac$0,bind$0);(($34$0=require("./macros/quote")),$34$0)(mac$0,bind$0);(($36$0=require("./macros/regexp")),$36$0)(mac$0,bind$0);(($38$0=require("./macros/modularity")),$38$0)(mac$0,bind$0);(($40$0=require("./macros/testing")),$40$0)(mac$0,bind$0);(($42$0=require("./macros/misc")),$42$0)(mac$0,bind$0);(($44$0=require("./macros/macrodef")),$44$0)(mac$0,bind$0);(($46$0=require("./macros/async")),$46$0)(mac$0,bind$0);(($48$0=require("./macros/logic")),$48$0)(mac$0,bind$0);make_expander$0=(function make_expander(pipeline$0){let generic_nodes$0;generic_nodes$0=["if","js_while","js_for","js_for_in","js_for_of","js_label","js_break","js_continue","js_return","js_delete","js_throw","js_try","js_new","js_yield"];return Expander$0(stdenv$0.fork(),generic_nodes$0,pipeline$0);});$targ$0=stdenv$0;(exports["stdenv"]=$targ$0);[];$targ$1=make_expander$0;(exports["make_expander"]=$targ$1);[];
//# sourceMappingURL=stdenv.js.map

