(function(){function r(e,n,t){function o(i,f){if(!n[i]){if(!e[i]){var c="function"==typeof require&&require;if(!f&&c)return c(i,!0);if(u)return u(i,!0);var a=new Error("Cannot find module '"+i+"'");throw a.code="MODULE_NOT_FOUND",a}var p=n[i]={exports:{}};e[i][0].call(p.exports,function(r){var n=e[i][1][r];return o(n||r)},p,p.exports,r,e,n,t)}return n[i].exports}for(var u="function"==typeof require&&require,i=0;i<t.length;i++)o(t[i]);return o}return r})()({1:[function(require,module,exports){
'use strict';

Object.defineProperty(exports, "__esModule", {
	value: true
});

var _constants = require('./helpers/constants.js');

var _RenderBg = require('./render-sections/RenderBg.js');

var _RenderBg2 = _interopRequireDefault(_RenderBg);

var _RenderHero = require('./render-sections/RenderHero.js');

var _RenderHero2 = _interopRequireDefault(_RenderHero);

var _RenderSkills = require('./render-sections/RenderSkills.js');

var _RenderSkills2 = _interopRequireDefault(_RenderSkills);

var _RenderExp = require('./render-sections/RenderExp.js');

var _RenderExp2 = _interopRequireDefault(_RenderExp);

var _RenderCodepens = require('./render-sections/RenderCodepens.js');

var _RenderCodepens2 = _interopRequireDefault(_RenderCodepens);

var _RenderContact = require('./render-sections/RenderContact.js');

var _RenderContact2 = _interopRequireDefault(_RenderContact);

var _RenderOldBrowserMsg = require('./render-sections/RenderOldBrowserMsg.js');

var _RenderOldBrowserMsg2 = _interopRequireDefault(_RenderOldBrowserMsg);

var _rotatingBG = require('./helpers/rotatingBG.js');

var _rotatingBG2 = _interopRequireDefault(_rotatingBG);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

var MZsite = function MZsite() {
	var init = function init() {
		if (!self.fetch) {
			(0, _RenderOldBrowserMsg2.default)();
		} else {
			_renderSections();
		}
	};

	var _fetchData = function _fetchData(jsonFile) {
		var data = fetch(jsonFile).then(function (response) {
			return response.json();
		}).then(function (content) {
			return content;
		});

		return Promise.resolve(data);
	};

	var _renderSections = function _renderSections() {
		_fetchData('./data.json').then(function (dataObj) {
			var hero = dataObj.hero,
			    skills = dataObj.skills,
			    exp = dataObj.exp,
			    codepens = dataObj.codepens,
			    contact = dataObj.contact;


			(0, _RenderBg2.default)();
			(0, _RenderHero2.default)(hero);
			(0, _RenderSkills2.default)(skills);
			(0, _RenderExp2.default)(exp);
			(0, _RenderCodepens2.default)(codepens);
			(0, _RenderContact2.default)(contact);

			_constants.BODY.classList.add('data-loaded');

			if (_isIE()) {
				_constants.BODY.classList.add('ie');
				return;
			}

			var bgSquare = document.querySelector('.bg-square');
			_handleBgRotation(bgSquare);
		});
	};

	var _handleBgRotation = function _handleBgRotation(elem) {
		var rotateBG = function rotateBG() {
			return (0, _rotatingBG2.default)(elem);
		};

		rotateBG();
		window.addEventListener('resize', rotateBG);
	};

	var _isIE = function _isIE() {
		var isIE = !!document.documentMode || !isIE && !!window.StyleMedia;

		return isIE;
	};

	return { init: init };
};

exports.default = MZsite;

},{"./helpers/constants.js":2,"./helpers/rotatingBG.js":4,"./render-sections/RenderBg.js":7,"./render-sections/RenderCodepens.js":8,"./render-sections/RenderContact.js":9,"./render-sections/RenderExp.js":10,"./render-sections/RenderHero.js":11,"./render-sections/RenderOldBrowserMsg.js":12,"./render-sections/RenderSkills.js":13}],2:[function(require,module,exports){
'use strict';

Object.defineProperty(exports, "__esModule", {
  value: true
});
var BODY = exports.BODY = document.querySelector('body');
var MAIN_WRAP = exports.MAIN_WRAP = 'main';

},{}],3:[function(require,module,exports){
'use strict';

Object.defineProperty(exports, "__esModule", {
	value: true
});
var emphasis = function emphasis(text) {
	var matchEm = text.match(/\*(.*?)\*/g);

	if (matchEm) {
		var breakSentence = text.split('*');
		var textWithEmphasis = '';

		matchEm = matchEm.map(function (str) {
			return str.replace(/\*/g, '');
		});

		breakSentence.forEach(function (el) {
			if (matchEm.includes(el)) {
				textWithEmphasis += '<em>' + el + '</em>';
			} else {
				textWithEmphasis += el;
			}
		});

		return textWithEmphasis;
	}

	return text;
};

exports.default = emphasis;

},{}],4:[function(require,module,exports){
"use strict";

Object.defineProperty(exports, "__esModule", {
	value: true
});
var rotatingBG = function rotatingBG(elem) {
	var windowH = window.innerHeight;
	var windowW = window.innerWidth;
	var largerAxis = Math.max(windowH, windowW);

	var squareSpecs = {
		hypotenuse: function hypotenuse() {
			return Math.hypot(windowH, windowW);
		},
		dimensions: function dimensions() {
			return largerAxis + (hypotenuse() - largerAxis);
		},
		position: function position() {
			return {
				top: windowH / 2 - dimensions() / 2,
				left: windowW / 2 - dimensions() / 2
			};
		}
	};

	var hypotenuse = squareSpecs.hypotenuse,
	    dimensions = squareSpecs.dimensions,
	    position = squareSpecs.position;


	elem.style.cssText = "\n\t\twidth: " + dimensions() + "px;\n\t\theight: " + dimensions() + "px;\n\t\ttop: " + position().top + "px;\n\t\tleft: " + position().left + "px;\n\t";
};

exports.default = rotatingBG;

},{}],5:[function(require,module,exports){
'use strict';

Object.defineProperty(exports, "__esModule", {
	value: true
});

var _emphasis = require('./emphasis.js');

var _emphasis2 = _interopRequireDefault(_emphasis);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

var toDOM = function toDOM(props) {
	var parent = props.parent,
	    child = props.child;

	var dataAttr = 'data-current-elem';
	var parentElems = document.querySelectorAll(parent);
	var targetElements = Object.keys(parentElems).map(function (elem) {
		return parentElems[elem];
	});

	targetElements.forEach(function (parentEl) {
		if (child) {
			child.forEach(function (childEl) {
				var newElem = document.createElement(childEl.elem);
				newElem.setAttribute(dataAttr, '');

				if (childEl.text) {
					newElem.innerHTML = (0, _emphasis2.default)(childEl.text);
				}

				for (var attrKey in childEl.attrs) {
					newElem.setAttribute(attrKey, childEl.attrs[attrKey]);
				}

				parentEl.appendChild(newElem);
				parentEl.removeAttribute(dataAttr);

				if (childEl['child']) {
					toDOM({
						parent: '[' + dataAttr + ']',
						child: childEl['child']
					});
				} else {
					newElem.removeAttribute(dataAttr);
				}
			});
		}
	});
};

exports.default = toDOM;

},{"./emphasis.js":3}],6:[function(require,module,exports){
'use strict';

var _MZsite = require('./MZsite.js');

var _MZsite2 = _interopRequireDefault(_MZsite);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

(0, _MZsite2.default)().init();

},{"./MZsite.js":1}],7:[function(require,module,exports){
'use strict';

Object.defineProperty(exports, "__esModule", {
	value: true
});

var _constants = require('../helpers/constants.js');

var _toDOM = require('../helpers/toDOM');

var _toDOM2 = _interopRequireDefault(_toDOM);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

var RenderBg = function RenderBg() {
	var heroData = {
		parent: _constants.MAIN_WRAP,
		child: [{
			elem: 'div',
			attrs: { class: 'bg-wrap' },
			child: [{
				elem: 'div',
				attrs: { class: 'bg-square' }
			}]
		}]
	};

	(0, _toDOM2.default)(heroData);
};

exports.default = RenderBg;

},{"../helpers/constants.js":2,"../helpers/toDOM":5}],8:[function(require,module,exports){
'use strict';

Object.defineProperty(exports, "__esModule", {
	value: true
});

var _toDOM = require('../helpers/toDOM');

var _toDOM2 = _interopRequireDefault(_toDOM);

var _sectionWrap = require('../site-modules/section-wrap');

var _sectionWrap2 = _interopRequireDefault(_sectionWrap);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

var RenderSkills = function RenderSkills(dataObj) {
	var title = dataObj.title,
	    pens = dataObj.pens;

	var pensList = [];

	for (var key in pens) {
		pensList.push({
			elem: 'li',
			attrs: { class: 'pen' },
			child: [{
				elem: 'a',
				attrs: {
					class: 'pen-title',
					target: '_blank',
					href: 'https://codepen.io/miguelzuleta/pen/' + key
				}
			}, {
				elem: 'iframe',
				attrs: {
					src: 'https://codepen.io/miguelzuleta/embed/preview/' + key + '/?theme-id=dark&default-tab=result&embed-version=2',
					class: 'pen-frame pen-' + key,
					title: pens[key],
					scrolling: 'no',
					frameborder: 'no',
					allowtransparency: 'true',
					allowfullscreen: 'true'
				}
			}]
		});
	}

	var pensData = (0, _sectionWrap2.default)('codepens', title, pensList);

	(0, _toDOM2.default)(pensData);
};

exports.default = RenderSkills;

},{"../helpers/toDOM":5,"../site-modules/section-wrap":14}],9:[function(require,module,exports){
'use strict';

Object.defineProperty(exports, "__esModule", {
	value: true
});

var _toDOM = require('../helpers/toDOM');

var _toDOM2 = _interopRequireDefault(_toDOM);

var _sectionWrap = require('../site-modules/section-wrap');

var _sectionWrap2 = _interopRequireDefault(_sectionWrap);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

var RenderContact = function RenderContact(dataObj) {
	var title = dataObj.title,
	    info = dataObj.info;

	var contactList = [];

	for (var key in info) {
		contactList.push({
			elem: 'li',
			child: [{
				elem: 'a',
				attrs: {
					class: 'bar-list contact-list-item',
					target: '_blank',
					href: info[key]
				},
				text: key
			}]
		});
	}

	var contactData = (0, _sectionWrap2.default)('contact', title, contactList);

	(0, _toDOM2.default)(contactData);
};

exports.default = RenderContact;

},{"../helpers/toDOM":5,"../site-modules/section-wrap":14}],10:[function(require,module,exports){
'use strict';

Object.defineProperty(exports, "__esModule", {
	value: true
});

var _toDOM = require('../helpers/toDOM');

var _toDOM2 = _interopRequireDefault(_toDOM);

var _sectionWrap = require('../site-modules/section-wrap');

var _sectionWrap2 = _interopRequireDefault(_sectionWrap);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

var RenderExp = function RenderExp(dataObj) {
	var title = dataObj.title;

	var expList = [];

	for (var key in dataObj) {
		var _dataObj$key = dataObj[key],
		    company = _dataObj$key.company,
		    duration = _dataObj$key.duration,
		    _title = _dataObj$key.title,
		    description = _dataObj$key.description;


		if (key !== 'title') {
			expList.push({
				elem: 'li',
				attrs: { class: 'job ' + key },
				child: [{
					elem: 'small',
					attrs: { class: 'duration' },
					text: duration.from + ' - ' + duration.to
				}, {
					elem: 'h4',
					attrs: { class: 'company' },
					text: company
				}, {
					elem: 'h5',
					attrs: { class: 'title' },
					text: _title
				}, {
					elem: 'p',
					attrs: { class: 'description' },
					text: description
				}]
			});
		}
	}

	var expData = (0, _sectionWrap2.default)('exp', title, expList);

	(0, _toDOM2.default)(expData);
};

exports.default = RenderExp;

},{"../helpers/toDOM":5,"../site-modules/section-wrap":14}],11:[function(require,module,exports){
'use strict';

Object.defineProperty(exports, "__esModule", {
	value: true
});

var _constants = require('../helpers/constants.js');

var _toDOM = require('../helpers/toDOM');

var _toDOM2 = _interopRequireDefault(_toDOM);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

var RenderHero = function RenderHero(dataObj) {
	var headline = dataObj.headline,
	    intro = dataObj.intro;


	var heroData = {
		parent: _constants.MAIN_WRAP,
		child: [{
			elem: 'header',
			attrs: { class: 'hero-msg-wrap' },
			child: [{
				elem: 'div',
				attrs: { class: 'hero-msg' },
				child: [{
					elem: 'h1',
					text: headline
				}, {
					elem: 'p',
					text: intro
				}]
			}]
		}]
	};

	(0, _toDOM2.default)(heroData);
};

exports.default = RenderHero;

},{"../helpers/constants.js":2,"../helpers/toDOM":5}],12:[function(require,module,exports){
'use strict';

Object.defineProperty(exports, "__esModule", {
	value: true
});

var _constants = require('../helpers/constants');

var RenderOldBrowserMsg = function RenderOldBrowserMsg() {
	_constants.BODY.classList.add('old-browser');

	var oldBrowserMsg = '\n\t\t<div class="msg">\n\t\t\t<p>Oh hi! This is Miguel.</p>\n\t\t\t<p>This page didn\'t load because your browser is too old. :(</p>\n\t\t\t<p>Have you tried <a href="https://www.google.com/chrome/">Chrome</a> or <a href="https://www.mozilla.org/en-US/firefox/new/">Firefox</a>? They\'re awesome.</p>\n\t\t</div>\n\t';
	document.querySelector(_constants.MAIN_WRAP).innerHTML = oldBrowserMsg;
};

exports.default = RenderOldBrowserMsg;

},{"../helpers/constants":2}],13:[function(require,module,exports){
'use strict';

Object.defineProperty(exports, "__esModule", {
	value: true
});

var _toDOM = require('../helpers/toDOM');

var _toDOM2 = _interopRequireDefault(_toDOM);

var _sectionWrap = require('../site-modules/section-wrap');

var _sectionWrap2 = _interopRequireDefault(_sectionWrap);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

var RenderSkills = function RenderSkills(dataObj) {
	var title = dataObj.title,
	    list = dataObj.list;


	var skillList = [];

	for (var key in list) {
		skillList.push({
			elem: 'li',
			child: [{
				elem: 'span',
				attrs: {
					class: 'bar-list skills-list-item',
					'data-score': list[key],
					style: 'width: ' + list[key] + '%;'
				},
				text: key
			}]
		});
	}

	var skillsData = (0, _sectionWrap2.default)('skills', title, skillList);

	(0, _toDOM2.default)(skillsData);
};

exports.default = RenderSkills;

},{"../helpers/toDOM":5,"../site-modules/section-wrap":14}],14:[function(require,module,exports){
'use strict';

Object.defineProperty(exports, "__esModule", {
	value: true
});

var _constants = require('../helpers/constants.js');

var sectionWrap = function sectionWrap(sectionClass, sectionTitle, sectionList) {
	return {
		parent: _constants.MAIN_WRAP,
		child: [{
			elem: 'section',
			attrs: { class: sectionClass + ' info' },
			child: [{
				elem: 'div',
				attrs: { class: 'info-wrap' },
				child: [{
					elem: 'h4',
					attrs: { class: 'info-title' },
					text: sectionTitle
				}, {
					elem: 'ul',
					attrs: { class: sectionClass + '-list' },
					child: sectionList
				}]
			}]
		}]
	};
};

exports.default = sectionWrap;

},{"../helpers/constants.js":2}]},{},[6])
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIm5vZGVfbW9kdWxlcy9icm93c2VyLXBhY2svX3ByZWx1ZGUuanMiLCJjb21wb25lbnRzL2pzL01ac2l0ZS5qcyIsImNvbXBvbmVudHMvanMvaGVscGVycy9jb25zdGFudHMuanMiLCJjb21wb25lbnRzL2pzL2hlbHBlcnMvZW1waGFzaXMuanMiLCJjb21wb25lbnRzL2pzL2hlbHBlcnMvcm90YXRpbmdCRy5qcyIsImNvbXBvbmVudHMvanMvaGVscGVycy90b0RPTS5qcyIsImNvbXBvbmVudHMvanMvbWFpbi5qcyIsImNvbXBvbmVudHMvanMvcmVuZGVyLXNlY3Rpb25zL1JlbmRlckJnLmpzIiwiY29tcG9uZW50cy9qcy9yZW5kZXItc2VjdGlvbnMvUmVuZGVyQ29kZXBlbnMuanMiLCJjb21wb25lbnRzL2pzL3JlbmRlci1zZWN0aW9ucy9SZW5kZXJDb250YWN0LmpzIiwiY29tcG9uZW50cy9qcy9yZW5kZXItc2VjdGlvbnMvUmVuZGVyRXhwLmpzIiwiY29tcG9uZW50cy9qcy9yZW5kZXItc2VjdGlvbnMvUmVuZGVySGVyby5qcyIsImNvbXBvbmVudHMvanMvcmVuZGVyLXNlY3Rpb25zL1JlbmRlck9sZEJyb3dzZXJNc2cuanMiLCJjb21wb25lbnRzL2pzL3JlbmRlci1zZWN0aW9ucy9SZW5kZXJTa2lsbHMuanMiLCJjb21wb25lbnRzL2pzL3NpdGUtbW9kdWxlcy9zZWN0aW9uLXdyYXAuanMiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6IkFBQUE7Ozs7Ozs7QUNBQTs7QUFFQTs7OztBQUNBOzs7O0FBQ0E7Ozs7QUFDQTs7OztBQUNBOzs7O0FBQ0E7Ozs7QUFDQTs7OztBQUVBOzs7Ozs7QUFFQSxJQUFJLFNBQVMsU0FBVCxNQUFTLEdBQU07QUFDbEIsS0FBSSxPQUFPLFNBQVAsSUFBTyxHQUFNO0FBQ2hCLE1BQUksQ0FBQyxLQUFLLEtBQVYsRUFBaUI7QUFDaEI7QUFDQSxHQUZELE1BRU87QUFDTjtBQUNBO0FBQ0QsRUFORDs7QUFRQSxLQUFJLGFBQWEsU0FB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QixLQUFLLEdBQUwsQ0FBakI7QUFITSxLQUZBO0FBT1AsVUFBTTtBQVBDLElBQUQ7QUFGTyxHQUFmO0FBWUE7O0FBRUQsS0FBSSxhQUFhLDJCQUFZLFFBQVosRUFBc0IsS0FBdEIsRUFBNkIsU0FBN0IsQ0FBakI7O0FBRUEsc0JBQU0sVUFBTjtBQUNBLENBdkJEOztrQkF5QmUsWTs7Ozs7Ozs7O0FDNUJmOztBQUVBLElBQU0sY0FBYyxTQUFkLFdBQWMsQ0FBQyxZQUFELEVBQWUsWUFBZixFQUE2QixXQUE3QixFQUE2QztBQUNoRSxRQUFPO0FBQ04sVUFBUSxvQkFERjtBQUVOLFNBQU8sQ0FBQztBQUNQLFNBQU0sU0FEQztBQUVQLFVBQU8sRUFBRSxPQUFVLFlBQVYsVUFBRixFQUZBO0FBR1AsVUFBTyxDQUFDO0FBQ1AsVUFBTSxLQURDO0FBRVAsV0FBTyxFQUFFLE9BQU8sV0FBVCxFQUZBO0FBR1AsV0FBTyxDQUFDO0FBQ1AsV0FBTSxJQURDO0FBRVAsWUFBTyxFQUFFLE9BQU8sWUFBVCxFQUZBO0FBR1AsV0FBTTtBQUhDLEtBQUQsRUFJSjtBQUNGLFdBQU0sSUFESjtBQUVGLFlBQU8sRUFBRSxPQUFVLFlBQVYsVUFBRixFQUZMO0FBR0YsWUFBTztBQUhMLEtBSkk7QUFIQSxJQUFEO0FBSEEsR0FBRDtBQUZELEVBQVA7QUFvQkEsQ0FyQkQ7O2tCQXVCZSxXIiwiZmlsZSI6ImdlbmVyYXRlZC5qcyIsInNvdXJjZVJvb3QiOiIiLCJzb3VyY2VzQ29udGVudCI6WyIoZnVuY3Rpb24oKXtmdW5jdGlvbiByKGUsbix0KXtmdW5jdGlvbiBvKGksZil7aWYoIW5baV0pe2lmKCFlW2ldKXt2YXIgYz1cImZ1bmN0aW9uXCI9PXR5cGVvZiByZXF1aXJlJiZyZXF1aXJlO2lmKCFmJiZjKXJldHVybiBjKGksITApO2lmKHUpcmV0dXJuIHUoaSwhMCk7dmFyIGE9bmV3IEVycm9yKFwiQ2Fubm90IGZpbmQgbW9kdWxlICdcIitpK1wiJ1wiKTt0aHJvdyBhLmNvZGU9XCJNT0RVTEVfTk9UX0ZPVU5EXCIsYX12YXIgcD1uW2ldPXtleHBvcnRzOnt9fTtlW2ldWzBdLmNhbGwocC5leHBvcnRzLGZ1bmN0aW9uKHIpe3ZhciBuPWVbaV1bMV1bcl07cmV0dXJuIG8obnx8cil9LHAscC5leHBvcnRzLHIsZSxuLHQpfXJldHVybiBuW2ldLmV4cG9ydHN9Zm9yKHZhciB1PVwiZnVuY3Rpb25cIj09dHlwZW9mIHJlcXVpcmUmJnJlcXVpcmUsaT0wO2k8dC5sZW5ndGg7aSsrKW8odFtpXSk7cmV0dXJuIG99cmV0dXJuIHJ9KSgpIiwiaW1wb3J0IHsgQk9EWSB9IGZyb20gJy4vaGVscGVycy9jb25zdGFudHMuanMnXG5cbmltcG9ydCBSZW5kZXJCZyBmcm9tICcuL3JlbmRlci1zZWN0aW9ucy9SZW5kZXJCZy5qcydcbmltcG9ydCBSZW5kZXJIZXJvIGZyb20gJy4vcmVuZGVyLXNlY3Rpb25zL1JlbmRlckhlcm8uanMnXG5pbXBvcnQgUmVuZGVyU2tpbGxzIGZyb20gJy4vcmVuZGVyLXNlY3Rpb25zL1JlbmRlclNraWxscy5qcydcbmltcG9ydCBSZW5kZXJFeHAgZnJvbSAnLi9yZW5kZXItc2VjdGlvbnMvUmVuZGVyRXhwLmpzJ1xuaW1wb3J0IFJlbmRlckNvZGVwZW5zIGZyb20gJy4vcmVuZGVyLXNlY3Rpb25zL1JlbmRlckNvZGVwZW5zLmpzJ1xuaW1wb3J0IFJlbmRlckNvbnRhY3QgZnJvbSAnLi9yZW5kZXItc2VjdGlvbnMvUmVuZGVyQ29udGFjdC5qcydcbmltcG9ydCBSZW5kZXJPbGRCcm93c2VyTXNnIGZyb20gJy4vcmVuZGVyLXNlY3Rpb25zL1JlbmRlck9sZEJyb3dzZXJNc2cuanMnXG5cbmltcG9ydCByb3RhdGluZ0JHIGZyb20gJy4vaGVscGVycy9yb3RhdGluZ0JHLmpzJ1xuXG5sZXQgTVpzaXRlID0gKCkgPT4ge1xuXHRsZXQgaW5pdCA9ICgpID0+IHtcblx0XHRpZiAoIXNlbGYuZmV0Y2gpIHtcblx0XHRcdFJlbmRlck9sZEJyb3dzZXJNc2coKVxuXHRcdH0gZWxzZSB7XG5cdFx0XHRfcmVuZGVyU2VjdGlvbnMoKVxuXHRcdH1cblx0fVxuXG5cdGxldCBfZmV0Y2hEYXRhID0ganNvbkZpbGUgPT4ge1xuXHRcdGxldCBkYXRhID0gZmV0Y2goanNvbkZpbGUpXG5cdFx0XHQudGhlbihyZXNwb25zZSA9PiByZXNwb25zZS5qc29uKCkpXG5cdFx0XHQudGhlbihjb250ZW50ID0+IGNvbnRlbnQpXG5cblx0XHRyZXR1cm4gUHJvbWlzZS5yZXNvbHZlKGRhdGEpXG5cdH1cblxuXHRsZXQgX3JlbmRlclNlY3Rpb25zID0gKCkgPT4ge1xuXHRcdF9mZXRjaERhdGEoJy4vZGF0YS5qc29uJykudGhlbihkYXRhT2JqID0+IHtcblx0XHRcdGxldCB7IGhlcm8sIHNraWxscywgZXhwLCBjb2RlcGVucywgY29udGFjdCB9ID0gZGF0YU9ialxuXG5cdFx0XHRSZW5kZXJCZygpXG5cdFx0XHRSZW5kZXJIZXJvKGhlcm8pXG5cdFx0XHRSZW5kZXJTa2lsbHMoc2tpbGxzKVxuXHRcdFx0UmVuZGVyRXhwKGV4cClcblx0XHRcdFJlbmRlckNvZGVwZW5zKGNvZGVwZW5zKVxuXHRcdFx0UmVuZGVyQ29udGFjdChjb250YWN0KVxuXG5cdFx0XHRCT0RZLmNsYXNzTGlzdC5hZGQoJ2RhdGEtbG9hZGVkJylcblxuXHRcdFx0aWYgKF9pc0lFKCkpIHtcblx0XHRcdFx0Qk9EWS5jbGFzc0xpc3QuYWRkKCdpZScpXG5cdFx0XHRcdHJldHVyblxuXHRcdFx0fVxuXG5cdFx0XHRsZXQgYmdTcXVhcmUgPSBkb2N1bWVudC5xdWVyeVNlbGVjdG9yKCcuYmctc3F1YXJlJylcblx0XHRcdF9oYW5kbGVCZ1JvdGF0aW9uKGJnU3F1YXJlKVxuXHRcdH0pXG5cdH1cblxuXHRsZXQgX2hhbmRsZUJnUm90YXRpb24gPSBlbGVtID0+IHtcblx0XHRsZXQgcm90YXRlQkcgPSAoKSA9PiByb3RhdGluZ0JHKGVsZW0pXG5cblx0XHRyb3RhdGVCRygpXG5cdFx0d2luZG93LmFkZEV2ZW50TGlzdGVuZXIoJ3Jlc2l6ZScsIHJvdGF0ZUJHKVxuXHR9XG5cblx0bGV0IF9pc0lFID0gKCkgPT4ge1xuXHRcdGxldCBpc0lFID0gISFkb2N1bWVudC5kb2N1bWVudE1vZGUgfHwgKCFpc0lFICYmICEhd2luZG93LlN0eWxlTWVkaWEpXG5cblx0XHRyZXR1cm4gaXNJRVxuXHR9XG5cblx0cmV0dXJuIHsgaW5pdCB9XG59XG5cbmV4cG9ydCBkZWZhdWx0IE1ac2l0ZVxuIiwiZXhwb3J0IGNvbnN0IEJPRFkgPSBkb2N1bWVudC5xdWVyeVNlbGVjdG9yKCdib2R5JylcbmV4cG9ydCBjb25zdCBNQUlOX1dSQVAgPSAnbWFpbidcbiIsImNvbnN0IGVtcGhhc2lzID0gdGV4dCA9PiB7XG5cdGxldCBtYXRjaEVtID0gdGV4dC5tYXRjaCgvXFwqKC4qPylcXCovZylcblxuXHRpZiAobWF0Y2hFbSkge1xuXHRcdGxldCBicmVha1NlbnRlbmNlID0gdGV4dC5zcGxpdCgnKicpXG5cdFx0bGV0IHRleHRXaXRoRW1waGFzaXMgPSAnJ1xuXG5cdFx0bWF0Y2hFbSA9IG1hdGNoRW0ubWFwKHN0ciA9PiBzdHIucmVwbGFjZSgvXFwqL2csICcnKSlcblxuXHRcdGJyZWFrU2VudGVuY2UuZm9yRWFjaChlbCA9PiB7XG5cdFx0XHRpZiAobWF0Y2hFbS5pbmNsdWRlcyhlbCkpIHtcblx0XHRcdFx0dGV4dFdpdGhFbXBoYXNpcyArPSBgPGVtPiR7ZWx9PC9lbT5gXG5cdFx0XHR9IGVsc2Uge1xuXHRcdFx0XHR0ZXh0V2l0aEVtcGhhc2lzICs9IGVsXG5cdFx0XHR9XG5cdFx0fSlcblxuXHRcdHJldHVybiB0ZXh0V2l0aEVtcGhhc2lzXG5cdH1cblxuXHRyZXR1cm4gdGV4dFxufVxuXG5leHBvcnQgZGVmYXVsdCBlbXBoYXNpc1xuIiwibGV0IHJvdGF0aW5nQkcgPSBlbGVtID0+IHtcblx0bGV0IHdpbmRvd0ggPSB3aW5kb3cuaW5uZXJIZWlnaHRcblx0bGV0IHdpbmRvd1cgPSB3aW5kb3cuaW5uZXJXaWR0aFxuXHRsZXQgbGFyZ2VyQXhpcyA9IE1hdGgubWF4KHdpbmRvd0gsIHdpbmRvd1cpXG5cblx0bGV0IHNxdWFyZVNwZWNzID0ge1xuXHRcdGh5cG90ZW51c2U6IGZ1bmN0aW9uKCkge1xuXHRcdFx0cmV0dXJuIE1hdGguaHlwb3Qod2luZG93SCwgd2luZG93Vylcblx0XHR9LFxuXHRcdGRpbWVuc2lvbnM6IGZ1bmN0aW9uKCkge1xuXHRcdFx0cmV0dXJuIGxhcmdlckF4aXMgKyAoaHlwb3RlbnVzZSgpIC0gbGFyZ2VyQXhpcylcblx0XHR9LFxuXHRcdHBvc2l0aW9uOiBmdW5jdGlvbigpIHtcblx0XHRcdHJldHVybiB7XG5cdFx0XHRcdHRvcDogKHdpbmRvd0ggLyAyKSAtIChkaW1lbnNpb25zKCkgLyAyKSxcblx0XHRcdFx0bGVmdDogKHdpbmRvd1cgLyAyKSAtIChkaW1lbnNpb25zKCkgLyAyKVxuXHRcdFx0fVxuXHRcdH1cblx0fVxuXG5cdGxldCB7IGh5cG90ZW51c2UsIGRpbWVuc2lvbnMsIHBvc2l0aW9uIH0gPSBzcXVhcmVTcGVjc1xuXG5cdGVsZW0uc3R5bGUuY3NzVGV4dCA9IGBcblx0XHR3aWR0aDogJHtkaW1lbnNpb25zKCl9cHg7XG5cdFx0aGVpZ2h0OiAke2RpbWVuc2lvbnMoKX1weDtcblx0XHR0b3A6ICR7cG9zaXRpb24oKS50b3B9cHg7XG5cdFx0bGVmdDogJHtwb3NpdGlvbigpLmxlZnR9cHg7XG5cdGBcbn1cblxuZXhwb3J0IGRlZmF1bHQgcm90YXRpbmdCR1xuIiwiaW1wb3J0IGVtcGhhc2lzIGZyb20gJy4vZW1waGFzaXMuanMnXG5cbmNvbnN0IHRvRE9NID0gcHJvcHMgPT4ge1xuXHRsZXQgeyBwYXJlbnQsIGNoaWxkIH0gPSBwcm9wc1xuXHRsZXQgZGF0YUF0dHIgPSAnZGF0YS1jdXJyZW50LWVsZW0nXG5cdGxldCBwYXJlbnRFbGVtcyA9IGRvY3VtZW50LnF1ZXJ5U2VsZWN0b3JBbGwocGFyZW50KVxuXHRsZXQgdGFyZ2V0RWxlbWVudHMgPSBPYmplY3Qua2V5cyhwYXJlbnRFbGVtcykubWFwKGVsZW0gPT4gcGFyZW50RWxlbXNbZWxlbV0pXG5cblx0dGFyZ2V0RWxlbWVudHMuZm9yRWFjaChwYXJlbnRFbCA9PiB7XG5cdFx0aWYgKGNoaWxkKSB7XG5cdFx0XHRjaGlsZC5mb3JFYWNoKGNoaWxkRWwgPT4ge1xuXHRcdFx0XHRsZXQgbmV3RWxlbSA9IGRvY3VtZW50LmNyZWF0ZUVsZW1lbnQoY2hpbGRFbC5lbGVtKVxuXHRcdFx0XHRuZXdFbGVtLnNldEF0dHJpYnV0ZShkYXRhQXR0ciwgJycpXG5cblx0XHRcdFx0aWYgKGNoaWxkRWwudGV4dCkge1xuXHRcdFx0XHRcdG5ld0VsZW0uaW5uZXJIVE1MID0gZW1waGFzaXMoY2hpbGRFbC50ZXh0KTtcblx0XHRcdFx0fVxuXG5cdFx0XHRcdGZvciAobGV0IGF0dHJLZXkgaW4gY2hpbGRFbC5hdHRycykge1xuXHRcdFx0XHRcdG5ld0VsZW0uc2V0QXR0cmlidXRlKGF0dHJLZXksIGNoaWxkRWwuYXR0cnNbYXR0cktleV0pXG5cdFx0XHRcdH1cblxuXHRcdFx0XHRwYXJlbnRFbC5hcHBlbmRDaGlsZChuZXdFbGVtKVxuXHRcdFx0XHRwYXJlbnRFbC5yZW1vdmVBdHRyaWJ1dGUoZGF0YUF0dHIpXG5cblxuXHRcdFx0XHRpZiAoY2hpbGRFbFsnY2hpbGQnXSkge1xuXHRcdFx0XHRcdHRvRE9NKHtcblx0XHRcdFx0XHRcdHBhcmVudDogYFske2RhdGFBdHRyfV1gLFxuXHRcdFx0XHRcdFx0Y2hpbGQ6IGNoaWxkRWxbJ2NoaWxkJ11cblx0XHRcdFx0XHR9KVxuXHRcdFx0XHR9IGVsc2Uge1xuXHRcdFx0XHRcdG5ld0VsZW0ucmVtb3ZlQXR0cmlidXRlKGRhdGFBdHRyKVxuXHRcdFx0XHR9XG5cdFx0XHR9KVxuXHRcdH1cblx0fSlcbn1cblxuZXhwb3J0IGRlZmF1bHQgdG9ET01cbiIsImltcG9ydCBNWnNpdGUgZnJvbSAnLi9NWnNpdGUuanMnXG5cbk1ac2l0ZSgpLmluaXQoKVxuIiwiaW1wb3J0IHsgTUFJTl9XUkFQIH0gZnJvbSAnLi4vaGVscGVycy9jb25zdGFudHMuanMnXG5pbXBvcnQgdG9ET00gZnJvbSAnLi4vaGVscGVycy90b0RPTSdcblxubGV0IFJlbmRlckJnID0gKCkgPT4ge1xuXHRsZXQgaGVyb0RhdGEgPSB7XG5cdFx0cGFyZW50OiBNQUlOX1dSQVAsXG5cdFx0Y2hpbGQ6IFt7XG5cdFx0XHRlbGVtOiAnZGl2Jyxcblx0XHRcdGF0dHJzOiB7IGNsYXNzOiAnYmctd3JhcCcgfSxcblx0XHRcdGNoaWxkOiBbe1xuXHRcdFx0XHRlbGVtOiAnZGl2Jyxcblx0XHRcdFx0YXR0cnM6IHsgY2xhc3M6ICdiZy1zcXVhcmUnIH1cblx0XHRcdH1dXG5cdFx0fV1cblx0fVxuXG5cdHRvRE9NKGhlcm9EYXRhKVxufVxuXG5leHBvcnQgZGVmYXVsdCBSZW5kZXJCZ1xuIiwiaW1wb3J0IHRvRE9NIGZyb20gJy4uL2hlbHBlcnMvdG9ET00nXG5pbXBvcnQgc2VjdGlvbldyYXAgZnJvbSAnLi4vc2l0ZS1tb2R1bGVzL3NlY3Rpb24td3JhcCdcblxubGV0IFJlbmRlclNraWxscyA9IGRhdGFPYmogPT4ge1xuXHRsZXQgeyB0aXRsZSwgcGVucyB9ID0gZGF0YU9ialxuXHRsZXQgcGVuc0xpc3QgPSBbXVxuXG5cdGZvcihsZXQga2V5IGluIHBlbnMpIHtcblx0XHRwZW5zTGlzdC5wdXNoKHtcblx0XHRcdGVsZW06ICdsaScsXG5cdFx0XHRhdHRyczogeyBjbGFzczogJ3BlbicgfSxcblx0XHRcdGNoaWxkOiBbe1xuXHRcdFx0XHRlbGVtOiAnYScsXG5cdFx0XHRcdGF0dHJzOiB7XG5cdFx0XHRcdFx0Y2xhc3M6ICdwZW4tdGl0bGUnLFxuXHRcdFx0XHRcdHRhcmdldDogJ19ibGFuaycsXG5cdFx0XHRcdFx0aHJlZjogYGh0dHBzOi8vY29kZXBlbi5pby9taWd1ZWx6dWxldGEvcGVuLyR7a2V5fWBcblx0XHRcdFx0fVxuXHRcdFx0fSwge1xuXHRcdFx0XHRlbGVtOiAnaWZyYW1lJyxcblx0XHRcdFx0YXR0cnM6IHtcblx0XHRcdFx0XHRzcmM6IGBodHRwczovL2NvZGVwZW4uaW8vbWlndWVsenVsZXRhL2VtYmVkL3ByZXZpZXcvJHtrZXl9Lz90aGVtZS1pZD1kYXJrJmRlZmF1bHQtdGFiPXJlc3VsdCZlbWJlZC12ZXJzaW9uPTJgLFxuXHRcdFx0XHRcdGNsYXNzOiBgcGVuLWZyYW1lIHBlbi0ke2tleX1gLFxuXHRcdFx0XHRcdHRpdGxlOiBwZW5zW2tleV0sXG5cdFx0XHRcdFx0c2Nyb2xsaW5nOiAnbm8nLFxuXHRcdFx0XHRcdGZyYW1lYm9yZGVyOidubycsXG5cdFx0XHRcdFx0YWxsb3d0cmFuc3BhcmVuY3k6ICd0cnVlJyxcblx0XHRcdFx0XHRhbGxvd2Z1bGxzY3JlZW46ICd0cnVlJ1xuXHRcdFx0XHR9XG5cdFx0XHR9XVxuXHRcdH0pXG5cdH1cblxuXHRsZXQgcGVuc0RhdGEgPSBzZWN0aW9uV3JhcCgnY29kZXBlbnMnLCB0aXRsZSwgcGVuc0xpc3QpXG5cblx0dG9ET00ocGVuc0RhdGEpXG59XG5cbmV4cG9ydCBkZWZhdWx0IFJlbmRlclNraWxsc1xuIiwiaW1wb3J0IHRvRE9NIGZyb20gJy4uL2hlbHBlcnMvdG9ET00nXG5pbXBvcnQgc2VjdGlvbldyYXAgZnJvbSAnLi4vc2l0ZS1tb2R1bGVzL3NlY3Rpb24td3JhcCdcblxubGV0IFJlbmRlckNvbnRhY3QgPSBkYXRhT2JqID0+IHtcblx0bGV0IHsgdGl0bGUsIGluZm8gfSA9IGRhdGFPYmpcblx0bGV0IGNvbnRhY3RMaXN0ID0gW11cblxuXHRmb3IobGV0IGtleSBpbiBpbmZvKSB7XG5cdFx0Y29udGFjdExpc3QucHVzaCh7XG5cdFx0XHRlbGVtOiAnbGknLFxuXHRcdFx0Y2hpbGQ6IFt7XG5cdFx0XHRcdGVsZW06ICdhJyxcblx0XHRcdFx0YXR0cnM6IHtcblx0XHRcdFx0XHRjbGFzczogJ2Jhci1saXN0IGNvbnRhY3QtbGlzdC1pdGVtJyxcblx0XHRcdFx0XHR0YXJnZXQ6ICdfYmxhbmsnLFxuXHRcdFx0XHRcdGhyZWY6IGluZm9ba2V5XVxuXHRcdFx0XHR9LFxuXHRcdFx0XHR0ZXh0OiBrZXlcblx0XHRcdH1dXG5cdFx0fSlcblx0fVxuXG5cdGxldCBjb250YWN0RGF0YSA9IHNlY3Rpb25XcmFwKCdjb250YWN0JywgdGl0bGUsIGNvbnRhY3RMaXN0KVxuXG5cdHRvRE9NKGNvbnRhY3REYXRhKVxufVxuXG5leHBvcnQgZGVmYXVsdCBSZW5kZXJDb250YWN0XG4iLCJpbXBvcnQgdG9ET00gZnJvbSAnLi4vaGVscGVycy90b0RPTSdcbmltcG9ydCBzZWN0aW9uV3JhcCBmcm9tICcuLi9zaXRlLW1vZHVsZXMvc2VjdGlvbi13cmFwJ1xuXG5sZXQgUmVuZGVyRXhwID0gZGF0YU9iaiA9PiB7XG5cdGxldCB7IHRpdGxlIH0gPSBkYXRhT2JqXG5cdGxldCBleHBMaXN0ID0gW11cblxuXHRmb3IobGV0IGtleSBpbiBkYXRhT2JqKSB7XG5cdFx0bGV0IHsgY29tcGFueSwgZHVyYXRpb24sIHRpdGxlLCBkZXNjcmlwdGlvbiB9ID0gZGF0YU9ialtrZXldXG5cblx0XHRpZiAoa2V5ICE9PSAndGl0bGUnKSB7XG5cdFx0XHRleHBMaXN0LnB1c2goe1xuXHRcdFx0XHRlbGVtOiAnbGknLFxuXHRcdFx0XHRhdHRyczogeyBjbGFzczogYGpvYiAke2tleX1gIH0sXG5cdFx0XHRcdGNoaWxkOiBbe1xuXHRcdFx0XHRcdGVsZW06ICdzbWFsbCcsXG5cdFx0XHRcdFx0YXR0cnM6IHsgY2xhc3M6ICdkdXJhdGlvbicgfSxcblx0XHRcdFx0XHR0ZXh0OiBgJHtkdXJhdGlvbi5mcm9tfSAtICR7ZHVyYXRpb24udG99YFxuXHRcdFx0XHR9LCB7XG5cdFx0XHRcdFx0ZWxlbTogJ2g0Jyxcblx0XHRcdFx0XHRhdHRyczogeyBjbGFzczogJ2NvbXBhbnknIH0sXG5cdFx0XHRcdFx0dGV4dDogY29tcGFueVxuXHRcdFx0XHR9LCB7XG5cdFx0XHRcdFx0ZWxlbTogJ2g1Jyxcblx0XHRcdFx0XHRhdHRyczogeyBjbGFzczogJ3RpdGxlJyB9LFxuXHRcdFx0XHRcdHRleHQ6IHRpdGxlXG5cdFx0XHRcdH0sIHtcblx0XHRcdFx0XHRlbGVtOiAncCcsXG5cdFx0XHRcdFx0YXR0cnM6IHsgY2xhc3M6ICdkZXNjcmlwdGlvbicgfSxcblx0XHRcdFx0XHR0ZXh0OiBkZXNjcmlwdGlvblxuXHRcdFx0XHR9XVxuXHRcdFx0fSlcblx0XHR9XG5cdH1cblxuXHRsZXQgZXhwRGF0YSA9IHNlY3Rpb25XcmFwKCdleHAnLCB0aXRsZSwgZXhwTGlzdClcblxuXHR0b0RPTShleHBEYXRhKVxufVxuXG5leHBvcnQgZGVmYXVsdCBSZW5kZXJFeHBcbiIsImltcG9ydCB7IE1BSU5fV1JBUCB9IGZyb20gJy4uL2hlbHBlcnMvY29uc3RhbnRzLmpzJ1xuaW1wb3J0IHRvRE9NIGZyb20gJy4uL2hlbHBlcnMvdG9ET00nXG5cbmxldCBSZW5kZXJIZXJvID0gZGF0YU9iaiA9PiB7XG5cdGxldCB7IGhlYWRsaW5lLCBpbnRybyB9ID0gZGF0YU9ialxuXG5cdGxldCBoZXJvRGF0YSA9IHtcblx0XHRwYXJlbnQ6IE1BSU5fV1JBUCxcblx0XHRjaGlsZDogW3tcblx0XHRcdGVsZW06ICdoZWFkZXInLFxuXHRcdFx0YXR0cnM6IHsgY2xhc3M6ICdoZXJvLW1zZy13cmFwJyB9LFxuXHRcdFx0Y2hpbGQ6IFt7XG5cdFx0XHRcdGVsZW06ICdkaXYnLFxuXHRcdFx0XHRhdHRyczogeyBjbGFzczogJ2hlcm8tbXNnJyB9LFxuXHRcdFx0XHRjaGlsZDogW3tcblx0XHRcdFx0XHRlbGVtOiAnaDEnLFxuXHRcdFx0XHRcdHRleHQ6IGhlYWRsaW5lXG5cdFx0XHRcdH0sIHtcblx0XHRcdFx0XHRlbGVtOiAncCcsXG5cdFx0XHRcdFx0dGV4dDogaW50cm9cblx0XHRcdFx0fV1cblx0XHRcdH1dXG5cdFx0fV1cblx0fVxuXG5cdHRvRE9NKGhlcm9EYXRhKVxufVxuXG5leHBvcnQgZGVmYXVsdCBSZW5kZXJIZXJvXG4iLCJpbXBvcnQgeyBCT0RZLCBNQUlOX1dSQVAgfSBmcm9tICcuLi9oZWxwZXJzL2NvbnN0YW50cydcblxubGV0IFJlbmRlck9sZEJyb3dzZXJNc2cgPSAoKSA9PiB7XG5cdEJPRFkuY2xhc3NMaXN0LmFkZCgnb2xkLWJyb3dzZXInKVxuXG5cdGxldCBvbGRCcm93c2VyTXNnID0gYFxuXHRcdDxkaXYgY2xhc3M9XCJtc2dcIj5cblx0XHRcdDxwPk9oIGhpISBUaGlzIGlzIE1pZ3VlbC48L3A+XG5cdFx0XHQ8cD5UaGlzIHBhZ2UgZGlkbid0IGxvYWQgYmVjYXVzZSB5b3VyIGJyb3dzZXIgaXMgdG9vIG9sZC4gOig8L3A+XG5cdFx0XHQ8cD5IYXZlIHlvdSB0cmllZCA8YSBocmVmPVwiaHR0cHM6Ly93d3cuZ29vZ2xlLmNvbS9jaHJvbWUvXCI+Q2hyb21lPC9hPiBvciA8YSBocmVmPVwiaHR0cHM6Ly93d3cubW96aWxsYS5vcmcvZW4tVVMvZmlyZWZveC9uZXcvXCI+RmlyZWZveDwvYT4/IFRoZXkncmUgYXdlc29tZS48L3A+XG5cdFx0PC9kaXY+XG5cdGBcbiBcdGRvY3VtZW50LnF1ZXJ5U2VsZWN0b3IoTUFJTl9XUkFQKS5pbm5lckhUTUwgPSBvbGRCcm93c2VyTXNnXG59XG5cbmV4cG9ydCBkZWZhdWx0IFJlbmRlck9sZEJyb3dzZXJNc2dcbiIsImltcG9ydCB0b0RPTSBmcm9tICcuLi9oZWxwZXJzL3RvRE9NJ1xuaW1wb3J0IHNlY3Rpb25XcmFwIGZyb20gJy4uL3NpdGUtbW9kdWxlcy9zZWN0aW9uLXdyYXAnXG5cbmxldCBSZW5kZXJTa2lsbHMgPSBkYXRhT2JqID0+IHtcblx0bGV0IHsgdGl0bGUsIGxpc3QgfSA9IGRhdGFPYmpcblxuXHRsZXQgc2tpbGxMaXN0ID0gW11cblxuXHRmb3IobGV0IGtleSBpbiBsaXN0KSB7XG5cdFx0c2tpbGxMaXN0LnB1c2goe1xuXHRcdFx0ZWxlbTogJ2xpJyxcblx0XHRcdGNoaWxkOiBbe1xuXHRcdFx0XHRlbGVtOiAnc3BhbicsXG5cdFx0XHRcdGF0dHJzOiB7XG5cdFx0XHRcdFx0Y2xhc3M6ICdiYXItbGlzdCBza2lsbHMtbGlzdC1pdGVtJyxcblx0XHRcdFx0XHQnZGF0YS1zY29yZSc6IGxpc3Rba2V5XSxcblx0XHRcdFx0XHRzdHlsZTogYHdpZHRoOiAke2xpc3Rba2V5XX0lO2Bcblx0XHRcdFx0fSxcblx0XHRcdFx0dGV4dDoga2V5XG5cdFx0XHR9XVxuXHRcdH0pXG5cdH1cblxuXHRsZXQgc2tpbGxzRGF0YSA9IHNlY3Rpb25XcmFwKCdza2lsbHMnLCB0aXRsZSwgc2tpbGxMaXN0KVxuXG5cdHRvRE9NKHNraWxsc0RhdGEpXG59XG5cbmV4cG9ydCBkZWZhdWx0IFJlbmRlclNraWxsc1xuIiwiaW1wb3J0IHsgTUFJTl9XUkFQIH0gZnJvbSAnLi4vaGVscGVycy9jb25zdGFudHMuanMnXG5cbmNvbnN0IHNlY3Rpb25XcmFwID0gKHNlY3Rpb25DbGFzcywgc2VjdGlvblRpdGxlLCBzZWN0aW9uTGlzdCkgPT4ge1xuXHRyZXR1cm4ge1xuXHRcdHBhcmVudDogTUFJTl9XUkFQLFxuXHRcdGNoaWxkOiBbe1xuXHRcdFx0ZWxlbTogJ3NlY3Rpb24nLFxuXHRcdFx0YXR0cnM6IHsgY2xhc3M6IGAke3NlY3Rpb25DbGFzc30gaW5mb2B9LFxuXHRcdFx0Y2hpbGQ6IFt7XG5cdFx0XHRcdGVsZW06ICdkaXYnLFxuXHRcdFx0XHRhdHRyczogeyBjbGFzczogJ2luZm8td3JhcCcgfSxcblx0XHRcdFx0Y2hpbGQ6IFt7XG5cdFx0XHRcdFx0ZWxlbTogJ2g0Jyxcblx0XHRcdFx0XHRhdHRyczogeyBjbGFzczogJ2luZm8tdGl0bGUnIH0sXG5cdFx0XHRcdFx0dGV4dDogc2VjdGlvblRpdGxlXG5cdFx0XHRcdH0sIHtcblx0XHRcdFx0XHRlbGVtOiAndWwnLFxuXHRcdFx0XHRcdGF0dHJzOiB7IGNsYXNzOiBgJHtzZWN0aW9uQ2xhc3N9LWxpc3RgIH0sXG5cdFx0XHRcdFx0Y2hpbGQ6IHNlY3Rpb25MaXN0XG5cdFx0XHRcdH1dXG5cdFx0XHR9XVxuXHRcdH1dXG5cdH1cbn1cblxuZXhwb3J0IGRlZmF1bHQgc2VjdGlvbldyYXBcbiJdfQ==
