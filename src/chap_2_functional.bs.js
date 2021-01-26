// Generated by ReScript, PLEASE EDIT WITH CARE
'use strict';

var Curry = require("bs-platform/lib/js/curry.js");
var $$String = require("bs-platform/lib/js/string.js");
var Belt_MapString = require("bs-platform/lib/js/belt_MapString.js");

function wrapTagAroundText(tagName, text) {
  return "<" + tagName + ">" + text + "</" + tagName + ">";
}

function makeHeading1(text) {
  return wrapTagAroundText("h1", text);
}

function makeHeading2(text) {
  return wrapTagAroundText("h2", text);
}

function makeParagraph(param) {
  return wrapTagAroundText("p", param);
}

var mainHeading = wrapTagAroundText("h1", "This is the title of the document");

var subHeading = wrapTagAroundText("h2", "A simple tagline...");

var para1 = wrapTagAroundText("p", "Text content....");

var para2 = wrapTagAroundText("p", "This is the second paragraph...");

function wrapTagAroundHTML(tagName, indent, html) {
  return "<" + tagName + ">\n" + Curry._1(indent, " ") + html + "\n</" + tagName + ">";
}

function indent(x) {
  return x.repeat(2);
}

function makeDiv(param) {
  return wrapTagAroundHTML("div", indent, param);
}

var div1 = wrapTagAroundHTML("div", indent, para1);

var div2 = wrapTagAroundHTML("div", indent, para2);

function betterWrapTagAroundHTML(tag, indent, html) {
  return "<" + tag + ">\n" + Curry._1(indent, " ") + html + "\n</" + tag + ">";
}

function makeBetterDiv(param) {
  return betterWrapTagAroundHTML("div", indent, param);
}

var div3 = betterWrapTagAroundHTML("div", indent, para1);

betterWrapTagAroundHTML("div", indent, para1);

betterWrapTagAroundHTML("div", indent, para1);

betterWrapTagAroundHTML("div", (function (x) {
        return x.repeat(2);
      }), para1);

function altWrapTagAroundHTML(depth, tag, html) {
  return "<" + tag + ">\n" + " ".repeat(depth) + html + "\n</" + tag + ">";
}

function myCharRepeat(count, $$char) {
  var s = $$String.make(1, $$char);
  var _acc = s;
  var _times = count;
  while(true) {
    var times = _times;
    var acc = _acc;
    if (times < 2) {
      return acc;
    }
    var acc$prime = acc + s;
    _times = times - 1 | 0;
    _acc = acc$prime;
    continue ;
  };
}

var cache1 = Belt_MapString.set(undefined, "key1", "value1");

var cache2 = Belt_MapString.set(cache1, "key2", "value2");

var cache3 = Belt_MapString.set(cache2, "key3", "value3");

var cache4 = Belt_MapString.set(cache3, "key4", "value4");

var cache5 = Belt_MapString.set(cache4, "key5", "value5");

Belt_MapString.set(Belt_MapString.set(Belt_MapString.set(Belt_MapString.set(Belt_MapString.set(undefined, "key1", "value1"), "key2", "value2"), "key3", "value3"), "key4", "value4"), "key5", "value5");

if (Belt_MapString.size(undefined) !== Belt_MapString.size(undefined)) {
  throw {
        RE_EXN_ID: "Assert_failure",
        _1: [
          "chap_2_functional.res",
          205,
          0
        ],
        Error: new Error()
      };
}

function aFunctionWhichReturnsNothing(param) {
  
}

function whatIsThisFunction(param) {
  console.log("A debug statement....");
  
}

var cache;

var anotherCache;

var whatIsTheNatureOfTheVoid;

exports.wrapTagAroundText = wrapTagAroundText;
exports.makeHeading1 = makeHeading1;
exports.makeHeading2 = makeHeading2;
exports.makeParagraph = makeParagraph;
exports.mainHeading = mainHeading;
exports.subHeading = subHeading;
exports.para1 = para1;
exports.para2 = para2;
exports.wrapTagAroundHTML = wrapTagAroundHTML;
exports.indent = indent;
exports.makeDiv = makeDiv;
exports.div1 = div1;
exports.div2 = div2;
exports.betterWrapTagAroundHTML = betterWrapTagAroundHTML;
exports.makeBetterDiv = makeBetterDiv;
exports.div3 = div3;
exports.altWrapTagAroundHTML = altWrapTagAroundHTML;
exports.myCharRepeat = myCharRepeat;
exports.cache = cache;
exports.cache1 = cache1;
exports.cache2 = cache2;
exports.cache3 = cache3;
exports.cache4 = cache4;
exports.cache5 = cache5;
exports.anotherCache = anotherCache;
exports.whatIsTheNatureOfTheVoid = whatIsTheNatureOfTheVoid;
exports.aFunctionWhichReturnsNothing = aFunctionWhichReturnsNothing;
exports.whatIsThisFunction = whatIsThisFunction;
/* mainHeading Not a pure module */
