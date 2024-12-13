!function(i,c,d){var a=[],e={_version:"3.7.1",_config:{classPrefix:"",enableClasses:!0,enableJSClass:!0,usePrefixes:!0},_q:[],on:function(e,t){var n=this;setTimeout(function(){t(n[e])},0)},addTest:function(e,t,n){a.push({name:e,fn:t,options:n})},addAsyncTest:function(e){a.push({name:null,fn:e})}},l=function(){};l.prototype=e,l=new l;var u=[];function p(e,t){return typeof e===t}var s,n,h=c.documentElement,m="svg"===h.nodeName.toLowerCase();function f(e){var t=h.className,n=l._config.classPrefix||"";if(m&&(t=t.baseVal),l._config.enableJSClass){var o=new RegExp("(^|\\s)"+n+"no-js(\\s|$)");t=t.replace(o,"$1"+n+"js$2")}l._config.enableClasses&&(0<e.length&&(t+=" "+n+e.join(" "+n)),m?h.className.baseVal=t:h.className=t)}function y(e,t){if("object"==typeof e)for(var n in e)s(e,n)&&y(n,e[n]);else{var o=(e=e.toLowerCase()).split("."),r=l[o[0]];if(2===o.length&&(r=r[o[1]]),void 0!==r)return l;t="function"==typeof t?t():t,1===o.length?l[o[0]]=t:(!l[o[0]]||l[o[0]]instanceof Boolean||(l[o[0]]=new Boolean(l[o[0]])),l[o[0]][o[1]]=t),f([(t&&!1!==t?"":"no-")+o.join("-")]),l._trigger(e,t)}return l}function v(e){return"function"!=typeof c.createElement?c.createElement(e):m?c.createElementNS.call(c,"http://www.w3.org/2000/svg",e):c.createElement.apply(c,arguments)}s=p(n={}.hasOwnProperty,"undefined")||p(n.call,"undefined")?function(e,t){return t in e&&p(e.constructor.prototype[t],"undefined")}:function(e,t){return n.call(e,t)},e._l={},e.on=function(e,t){this._l[e]||(this._l[e]=[]),this._l[e].push(t),l.hasOwnProperty(e)&&setTimeout(function(){l._trigger(e,l[e])},0)},e._trigger=function(e,t){if(this._l[e]){var n=this._l[e];setTimeout(function(){var e;for(e=0;e<n.length;e++)(0,n[e])(t)},0),delete this._l[e]}},l._q.push(function(){e.addTest=y});var t={elem:v("modernizr")};l._q.push(function(){delete t.elem});var g={style:t.elem.style};function r(e,t,n,o){var r,i,s,a,l="modernizr",u=v("div"),f=function(){var e=c.body;return e||((e=v(m?"svg":"body")).fake=!0),e}();if(parseInt(n,10))for(;n--;)(s=v("div")).id=o?o[n]:l+(n+1),u.appendChild(s);return(r=v("style")).type="text/css",r.id="s"+l,(f.fake?f:u).appendChild(r),f.appendChild(u),r.styleSheet?r.styleSheet.cssText=e:r.appendChild(c.createTextNode(e)),u.id=l,f.fake&&(f.style.background="",f.style.overflow="hidden",a=h.style.overflow,h.style.overflow="hidden",h.appendChild(f)),i=t(u,e),f.fake?(f.parentNode.removeChild(f),h.style.overflow=a,h.offsetHeight):u.parentNode.removeChild(u),!!i}function C(e){return e.replace(/([A-Z])/g,function(e,t){return"-"+t.toLowerCase()}).replace(/^ms-/,"-ms-")}function S(e,t){var n=e.length;if("CSS"in i&&"supports"in i.CSS){for(;n--;)if(i.CSS.supports(C(e[n]),t))return!0;return!1}if("CSSSupportsRule"in i){for(var o=[];n--;)o.push("("+C(e[n])+":"+t+")");return r("@supports ("+(o=o.join(" or "))+") { #modernizr { position: absolute; } }",function(e){return"absolute"===function(e,t,n){var o;if("getComputedStyle"in i){o=getComputedStyle.call(i,e,t);var r=i.console;if(null!==o)n&&(o=o.getPropertyValue(n));else if(r)r[r.error?"error":"log"].call(r,"getComputedStyle returning null, its possible modernizr test results are inaccurate")}else o=!t&&e.currentStyle&&e.currentStyle[n];return o}(e,null,"position")})}return d}l._q.unshift(function(){delete g.style});e.testProp=function(e,t,n){return function(e,t,n,o){if(o=!p(o,"undefined")&&o,!p(n,"undefined")){var r=S(e,n);if(!p(r,"undefined"))return r}for(var i,s,a,l,u,f=["modernizr","tspan","samp"];!g.style&&f.length;)i=!0,g.modElem=v(f.shift()),g.style=g.modElem.style;function c(){i&&(delete g.style,delete g.modElem)}for(a=e.length,s=0;s<a;s++)if(l=e[s],u=g.style[l],~(""+l).indexOf("-")&&(l=l.replace(/([a-z])-([a-z])/g,function(e,t,n){return t+n.toUpperCase()}).replace(/^-/,"")),g.style[l]!==d){if(o||p(n,"undefined"))return c(),"pfx"!==t||l;try{g.style[l]=n}catch(e){}if(g.style[l]!==u)return c(),"pfx"!==t||l}return c(),!1}([e],d,t,n)};var o=e._config.usePrefixes?" -webkit- -moz- -o- -ms- ".split(" "):["",""];e._prefixes=o;var w,_=(w=i.matchMedia||i.msMatchMedia)?function(e){var t=w(e);return t&&t.matches||!1}:function(e){var t=!1;return r("@media "+e+" { #modernizr { position: absolute; } }",function(e){t="absolute"===(i.getComputedStyle?i.getComputedStyle(e,null):e.currentStyle).position}),t};e.mq=_,l.addTest("touchevents",function(){if("ontouchstart"in i||i.TouchEvent||i.DocumentTouch&&c instanceof DocumentTouch)return!0;var e=["(",o.join("touch-enabled),("),"heartz",")"].join("");return _(e)}),l.addTest("opacity",function(){var e=v("a").style;return e.cssText=o.join("opacity:.55;"),/^0.55$/.test(e.opacity)});var b="CSS"in i&&"supports"in i.CSS,T="supportsCSS"in i;l.addTest("supports",b||T),function(){var e,t,n,o,r,i;for(var s in a)if(a.hasOwnProperty(s)){if(e=[],(t=a[s]).name&&(e.push(t.name.toLowerCase()),t.options&&t.options.aliases&&t.options.aliases.length))for(n=0;n<t.options.aliases.length;n++)e.push(t.options.aliases[n].toLowerCase());for(o=p(t.fn,"function")?t.fn():t.fn,r=0;r<e.length;r++)1===(i=e[r].split(".")).length?l[i[0]]=o:(!l[i[0]]||l[i[0]]instanceof Boolean||(l[i[0]]=new Boolean(l[i[0]])),l[i[0]][i[1]]=o),u.push((o?"":"no-")+i.join("-"))}}(),f(u),delete e.addTest,delete e.addAsyncTest;for(var x=0;x<l._q.length;x++)l._q[x]();i.Modernizr=l}(window,document);