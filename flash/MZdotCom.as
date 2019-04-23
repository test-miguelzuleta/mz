package 
{
	/*-------------------------------------------------------
	IMPORTS*/
	import flash.net.URLRequest;
	import flash.net.navigateToURL;

	import flash.display.*;
	import flash.display.SimpleButton;

	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.events.ProgressEvent;
	import flash.text.TextField;
	import flash.display.Loader;

	import flash.events.TimerEvent;
	import flash.utils.Timer;

	import fl.transitions.Tween;
	import fl.transitions.easing.*;
	import fl.transitions.TweenEvent;

	import flash.events.*;
	import flash.net.URLLoader;
	import flash.net.URLLoaderDataFormat;
	import flash.net.URLRequest;
	import flash.net.URLVariables;
	import flash.net.sendToURL;
	import flash.net.URLRequestMethod;

	public class MZdotCom extends MovieClip
	{
		/*-------------------------------------------------------
		ALL FREAKING VARIABLES*/
		
		// MZ BUTTON
		//CORP ID VARS
		// CORP ID TWEEN
		private var corpID_oneX:Number = 2013.2;
		private var corpID_oneY:Number = 910;

		private var corpID_twoX:Number = 1208.8;
		private var corpID_twoY:Number = 910;

		private var corpID_threeX:Number = 404.3;
		private var corpID_threeY:Number = 910;

		private var corpID_fourX:Number = -400.1;
		private var corpID_fourY:Number = 910;

		private var corpID_fiveX:Number = -1203.3;
		private var corpID_fiveY:Number = 910;

		private var corpID_xTween:Tween;
		private var corpID_yTween:Tween;

		// M7 TWEEN
		private var M7_oneX:Number = 395;
		private var M7_oneY:Number = 0;

		private var M7_twoX:Number = 395;
		private var M7_twoY:Number = -400;

		private var M7_threeX:Number = 395;
		private var M7_threeY:Number = -800;

		private var M7_xTween:Tween;
		private var M7_yTween:Tween;

		// EPIC INVENTIONS TWEEN
		private var EI_oneX:Number = 395;
		private var EI_oneY:Number = 0;

		private var EI_twoX:Number = 395;
		private var EI_twoY:Number = -400;

		private var EI_threeX:Number = 395;
		private var EI_threeY:Number = -800;

		private var EI_fourX:Number = 395;
		private var EI_fourY:Number = -1200;

		private var EI_xTween:Tween;
		private var EI_yTween:Tween;

		// EPIC DUEL TWEEN
		private var ED_oneX:Number = 395;
		private var ED_oneY:Number = 0;

		private var ED_twoX:Number = 395;
		private var ED_twoY:Number = -400;

		private var ED_threeX:Number = 395;
		private var ED_threeY:Number = -800;

		private var ED_xTween:Tween;
		private var ED_yTween:Tween;

		// COLEGIO MUNDO MONTESSORI TWEEN
		private var CMM_oneX:Number = 395;
		private var CMM_oneY:Number = 0;

		private var CMM_twoX:Number = 395;
		private var CMM_twoY:Number = -400;

		private var CMM_xTween:Tween;
		private var CMM_yTween:Tween;

		// ALIEN COMPANY TWEEN
		private var ALIEN_oneX:Number = 395;
		private var ALIEN_oneY:Number = 0;

		private var ALIEN_twoX:Number = 395;
		private var ALIEN_twoY:Number = -400;

		private var ALIEN_xTween:Tween;
		private var ALIEN_yTween:Tween;

		//POSTERS VARS
		// POSTERS TWEEN
		private var posters_oneX:Number = 0;
		private var posters_oneY:Number = 110.3;

		private var posters_twoX:Number = -800;
		private var posters_twoY:Number = 110.3;

		private var posters_xTween:Tween;
		private var posters_yTween:Tween;

		//WEB VARS
		//WEB TWEEN
		/*private var web_oneX:Number = 0;
		private var web_oneY:Number = 110.3;

		private var web_twoX:Number = -800;
		private var web_twoY:Number = 110.3;

		private var web_xTween:Tween;
		private var web_yTween:Tween;*/

		//OTHER VARS
		//OTHER TWEEN
		private var other_oneX:Number = 0;
		private var other_oneY:Number = 110.3;

		private var other_twoX:Number = -800;
		private var other_twoY:Number = 110.3;

		private var other_threeX:Number = -1600;
		private var other_threeY:Number = 110.3;

		private var other_xTween:Tween;
		private var other_yTween:Tween;

		//salty tween
		private var SALTY_oneX:Number = 1607.3;
		private var SALTY_oneY:Number = 0;

		private var SALTY_twoX:Number = 1607.3;
		private var SALTY_twoY:Number = -400;

		private var SALTY_xTween:Tween;
		private var SALTY_yTween:Tween;

		//LOAD RESUME
		//private var uploadResume:Loader = new Loader;
		private var requestResume:URLRequest;

		// LOAD POSTERS VARS
		private var _loader:Loader;
		private var _urlRequest:URLRequest;

		//LOAD FORM VARS
		private var hideThanksTxt:Timer = new Timer(3000, 1);
		
		//PHP FORM LOAD VARS
		var variables:URLVariables;
		var varSend:URLRequest;
		var varLoader:URLLoader;


		/*-------------------------------------------------------
		CONSTRUCTOR FUNCTION*/
		public function MZdotCom():void
		{
			
			variables = new URLVariables();			
			
			varSend = new URLRequest("http://www.miguelzuleta.com/contact_parse.php");
			varLoader = new URLLoader();
			
			varSend.method = URLRequestMethod.POST;
			varSend.data = variables;			
			
			//LOADER
			numbers_mc.visible = false;
			
			//BUTTONS
			MZ_btn.buttonMode = true;
			main_image_mc.visible = true;
			main_image_mc.main_Eng_mc.visible = true;
			main_image_mc.main_Spa_mc.visible = false;

			corpID_mc.visible = false;
			corpID_lowBar_mc.visible = false;
			corporate_gray_btn.visible = false;
			corporate_btn.buttonMode = true;

			posters_mc.visible = false;
			posters_lowBar_mc.visible = false;
			posters_gray_btn.visible = false;
			posters_btn.buttonMode = true;

			web_mc.visible = false;
			web_lowBar_mc.visible = false;
			web_gray_btn.visible = false;
			web_btn.buttonMode = true;

			other_mc.visible = false;
			other_lowBar_mc.visible = false;
			other_gray_btn.visible = false;
			other_btn.buttonMode = true;

			resume_mc.visible = false;
			resume_gray_btn.visible = false;
			resume_btn.buttonMode = true;

			about_mc.visible = false;
			about_gray_btn.visible = false;
			about_btn.buttonMode = true;

			//LANGUAGE BUTTONS & TEXT LANGUAGE CHANGE

			topTextEnglish_mc.visible = true;
			topTextSpanish_mc.visible = false;

			eng_lang_black_btn.visible = true;
			esp_lang_black_btn.visible = false;
			eng_lang_grey_btn.visible = false;
			esp_lang_grey_btn.visible = false;

			// corp id text
			corpID_mc.M7_Englishtext_mc.visible = true;
			corpID_mc.EI_Englishtext_mc.visible = true;
			corpID_mc.ED_Englishtext_mc.visible = true;
			corpID_mc.CMM_Englishtext_mc.visible = true;
			corpID_mc.alien_Englishtext_mc.visible = true;

			corpID_mc.M7_Spanishtext_mc.visible = false;
			corpID_mc.EI_Spanishtext_mc.visible = false;
			corpID_mc.ED_Spanishtext_mc.visible = false;
			corpID_mc.CMM_Spanishtext_mc.visible = false;
			corpID_mc.alien_Spanishtext_mc.visible = false;

			// posters text
			posters_mc.cadd_Englishtext_mc.visible = true;
			posters_mc.bush_Englishtext_mc.visible = true;

			posters_mc.cadd_Spanishtext_mc.visible = false;
			posters_mc.bush_Spanishtext_mc.visible = false;

			// web text
			web_mc.cmmWeb_Englishtext_mc.visible = true;
			//web_mc.dwayneWeb_Englishtext_mc.visible = true;

			web_mc.cmmWeb_Spanishtext_mc.visible = false;
			//web_mc.dwayneWeb_Spanishtext_mc.visible = false;

			// other text
			other_mc.stamps_Englishtext_mc.visible = true;
			other_mc.calendar_Englishtext_mc.visible = true;
			other_mc.salty_Englishtext_mc.visible = true;

			other_mc.stamps_Spanishtext_mc.visible = false;
			other_mc.calendar_Spanishtext_mc.visible = false;
			other_mc.salty_Spanishtext_mc.visible = false;

			//resume text
			resume_mc.resume_Englishtext_mc.visible = true;
			resume_mc.resume_Spanishtext_mc.visible = false;

			//quote text
			about_mc.form_mc.quote_Englishtext_mc.visible = true;
			about_mc.form_mc.quote_Spanishtext_mc.visible = false;
			about_mc.form_mc.submit_eng_txt.visible = true;
			about_mc.form_mc.submit_spa_txt.visible = false;


			//BUTTON SIZE CHANGE
			corporate_btn.width = topTextEnglish_mc.corporate_eng_txt.width;
			corporate_btn.x = topTextEnglish_mc.corporate_eng_txt.x;
			corporate_btn.y = topTextEnglish_mc.corporate_eng_txt.y;

			posters_btn.width = topTextEnglish_mc.posters_eng_txt.width;
			posters_btn.x = topTextEnglish_mc.posters_eng_txt.x;
			posters_btn.y = topTextEnglish_mc.posters_eng_txt.y;

			web_btn.width = topTextEnglish_mc.web_eng_txt.width;
			web_btn.x = topTextEnglish_mc.web_eng_txt.x;
			web_btn.y = topTextEnglish_mc.web_eng_txt.y;

			other_btn.width = topTextEnglish_mc.other_eng_txt.width;
			other_btn.x = topTextEnglish_mc.other_eng_txt.x;
			other_btn.y = topTextEnglish_mc.other_eng_txt.y;

			resume_btn.width = topTextEnglish_mc.resume_eng_txt.width;
			resume_btn.x = topTextEnglish_mc.resume_eng_txt.x;
			resume_btn.y = topTextEnglish_mc.resume_eng_txt.y;

			about_btn.width = topTextEnglish_mc.about_eng_txt.width;
			about_btn.x = topTextEnglish_mc.about_eng_txt.x;
			about_btn.y = topTextEnglish_mc.about_eng_txt.y;

			about_mc.form_mc.submit_mc.width = about_mc.form_mc.submit_eng_txt.width;
			about_mc.form_mc.submit_mc.x = about_mc.form_mc.submit_eng_txt.x;
			about_mc.form_mc.submit_mc.y = about_mc.form_mc.submit_eng_txt.y;
			about_mc.form_mc.submit_mc.buttonMode = true;

			//gray below text-----------------------------------------------------------
			corporate_gray_btn.width = topTextEnglish_mc.corporate_eng_txt.width;
			corporate_gray_btn.x = topTextEnglish_mc.corporate_eng_txt.x;
			corporate_gray_btn.y = topTextEnglish_mc.corporate_eng_txt.y;
			trace(corporate_btn.width, corporate_btn.x, corporate_btn.y);
			trace(corporate_gray_btn.width, corporate_gray_btn.x, corporate_gray_btn.y);
			trace(topTextEnglish_mc.corporate_eng_txt.width, topTextEnglish_mc.corporate_eng_txt.x, topTextEnglish_mc.corporate_eng_txt.y);

			posters_gray_btn.width = topTextEnglish_mc.posters_eng_txt.width;
			posters_gray_btn.x = topTextEnglish_mc.posters_eng_txt.x;
			posters_gray_btn.y = topTextEnglish_mc.posters_eng_txt.y;

			web_gray_btn.width = topTextEnglish_mc.web_eng_txt.width;
			web_gray_btn.x = topTextEnglish_mc.web_eng_txt.x;
			web_gray_btn.y = topTextEnglish_mc.web_eng_txt.y;

			other_gray_btn.width = topTextEnglish_mc.other_eng_txt.width;
			other_gray_btn.x = topTextEnglish_mc.other_eng_txt.x;
			other_gray_btn.y = topTextEnglish_mc.other_eng_txt.y;

			resume_gray_btn.width = topTextEnglish_mc.resume_eng_txt.width;
			resume_gray_btn.x = topTextEnglish_mc.resume_eng_txt.x;
			resume_gray_btn.y = topTextEnglish_mc.resume_eng_txt.y;

			about_gray_btn.width = topTextEnglish_mc.about_eng_txt.width;
			about_gray_btn.x = topTextEnglish_mc.about_eng_txt.x;
			about_gray_btn.y = topTextEnglish_mc.about_eng_txt.y;

			about_mc.form_mc.blue_mc.width = about_mc.form_mc.submit_eng_txt.width;
			about_mc.form_mc.blue_mc.x = about_mc.form_mc.submit_eng_txt.x;
			about_mc.form_mc.blue_mc.y = about_mc.form_mc.submit_eng_txt.y;

			//LOWBAR

			// CORP ID LOWBAR
			corpID_lowBar_mc.m7_lowBar_mc.alpha = 1;
			corpID_lowBar_mc.ei_lowBar_mc.alpha = .4;
			corpID_lowBar_mc.ed_lowBar_mc.alpha = .4;
			corpID_lowBar_mc.cmm_lowBar_mc.alpha = .4;
			corpID_lowBar_mc.alien_lowBar_mc.alpha = .4;

			corpID_lowBar_mc.m7_lowBar_mc.buttonMode = true;
			corpID_lowBar_mc.ei_lowBar_mc.buttonMode = true;
			corpID_lowBar_mc.ed_lowBar_mc.buttonMode = true;
			corpID_lowBar_mc.cmm_lowBar_mc.buttonMode = true;
			corpID_lowBar_mc.alien_lowBar_mc.buttonMode = true;

			//POSTERS LOWBAR
			posters_lowBar_mc.cadd_lowBar_mc.alpha = 1;
			posters_lowBar_mc.bush_lowBar_mc.alpha = .4;

			// WEB LOWBAR
			web_lowBar_mc.webCMM_lowBar_mc.alpha = 1;
//			web_lowBar_mc.dwayne_lowBar_mc.alpha = .4;

			//OTHER LOWBAR
			other_lowBar_mc.stamps_lowBar_mc.alpha = 1;
			other_lowBar_mc.calendar_lowBar_mc.alpha = .4;
			other_lowBar_mc.salty_lowBar_mc.alpha = .4;

			//POSTERS LOAD
			init();//init means initialize
			posters_mc.caddLoadMC_mc.visible = false;
			posters_mc.cadd_ZoomOut_mc.visible = false;

			posters_mc.bushLoadMC_mc.visible = false;
			posters_mc.bush_ZoomOut_mc.visible = false;

			other_mc.calendarLoadMC_mc.visible = false;
			other_mc.calendar_ZoomOut_mc.visible = false;

			//FORM
			about_mc.thanks_txt.visible = false;

			//LISTENERS

			////UPPER BUTTONS LISTENERS
			//MZ LISTENER
			MZ_btn.addEventListener(MouseEvent.CLICK, MZbutton);
			MZ_btn.addEventListener(MouseEvent.ROLL_OVER, MZbuttonOver);
			

			//CORPORATE BTN
			corporate_btn.addEventListener(MouseEvent.CLICK, corporate_clik);
			corporate_btn.addEventListener(MouseEvent.ROLL_OVER, corporate_over);
			corporate_btn.addEventListener(MouseEvent.ROLL_OUT, corporate_out);

			//POSTERS BTN
			posters_btn.addEventListener(MouseEvent.CLICK, posters_clik);
			posters_btn.addEventListener(MouseEvent.ROLL_OVER, postersBtn_over);
			posters_btn.addEventListener(MouseEvent.ROLL_OUT, postersBtn_out);

			//WEB BTN
			web_btn.addEventListener(MouseEvent.CLICK, web_clik);
			web_btn.addEventListener(MouseEvent.ROLL_OVER, webBtn_over);
			web_btn.addEventListener(MouseEvent.ROLL_OUT, webBtn_out);

			//OTHER BTN
			other_btn.addEventListener(MouseEvent.CLICK, other_clik);
			other_btn.addEventListener(MouseEvent.ROLL_OVER, otherBtn_over);
			other_btn.addEventListener(MouseEvent.ROLL_OUT, otherBtn_out);

			//RESUME BTN
			resume_btn.addEventListener(MouseEvent.CLICK, resume_clik);
			resume_btn.addEventListener(MouseEvent.ROLL_OVER, resumeBtn_over);
			resume_btn.addEventListener(MouseEvent.ROLL_OUT, resumeBtn_out);

			//QUOTE BTN
			about_btn.addEventListener(MouseEvent.CLICK, about_clik);
			about_btn.addEventListener(MouseEvent.ROLL_OVER, aboutBtn_over);
			about_btn.addEventListener(MouseEvent.ROLL_OUT, aboutBtn_out);

			//LANGUAGE GRAY AND BLACK BTNS
			eng_lang_black_btn.addEventListener(MouseEvent.ROLL_OVER, languageChangeOVER);
			esp_lang_black_btn.addEventListener(MouseEvent.ROLL_OVER, languageChangeOVER);

			eng_lang_grey_btn.addEventListener(MouseEvent.ROLL_OUT, languageChangeOUT);
			esp_lang_grey_btn.addEventListener(MouseEvent.ROLL_OUT, languageChangeOUT);

			eng_lang_grey_btn.addEventListener(MouseEvent.CLICK, changeLanguage);
			esp_lang_grey_btn.addEventListener(MouseEvent.CLICK, changeLanguage);

			//CORP ID LISTENERS
			corpID_xTween = new Tween(corpID_mc,"x",Regular.easeInOut,corpID_mc.x,corpID_oneX,1,true);
			corpID_yTween = new Tween(corpID_mc,"y",Regular.easeInOut,corpID_mc.y,corpID_oneY,1,true);

			corpID_lowBar_mc.m7_lowBar_mc.addEventListener(MouseEvent.CLICK, corpID_navigate);
			corpID_lowBar_mc.ei_lowBar_mc.addEventListener(MouseEvent.CLICK, corpID_navigate);
			corpID_lowBar_mc.ed_lowBar_mc.addEventListener(MouseEvent.CLICK, corpID_navigate);
			corpID_lowBar_mc.cmm_lowBar_mc.addEventListener(MouseEvent.CLICK, corpID_navigate);
			corpID_lowBar_mc.alien_lowBar_mc.addEventListener(MouseEvent.CLICK, corpID_navigate);

			corpID_lowBar_mc.m7_lowBar_mc.addEventListener(MouseEvent.ROLL_OVER, corpID_over);
			corpID_lowBar_mc.ei_lowBar_mc.addEventListener(MouseEvent.ROLL_OVER, corpID_over);
			corpID_lowBar_mc.ed_lowBar_mc.addEventListener(MouseEvent.ROLL_OVER, corpID_over);
			corpID_lowBar_mc.cmm_lowBar_mc.addEventListener(MouseEvent.ROLL_OVER, corpID_over);
			corpID_lowBar_mc.alien_lowBar_mc.addEventListener(MouseEvent.ROLL_OVER, corpID_over);

			corpID_lowBar_mc.m7_lowBar_mc.addEventListener(MouseEvent.ROLL_OUT, corpID_out);
			corpID_lowBar_mc.ei_lowBar_mc.addEventListener(MouseEvent.ROLL_OUT, corpID_out);
			corpID_lowBar_mc.ed_lowBar_mc.addEventListener(MouseEvent.ROLL_OUT, corpID_out);
			corpID_lowBar_mc.cmm_lowBar_mc.addEventListener(MouseEvent.ROLL_OUT, corpID_out);
			corpID_lowBar_mc.alien_lowBar_mc.addEventListener(MouseEvent.ROLL_OUT, corpID_out);

			corpID_xTween.stop();
			corpID_yTween.stop();

			//M7 LISTENERS
			M7_xTween = new Tween(corpID_mc.m7_mc.m7_images_mc,"x",Regular.easeInOut,corpID_mc.m7_mc.m7_images_mc.x,M7_oneX,1,true);
			M7_yTween = new Tween(corpID_mc.m7_mc.m7_images_mc,"y",Regular.easeInOut,corpID_mc.m7_mc.m7_images_mc.y,M7_oneY,1,true);

			corpID_mc.m7_mc.one_m7_btn.addEventListener(MouseEvent.CLICK, M7_navigate);
			corpID_mc.m7_mc.two_m7_btn.addEventListener(MouseEvent.CLICK, M7_navigate);
			corpID_mc.m7_mc.three_m7_btn.addEventListener(MouseEvent.CLICK, M7_navigate);

			corpID_mc.m7_mc.one_m7_btn.addEventListener(MouseEvent.CLICK, M7_circleOver);
			corpID_mc.m7_mc.two_m7_btn.addEventListener(MouseEvent.CLICK, M7_circleOver);
			corpID_mc.m7_mc.three_m7_btn.addEventListener(MouseEvent.CLICK, M7_circleOver);

			corpID_mc.m7_mc.over_circle_mc.x = corpID_mc.m7_mc.one_m7_btn.x;
			corpID_mc.m7_mc.over_circle_mc.y = corpID_mc.m7_mc.one_m7_btn.y;

			M7_xTween.stop();
			M7_yTween.stop();

			//EI LISTENERS
			EI_xTween = new Tween(corpID_mc.ei_mc.ei_images_mc,"x",Regular.easeInOut,corpID_mc.ei_mc.ei_images_mc.x,EI_oneX,1,true);
			EI_yTween = new Tween(corpID_mc.ei_mc.ei_images_mc,"y",Regular.easeInOut,corpID_mc.ei_mc.ei_images_mc.y,EI_oneY,1,true);

			corpID_mc.ei_mc.one_ei_btn.addEventListener(MouseEvent.CLICK, EI_navigate);
			corpID_mc.ei_mc.two_ei_btn.addEventListener(MouseEvent.CLICK, EI_navigate);
			corpID_mc.ei_mc.three_ei_btn.addEventListener(MouseEvent.CLICK, EI_navigate);
			corpID_mc.ei_mc.four_ei_btn.addEventListener(MouseEvent.CLICK, EI_navigate);

			corpID_mc.ei_mc.one_ei_btn.addEventListener(MouseEvent.CLICK, EI_circleOver);
			corpID_mc.ei_mc.two_ei_btn.addEventListener(MouseEvent.CLICK, EI_circleOver);
			corpID_mc.ei_mc.three_ei_btn.addEventListener(MouseEvent.CLICK, EI_circleOver);
			corpID_mc.ei_mc.four_ei_btn.addEventListener(MouseEvent.CLICK, EI_circleOver);

			corpID_mc.ei_mc.over_circle_mc.x = corpID_mc.ei_mc.one_ei_btn.x;
			corpID_mc.ei_mc.over_circle_mc.y = corpID_mc.ei_mc.one_ei_btn.y;

			EI_xTween.stop();
			EI_yTween.stop();

			//ED LISTENERS
			ED_xTween = new Tween(corpID_mc.ed_mc.ed_images_mc,"x",Regular.easeInOut,corpID_mc.ed_mc.ed_images_mc.x,ED_oneX,1,true);
			ED_yTween = new Tween(corpID_mc.ed_mc.ed_images_mc,"y",Regular.easeInOut,corpID_mc.ed_mc.ed_images_mc.y,ED_oneY,1,true);

			corpID_mc.ed_mc.one_ed_btn.addEventListener(MouseEvent.CLICK, ED_navigate);
			corpID_mc.ed_mc.two_ed_btn.addEventListener(MouseEvent.CLICK, ED_navigate);
			corpID_mc.ed_mc.three_ed_btn.addEventListener(MouseEvent.CLICK, ED_navigate);
			
			corpID_mc.ed_mc.one_ed_btn.addEventListener(MouseEvent.CLICK, ED_circleOver);
			corpID_mc.ed_mc.two_ed_btn.addEventListener(MouseEvent.CLICK, ED_circleOver);
			corpID_mc.ed_mc.three_ed_btn.addEventListener(MouseEvent.CLICK, ED_circleOver);
			
			corpID_mc.ed_mc.over_circle_mc.x = corpID_mc.ed_mc.one_ed_btn.x;
			corpID_mc.ed_mc.over_circle_mc.y = corpID_mc.ed_mc.one_ed_btn.y;

			ED_xTween.stop();
			ED_yTween.stop();

			//CMM LISTENERS
			CMM_xTween = new Tween(corpID_mc.cmm_mc.cmm_images_mc,"x",Regular.easeInOut,corpID_mc.cmm_mc.cmm_images_mc.x,CMM_oneX,1,true);
			CMM_yTween = new Tween(corpID_mc.cmm_mc.cmm_images_mc,"y",Regular.easeInOut,corpID_mc.cmm_mc.cmm_images_mc.y,CMM_oneY,1,true);

			corpID_mc.cmm_mc.one_cmm_btn.addEventListener(MouseEvent.CLICK, CMM_navigate);
			corpID_mc.cmm_mc.two_cmm_btn.addEventListener(MouseEvent.CLICK, CMM_navigate);

			corpID_mc.cmm_mc.one_cmm_btn.addEventListener(MouseEvent.CLICK, CMM_circleOver);
			corpID_mc.cmm_mc.two_cmm_btn.addEventListener(MouseEvent.CLICK, CMM_circleOver);

			corpID_mc.cmm_mc.over_circle_mc.x = corpID_mc.cmm_mc.one_cmm_btn.x;
			corpID_mc.cmm_mc.over_circle_mc.y = corpID_mc.cmm_mc.one_cmm_btn.y;

			CMM_xTween.stop();
			CMM_yTween.stop();

			//ALIEN LISTENERS
			ALIEN_xTween = new Tween(corpID_mc.alien_mc.alien_images_mc,"x",Regular.easeInOut,corpID_mc.alien_mc.alien_images_mc.x,ALIEN_oneX,1,true);
			ALIEN_yTween = new Tween(corpID_mc.alien_mc.alien_images_mc,"y",Regular.easeInOut,corpID_mc.alien_mc.alien_images_mc.y,ALIEN_oneY,1,true);

			corpID_mc.alien_mc.one_alien_btn.addEventListener(MouseEvent.CLICK, ALIEN_navigate);
			corpID_mc.alien_mc.two_alien_btn.addEventListener(MouseEvent.CLICK, ALIEN_navigate);

			corpID_mc.alien_mc.one_alien_btn.addEventListener(MouseEvent.CLICK, ALIEN_circleOver);
			corpID_mc.alien_mc.two_alien_btn.addEventListener(MouseEvent.CLICK, ALIEN_circleOver);

			corpID_mc.alien_mc.over_circle_mc.x = corpID_mc.alien_mc.one_alien_btn.x;
			corpID_mc.alien_mc.over_circle_mc.y = corpID_mc.alien_mc.one_alien_btn.y;

			ALIEN_xTween.stop();
			ALIEN_yTween.stop();

			//POSTERS LISTENERS
			posters_lowBar_mc.cadd_lowBar_mc.buttonMode = true;
			posters_lowBar_mc.bush_lowBar_mc.buttonMode = true;

			posters_xTween = new Tween(posters_mc,"x",Regular.easeInOut,posters_mc.x,posters_oneX,1,true);
			posters_yTween = new Tween(posters_mc,"y",Regular.easeInOut,posters_mc.y,posters_oneY,1,true);

			posters_lowBar_mc.cadd_lowBar_mc.addEventListener(MouseEvent.CLICK, posters_navigate);
			posters_lowBar_mc.bush_lowBar_mc.addEventListener(MouseEvent.CLICK, posters_navigate);

			posters_lowBar_mc.cadd_lowBar_mc.addEventListener(MouseEvent.ROLL_OVER, posters_over);
			posters_lowBar_mc.bush_lowBar_mc.addEventListener(MouseEvent.ROLL_OVER, posters_over);

			posters_lowBar_mc.cadd_lowBar_mc.addEventListener(MouseEvent.ROLL_OUT, posters_out);
			posters_lowBar_mc.bush_lowBar_mc.addEventListener(MouseEvent.ROLL_OUT, posters_out);

			posters_xTween.stop();
			posters_yTween.stop();

			//WEB LISTENERS
			/*web_lowBar_mc.webCMM_lowBar_mc.buttonMode = true;
			web_lowBar_mc.dwayne_lowBar_mc.buttonMode = true;

			web_xTween = new Tween(web_mc,"x",Regular.easeInOut,web_mc.x,web_oneX,1,true);
			web_yTween = new Tween(web_mc,"y",Regular.easeInOut,web_mc.y,web_oneY,1,true);

			web_lowBar_mc.webCMM_lowBar_mc.addEventListener(MouseEvent.CLICK, web_navigate);
			web_lowBar_mc.dwayne_lowBar_mc.addEventListener(MouseEvent.CLICK, web_navigate);

			web_lowBar_mc.webCMM_lowBar_mc.addEventListener(MouseEvent.ROLL_OVER, web_over);
			web_lowBar_mc.dwayne_lowBar_mc.addEventListener(MouseEvent.ROLL_OVER, web_over);

			web_lowBar_mc.webCMM_lowBar_mc.addEventListener(MouseEvent.ROLL_OUT, web_out);
			web_lowBar_mc.dwayne_lowBar_mc.addEventListener(MouseEvent.ROLL_OUT, web_out);

			web_xTween.stop();
			web_yTween.stop();
*/
			//OTHER LISTENERS
			other_lowBar_mc.stamps_lowBar_mc.buttonMode = true;
			other_lowBar_mc.calendar_lowBar_mc.buttonMode = true;
			other_lowBar_mc.salty_lowBar_mc.buttonMode = true;

			other_xTween = new Tween(other_mc,"x",Regular.easeInOut,other_mc.x,other_oneX,1,true);
			other_yTween = new Tween(other_mc,"y",Regular.easeInOut,other_mc.y,other_oneY,1,true);

			other_lowBar_mc.stamps_lowBar_mc.addEventListener(MouseEvent.CLICK, other_navigate);
			other_lowBar_mc.calendar_lowBar_mc.addEventListener(MouseEvent.CLICK, other_navigate);
			other_lowBar_mc.salty_lowBar_mc.addEventListener(MouseEvent.CLICK, other_navigate);

			other_lowBar_mc.stamps_lowBar_mc.addEventListener(MouseEvent.ROLL_OVER, other_over);
			other_lowBar_mc.calendar_lowBar_mc.addEventListener(MouseEvent.ROLL_OVER, other_over);
			other_lowBar_mc.salty_lowBar_mc.addEventListener(MouseEvent.ROLL_OVER, other_over);

			other_lowBar_mc.stamps_lowBar_mc.addEventListener(MouseEvent.ROLL_OUT, other_out);
			other_lowBar_mc.calendar_lowBar_mc.addEventListener(MouseEvent.ROLL_OUT, other_out);

			other_xTween.stop();
			other_yTween.stop();

			//SALTY TWEEN

			SALTY_xTween = new Tween(other_mc.salty_mc,"x",Regular.easeInOut,other_mc.salty_mc.x,SALTY_oneX,1,true);
			SALTY_yTween = new Tween(other_mc.salty_mc,"y",Regular.easeInOut,other_mc.salty_mc.y,SALTY_oneY,1,true);

			other_mc.one_salty_btn.addEventListener(MouseEvent.CLICK, SALTY_navigate);
			other_mc.two_salty_btn.addEventListener(MouseEvent.CLICK, SALTY_navigate);

			other_mc.one_salty_btn.addEventListener(MouseEvent.CLICK, SALTY_circleOver);
			other_mc.two_salty_btn.addEventListener(MouseEvent.CLICK, SALTY_circleOver);

			other_mc.over_circle_mc.x = other_mc.one_salty_btn.x;
			other_mc.over_circle_mc.y = other_mc.one_salty_btn.y;

			SALTY_xTween.stop();
			SALTY_yTween.stop();

			//RESUME LISTENERS
			resume_mc.resume_image_mc.addEventListener(MouseEvent.CLICK, loadResume);
			resume_mc.resume_image_mc.addEventListener(MouseEvent.ROLL_OVER, bigResume);
			resume_mc.resume_image_mc.addEventListener(MouseEvent.ROLL_OUT, smallResume);
			resume_mc.resume_image_mc.buttonMode = true;

			//QUOTE LISTENERS
			about_mc.form_mc.submit_mc.addEventListener(MouseEvent.CLICK, ValidateAndSend);
			//about_btn.addEventListener(MouseEvent.CLICK, muthafucknCheckBoxes);
			hideThanksTxt.addEventListener(TimerEvent.TIMER_COMPLETE, goAway);
		}

		/*-------------------------------------------------------
		UPPER BUTTONS*/

		/*topTextEnglish_mc.visible = true;
		topTextSpanish_mc.visible = false;
		
		eng_lang_black_btn.visible = true;
		esp_lang_black_btn.visible = false;
		eng_lang_grey_btn.visible = false;
		esp_lang_grey_btn.visible = false;
		
		// corp id text
		corpID_mc.M7_Englishtext_mc.visible = true;
		corpID_mc.EI_Englishtext_mc.visible = true;
		corpID_mc.ED_Englishtext_mc.visible = true;
		corpID_mc.CMM_Englishtext_mc.visible = true;
		corpID_mc.alien_Englishtext_mc.visible = true;
		
		corpID_mc.M7_Spanishtext_mc.visible = false;
		corpID_mc.EI_Spanishtext_mc.visible = false;
		corpID_mc.ED_Spanishtext_mc.visible = false;
		corpID_mc.CMM_Spanishtext_mc.visible = false;
		corpID_mc.alien_Spanishtext_mc.visible = false;
		
		// posters text
		posters_mc.cadd_Englishtext_mc.visible = true;
		posters_mc.bush_Englishtext_mc.visible = true;
		
		posters_mc.cadd_Spanishtext_mc.visible = false;
		posters_mc.bush_Spanishtext_mc.visible = false;
		
		// web text
		web_mc.cmmWeb_Englishtext_mc.visible = true;
		web_mc.dwayneWeb_Englishtext_mc.visible = true;
		
		web_mc.cmmWeb_Spanishtext_mc.visible = false;
		web_mc.dwayneWeb_Spanishtext_mc.visible = false;
		
		// other text
		other_mc.stamps_Englishtext_mc.visible = true;
		other_mc.calendar_Englishtext_mc.visible = true;
		other_mc.salty_Englishtext_mc.visible = true;
		
		other_mc.stamps_Spanishtext_mc.visible = false;
		other_mc.calendar_Spanishtext_mc.visible = false;
		other_mc.salty_Spanishtext_mc.visible = false;
		
		//resume text
		resume_mc.resume_Englishtext_mc.visible = true;
		resume_mc.resume_Spanishtext_mc.visible = false;
		
		corporate_btn.width = topTextEnglish_mc.corporate_eng_txt.width;
		corporate_btn.x = topTextEnglish_mc.corporate_eng_txt.x;
		corporate_btn.y = topTextEnglish_mc.corporate_eng_txt.y;
		
		posters_btn.width = topTextEnglish_mc.posters_eng_txt.width;
		posters_btn.x = topTextEnglish_mc.posters_eng_txt.x;
		posters_btn.y = topTextEnglish_mc.posters_eng_txt.y;
		
		web_btn.width = topTextEnglish_mc.web_eng_txt.width;
		web_btn.x = topTextEnglish_mc.web_eng_txt.x;
		web_btn.y = topTextEnglish_mc.web_eng_txt.y;
		
		other_btn.width = topTextEnglish_mc.other_eng_txt.width;
		other_btn.x = topTextEnglish_mc.other_eng_txt.x;
		other_btn.y = topTextEnglish_mc.other_eng_txt.y;
		
		resume_btn.width = topTextEnglish_mc.resume_eng_txt.width;
		resume_btn.x = topTextEnglish_mc.resume_eng_txt.x;
		resume_btn.y = topTextEnglish_mc.resume_eng_txt.y;
		
		about_btn.width = topTextEnglish_mc.about_eng_txt.width;
		about_btn.x = topTextEnglish_mc.about_eng_txt.x;
		about_btn.y = topTextEnglish_mc.about_eng_txt.y;
		
		//gray below text-----------------------------------------------------------
		corporate_gray_btn.width = topTextEnglish_mc.corporate_eng_txt.width;
		corporate_gray_btn.x = topTextEnglish_mc.corporate_eng_txt.x;
		corporate_gray_btn.y = topTextEnglish_mc.corporate_eng_txt.y;
		
		posters_gray_btn.width = topTextEnglish_mc.posters_eng_txt.width;
		posters_gray_btn.x = topTextEnglish_mc.posters_eng_txt.x;
		posters_gray_btn.y = topTextEnglish_mc.posters_eng_txt.y;
		
		web_gray_btn.width = topTextEnglish_mc.web_eng_txt.width;
		web_gray_btn.x = topTextEnglish_mc.web_eng_txt.x;
		web_gray_btn.y = topTextEnglish_mc.web_eng_txt.y;
		
		other_gray_btn.width = topTextEnglish_mc.other_eng_txt.width;
		other_gray_btn.x = topTextEnglish_mc.other_eng_txt.x;
		other_gray_btn.y = topTextEnglish_mc.other_eng_txt.y;
		
		resume_gray_btn.width = topTextEnglish_mc.resume_eng_txt.width;
		resume_gray_btn.x = topTextEnglish_mc.resume_eng_txt.x;
		resume_gray_btn.y = topTextEnglish_mc.resume_eng_txt.y;
		
		about_gray_btn.width = topTextEnglish_mc.about_eng_txt.width;
		about_gray_btn.x = topTextEnglish_mc.about_eng_txt.x;
		about_gray_btn.y = topTextEnglish_mc.about_eng_txt.y;
		////-----------------------------------------------------------------------
		*/

		function languageChangeOVER(event:MouseEvent):void
		{
			switch (event.target)
			{
				case eng_lang_black_btn :
					esp_lang_grey_btn.visible = true;
					break;

				case esp_lang_black_btn :
					eng_lang_grey_btn.visible = true;
					break;
			}
		}



		function languageChangeOUT(event:MouseEvent):void
		{
			switch (event.target)
			{
				case eng_lang_grey_btn :
					eng_lang_grey_btn.visible = false;
					break;

				case esp_lang_grey_btn :
					esp_lang_grey_btn.visible = false;
					break;
			}
		}



		function changeLanguage(event:MouseEvent):void
		{
			switch (event.target)
			{
				case esp_lang_grey_btn :
					main_image_mc.main_Eng_mc.visible = false;
					main_image_mc.main_Spa_mc.visible = true;
					
					if ( ((eng_lang_black_btn.visible == true) && (corpID_mc.visible == true)) || 
					((eng_lang_black_btn.visible == true) && (posters_mc.visible == true))|| 
					((eng_lang_black_btn.visible == true) && (web_mc.visible == true))   ||
					((eng_lang_black_btn.visible == true) && (other_mc.visible == true))  ||
					((eng_lang_black_btn.visible == true) && (resume_mc.visible == true)) )
					{
						corpID_mc.M7_Englishtext_mc.visible = false;
						corpID_mc.EI_Englishtext_mc.visible = false;
						corpID_mc.ED_Englishtext_mc.visible = false;
						corpID_mc.CMM_Englishtext_mc.visible = false;
						corpID_mc.alien_Englishtext_mc.visible = false;

						corpID_mc.M7_Spanishtext_mc.visible = true;
						corpID_mc.EI_Spanishtext_mc.visible = true;
						corpID_mc.ED_Spanishtext_mc.visible = true;
						corpID_mc.CMM_Spanishtext_mc.visible = true;
						corpID_mc.alien_Spanishtext_mc.visible = true;

						posters_mc.cadd_Englishtext_mc.visible = false;
						posters_mc.bush_Englishtext_mc.visible = false;

						posters_mc.cadd_Spanishtext_mc.visible = true;
						posters_mc.bush_Spanishtext_mc.visible = true;

						web_mc.cmmWeb_Englishtext_mc.visible = false;
						//web_mc.dwayneWeb_Englishtext_mc.visible = false;

						web_mc.cmmWeb_Spanishtext_mc.visible = true;
						//web_mc.dwayneWeb_Spanishtext_mc.visible = true;

						other_mc.stamps_Englishtext_mc.visible = false;
						other_mc.calendar_Englishtext_mc.visible = false;
						other_mc.salty_Englishtext_mc.visible = false;

						other_mc.stamps_Spanishtext_mc.visible = true;
						other_mc.calendar_Spanishtext_mc.visible = true;
						other_mc.salty_Spanishtext_mc.visible = true;

						resume_mc.resume_Englishtext_mc.visible = false;
						resume_mc.resume_Spanishtext_mc.visible = true;

						about_mc.form_mc.quote_Englishtext_mc.visible = false;
						about_mc.form_mc.quote_Spanishtext_mc.visible = true;

						about_mc.form_mc.submit_eng_txt.visible = false;
						about_mc.form_mc.submit_spa_txt.visible = true;

						trace("LANGUAGE CHANGE TO SPANISH WORKS");
					}
					else if ( ((eng_lang_black_btn.visible == true) && (corpID_mc.visible != true)) ||
					 ((eng_lang_black_btn.visible == true) && (posters_mc.visible != true))||
					 ((eng_lang_black_btn.visible == true) && (web_mc.visible != true))    ||
					 ((eng_lang_black_btn.visible == true) && (other_mc.visible != true))  ||
					  ((eng_lang_black_btn.visible == true) && (resume_mc.visible != true)) )
					{
						corpID_mc.M7_Englishtext_mc.visible = false;
						corpID_mc.EI_Englishtext_mc.visible = false;
						corpID_mc.ED_Englishtext_mc.visible = false;
						corpID_mc.CMM_Englishtext_mc.visible = false;
						corpID_mc.alien_Englishtext_mc.visible = false;

						corpID_mc.M7_Spanishtext_mc.visible = true;
						corpID_mc.EI_Spanishtext_mc.visible = true;
						corpID_mc.ED_Spanishtext_mc.visible = true;
						corpID_mc.CMM_Spanishtext_mc.visible = true;
						corpID_mc.alien_Spanishtext_mc.visible = true;

						posters_mc.cadd_Englishtext_mc.visible = false;
						posters_mc.bush_Englishtext_mc.visible = false;

						posters_mc.cadd_Spanishtext_mc.visible = true;
						posters_mc.bush_Spanishtext_mc.visible = true;

						web_mc.cmmWeb_Englishtext_mc.visible = false;
						//web_mc.dwayneWeb_Englishtext_mc.visible = false;

						web_mc.cmmWeb_Spanishtext_mc.visible = true;
						//web_mc.dwayneWeb_Spanishtext_mc.visible = true;

						other_mc.stamps_Englishtext_mc.visible = false;
						other_mc.calendar_Englishtext_mc.visible = false;
						other_mc.salty_Englishtext_mc.visible = false;

						other_mc.stamps_Spanishtext_mc.visible = true;
						other_mc.calendar_Spanishtext_mc.visible = true;
						other_mc.salty_Spanishtext_mc.visible = true;

						resume_mc.resume_Englishtext_mc.visible = false;
						resume_mc.resume_Spanishtext_mc.visible = true;

						about_mc.form_mc.quote_Englishtext_mc.visible = false;
						about_mc.form_mc.quote_Spanishtext_mc.visible = true;

						about_mc.form_mc.submit_eng_txt.visible = false;
						about_mc.form_mc.submit_spa_txt.visible = true;


						trace("LANGUAGE CHANGE TO SPANISH WORKS");
					}
					topTextEnglish_mc.visible = false;
					topTextSpanish_mc.visible = true;
					eng_lang_black_btn.visible = false;
					esp_lang_black_btn.visible = true;
					esp_lang_grey_btn.visible = false;

					corporate_btn.width = topTextSpanish_mc.corporate_spa_txt.width;
					corporate_btn.x = topTextSpanish_mc.corporate_spa_txt.x;
					corporate_btn.y = topTextSpanish_mc.corporate_spa_txt.y;

					posters_btn.width = topTextSpanish_mc.posters_spa_txt.width;
					posters_btn.x = topTextSpanish_mc.posters_spa_txt.x;
					posters_btn.y = topTextSpanish_mc.posters_spa_txt.y;

					web_btn.width = topTextSpanish_mc.web_spa_txt.width;
					web_btn.x = topTextSpanish_mc.web_spa_txt.x;
					web_btn.y = topTextSpanish_mc.web_spa_txt.y;

					other_btn.width = topTextSpanish_mc.other_spa_txt.width;
					other_btn.x = topTextSpanish_mc.other_spa_txt.x;
					other_btn.y = topTextSpanish_mc.other_spa_txt.y;

					resume_btn.width = topTextSpanish_mc.resume_spa_txt.width;
					resume_btn.x = topTextSpanish_mc.resume_spa_txt.x;
					resume_btn.y = topTextSpanish_mc.resume_spa_txt.y;

					about_btn.width = topTextSpanish_mc.about_spa_txt.width;
					about_btn.x = topTextSpanish_mc.about_spa_txt.x;
					about_btn.y = topTextSpanish_mc.about_spa_txt.y;

					about_mc.form_mc.submit_mc.width = about_mc.form_mc.submit_spa_txt.width;
					about_mc.form_mc.submit_mc.x = about_mc.form_mc.submit_spa_txt.x;
					about_mc.form_mc.submit_mc.y = about_mc.form_mc.submit_spa_txt.y;

					//GRAY
					corporate_gray_btn.width = topTextSpanish_mc.corporate_spa_txt.width;
					corporate_gray_btn.x = topTextSpanish_mc.corporate_spa_txt.x;
					corporate_gray_btn.y = topTextSpanish_mc.corporate_spa_txt.y;

					posters_gray_btn.width = topTextSpanish_mc.posters_spa_txt.width;
					posters_gray_btn.x = topTextSpanish_mc.posters_spa_txt.x;
					posters_gray_btn.y = topTextSpanish_mc.posters_spa_txt.y;

					web_gray_btn.width = topTextSpanish_mc.web_spa_txt.width;
					web_gray_btn.x = topTextSpanish_mc.web_spa_txt.x;
					web_gray_btn.y = topTextSpanish_mc.web_spa_txt.y;

					other_gray_btn.width = topTextSpanish_mc.other_spa_txt.width;
					other_gray_btn.x = topTextSpanish_mc.other_spa_txt.x;
					other_gray_btn.y = topTextSpanish_mc.other_spa_txt.y;

					resume_gray_btn.width = topTextSpanish_mc.resume_spa_txt.width;
					resume_gray_btn.x = topTextSpanish_mc.resume_spa_txt.x;
					resume_gray_btn.y = topTextSpanish_mc.resume_spa_txt.y;

					about_gray_btn.width = topTextSpanish_mc.about_spa_txt.width;
					about_gray_btn.x = topTextSpanish_mc.about_spa_txt.x;
					about_gray_btn.y = topTextSpanish_mc.about_spa_txt.y;

					about_mc.form_mc.blue_mc.width = about_mc.form_mc.submit_spa_txt.width;
					about_mc.form_mc.blue_mc.x = about_mc.form_mc.submit_spa_txt.x;
					about_mc.form_mc.blue_mc.y = about_mc.form_mc.submit_spa_txt.y;

					if ((topTextEnglish_mc.corporate_eng_txt.visible == true) && (corpID_mc.visible == true))
					{
						black_txt.text = topTextSpanish_mc.corporate_spa_txt.text;
					}
					if ((topTextEnglish_mc.posters_eng_txt.visible == true) && (posters_mc.visible == true))
					{
						black_txt.text = topTextSpanish_mc.posters_spa_txt.text;
					}
					if ((topTextEnglish_mc.web_eng_txt.visible == true) && (web_mc.visible == true))
					{
						black_txt.text = topTextSpanish_mc.web_spa_txt.text;
					}
					if ((topTextEnglish_mc.other_eng_txt.visible == true) && (other_mc.visible == true))
					{
						black_txt.text = topTextSpanish_mc.other_spa_txt.text;
					}
					if ((topTextEnglish_mc.resume_eng_txt.visible == true) && (resume_mc.visible == true))
					{
						black_txt.text = topTextSpanish_mc.resume_spa_txt.text;
					}
					if ((topTextEnglish_mc.about_eng_txt.visible == true) && (about_mc.visible == true))
					{
						black_txt.text = topTextSpanish_mc.about_spa_txt.text;
					}
					break;

				case eng_lang_grey_btn :
					main_image_mc.main_Eng_mc.visible = true;
					main_image_mc.main_Spa_mc.visible = false;
				
					if ( ((esp_lang_black_btn.visible == true) && (corpID_mc.visible == true)) || 
					((esp_lang_black_btn.visible == true) && (posters_mc.visible == true))|| 
					((esp_lang_black_btn.visible == true) && (web_mc.visible == true))    ||
					((esp_lang_black_btn.visible == true) && (other_mc.visible == true))  ||
					((esp_lang_black_btn.visible == true) && (resume_mc.visible == true)) )
					{
						corpID_mc.M7_Englishtext_mc.visible = true;
						corpID_mc.EI_Englishtext_mc.visible = true;
						corpID_mc.ED_Englishtext_mc.visible = true;
						corpID_mc.CMM_Englishtext_mc.visible = true;
						corpID_mc.alien_Englishtext_mc.visible = true;

						corpID_mc.M7_Spanishtext_mc.visible = false;
						corpID_mc.EI_Spanishtext_mc.visible = false;
						corpID_mc.ED_Spanishtext_mc.visible = false;
						corpID_mc.CMM_Spanishtext_mc.visible = false;
						corpID_mc.alien_Spanishtext_mc.visible = false;

						posters_mc.cadd_Englishtext_mc.visible = true;
						posters_mc.bush_Englishtext_mc.visible = true;

						posters_mc.cadd_Spanishtext_mc.visible = false;
						posters_mc.bush_Spanishtext_mc.visible = false;

						web_mc.cmmWeb_Englishtext_mc.visible = true;
						//web_mc.dwayneWeb_Englishtext_mc.visible = true;

						web_mc.cmmWeb_Spanishtext_mc.visible = false;
						//web_mc.dwayneWeb_Spanishtext_mc.visible = false;

						other_mc.stamps_Englishtext_mc.visible = true;
						other_mc.calendar_Englishtext_mc.visible = true;
						other_mc.salty_Englishtext_mc.visible = true;

						other_mc.stamps_Spanishtext_mc.visible = false;
						other_mc.calendar_Spanishtext_mc.visible = false;
						other_mc.salty_Spanishtext_mc.visible = false;

						resume_mc.resume_Englishtext_mc.visible = true;
						resume_mc.resume_Spanishtext_mc.visible = false;

						about_mc.form_mc.quote_Englishtext_mc.visible = true;
						about_mc.form_mc.quote_Spanishtext_mc.visible = false;

						about_mc.form_mc.submit_eng_txt.visible = true;
						about_mc.form_mc.submit_spa_txt.visible = false;


						trace("LANGUAGE CHANGE TO ENGLISH WORKS");
					}
					else if ( ((esp_lang_black_btn.visible == true) && (corpID_mc.visible != true)) || 
					 ((esp_lang_black_btn.visible == true) && (posters_mc.visible != true))|| 
					 ((esp_lang_black_btn.visible == true) && (web_mc.visible != true))    ||
					 ((esp_lang_black_btn.visible == true) && (other_mc.visible != true))  ||
					  ((esp_lang_black_btn.visible == true) && (resume_mc.visible != true)) )
					{
						corpID_mc.M7_Englishtext_mc.visible = true;
						corpID_mc.EI_Englishtext_mc.visible = true;
						corpID_mc.ED_Englishtext_mc.visible = true;
						corpID_mc.CMM_Englishtext_mc.visible = true;
						corpID_mc.alien_Englishtext_mc.visible = true;

						corpID_mc.M7_Spanishtext_mc.visible = false;
						corpID_mc.EI_Spanishtext_mc.visible = false;
						corpID_mc.ED_Spanishtext_mc.visible = false;
						corpID_mc.CMM_Spanishtext_mc.visible = false;

						corpID_mc.alien_Spanishtext_mc.visible = false;

						posters_mc.cadd_Englishtext_mc.visible = true;
						posters_mc.bush_Englishtext_mc.visible = true;

						posters_mc.cadd_Spanishtext_mc.visible = false;
						posters_mc.bush_Spanishtext_mc.visible = false;

						web_mc.cmmWeb_Englishtext_mc.visible = true;
						//web_mc.dwayneWeb_Englishtext_mc.visible = true;

						web_mc.cmmWeb_Spanishtext_mc.visible = false;
						//web_mc.dwayneWeb_Spanishtext_mc.visible = false;

						other_mc.stamps_Englishtext_mc.visible = true;
						other_mc.calendar_Englishtext_mc.visible = true;
						other_mc.salty_Englishtext_mc.visible = true;

						other_mc.stamps_Spanishtext_mc.visible = false;
						other_mc.calendar_Spanishtext_mc.visible = false;
						other_mc.salty_Spanishtext_mc.visible = false;

						resume_mc.resume_Englishtext_mc.visible = true;
						resume_mc.resume_Spanishtext_mc.visible = false;

						about_mc.form_mc.quote_Englishtext_mc.visible = true;
						about_mc.form_mc.quote_Spanishtext_mc.visible = false;

						about_mc.form_mc.submit_eng_txt.visible = true;
						about_mc.form_mc.submit_spa_txt.visible = false;


						trace("LANGUAGE CHANGE TO ENGLISH WORKS");
					}
					topTextEnglish_mc.visible = true;
					topTextSpanish_mc.visible = false;
					eng_lang_black_btn.visible = true;
					esp_lang_black_btn.visible = false;
					eng_lang_grey_btn.visible = false;

					corporate_btn.width = topTextEnglish_mc.corporate_eng_txt.width;
					corporate_btn.x = topTextEnglish_mc.corporate_eng_txt.x;
					corporate_btn.y = topTextEnglish_mc.corporate_eng_txt.y;

					posters_btn.width = topTextEnglish_mc.posters_eng_txt.width;
					posters_btn.x = topTextEnglish_mc.posters_eng_txt.x;
					posters_btn.y = topTextEnglish_mc.posters_eng_txt.y;

					web_btn.width = topTextEnglish_mc.web_eng_txt.width;
					web_btn.x = topTextEnglish_mc.web_eng_txt.x;
					web_btn.y = topTextEnglish_mc.web_eng_txt.y;

					other_btn.width = topTextEnglish_mc.other_eng_txt.width;
					other_btn.x = topTextEnglish_mc.other_eng_txt.x;
					other_btn.y = topTextEnglish_mc.other_eng_txt.y;

					resume_btn.width = topTextEnglish_mc.resume_eng_txt.width;
					resume_btn.x = topTextEnglish_mc.resume_eng_txt.x;
					resume_btn.y = topTextEnglish_mc.resume_eng_txt.y;

					about_btn.width = topTextEnglish_mc.about_eng_txt.width;
					about_btn.x = topTextEnglish_mc.about_eng_txt.x;
					about_btn.y = topTextEnglish_mc.about_eng_txt.y;

					about_mc.form_mc.submit_mc.width = about_mc.form_mc.submit_eng_txt.width;
					about_mc.form_mc.submit_mc.x = about_mc.form_mc.submit_eng_txt.x;
					about_mc.form_mc.submit_mc.y = about_mc.form_mc.submit_eng_txt.y;

					//GRAY
					corporate_gray_btn.width = topTextEnglish_mc.corporate_eng_txt.width;
					corporate_gray_btn.x = topTextEnglish_mc.corporate_eng_txt.x;
					corporate_gray_btn.y = topTextEnglish_mc.corporate_eng_txt.y;

					posters_gray_btn.width = topTextEnglish_mc.posters_eng_txt.width;
					posters_gray_btn.x = topTextEnglish_mc.posters_eng_txt.x;
					posters_gray_btn.y = topTextEnglish_mc.posters_eng_txt.y;

					web_gray_btn.width = topTextEnglish_mc.web_eng_txt.width;
					web_gray_btn.x = topTextEnglish_mc.web_eng_txt.x;
					web_gray_btn.y = topTextEnglish_mc.web_eng_txt.y;

					other_gray_btn.width = topTextEnglish_mc.other_eng_txt.width;
					other_gray_btn.x = topTextEnglish_mc.other_eng_txt.x;
					other_gray_btn.y = topTextEnglish_mc.other_eng_txt.y;

					resume_gray_btn.width = topTextEnglish_mc.resume_eng_txt.width;
					resume_gray_btn.x = topTextEnglish_mc.resume_eng_txt.x;
					resume_gray_btn.y = topTextEnglish_mc.resume_eng_txt.y;

					about_gray_btn.width = topTextEnglish_mc.about_eng_txt.width;
					about_gray_btn.x = topTextEnglish_mc.about_eng_txt.x;
					about_gray_btn.y = topTextEnglish_mc.about_eng_txt.y;

					about_mc.form_mc.blue_mc.width = about_mc.form_mc.submit_eng_txt.width;
					about_mc.form_mc.blue_mc.x = about_mc.form_mc.submit_eng_txt.x;
					about_mc.form_mc.blue_mc.y = about_mc.form_mc.submit_eng_txt.y;


					if ((topTextSpanish_mc.corporate_spa_txt.visible == true) && (corpID_mc.visible == true))
					{
						black_txt.text = topTextEnglish_mc.corporate_eng_txt.text;
					}
					if ((topTextSpanish_mc.posters_spa_txt.visible == true) && (posters_mc.visible == true))
					{
						black_txt.text = topTextEnglish_mc.posters_eng_txt.text;
					}
					if ((topTextSpanish_mc.web_spa_txt.visible == true) && (web_mc.visible == true))
					{
						black_txt.text = topTextEnglish_mc.web_eng_txt.text;
					}
					if ((topTextSpanish_mc.other_spa_txt.visible == true) && (other_mc.visible == true))
					{
						black_txt.text = topTextEnglish_mc.other_eng_txt.text;
					}
					if ((topTextSpanish_mc.resume_spa_txt.visible == true) && (resume_mc.visible == true))
					{
						black_txt.text = topTextEnglish_mc.resume_eng_txt.text;
					}
					if ((topTextSpanish_mc.about_spa_txt.visible == true) && (about_mc.visible == true))
					{
						black_txt.text = topTextEnglish_mc.about_eng_txt.text;
					}
					break;
			}
		}

		function MZbutton(event:MouseEvent):void
		{
			if (corpID_mc.visible == true && corpID_lowBar_mc.visible == true)
			{
				main_image_mc.visible = true;
				corpID_mc.visible = false;
				corpID_lowBar_mc.visible = false;
			}
			if (posters_mc.visible == true && posters_lowBar_mc.visible == true)
			{
				main_image_mc.visible = true;
				posters_mc.visible = false;
				posters_lowBar_mc.visible = false;
			}
			if (web_mc.visible == true && web_lowBar_mc.visible == true)
			{
				main_image_mc.visible = true;
				web_mc.visible = false;
				web_lowBar_mc.visible = false;
			}
			if (other_mc.visible == true && other_lowBar_mc.visible == true)
			{
				main_image_mc.visible = true;
				other_mc.visible = false;
				other_lowBar_mc.visible = false;
			}
			if (resume_mc.visible == true)
			{
				main_image_mc.visible = true;
				resume_mc.visible = false;
			}
			if (about_mc.visible == true)
			{
				main_image_mc.visible = true;
				about_mc.visible = false;
			}
			black_txt.text = "Miguel Zuleta";
		}
		
		function MZbuttonOver(event:MouseEvent):void
		{
			MZ_btn.gotoAndStop("MZ");
		}
		//CORP ID BUTTON

		/*corpID_mc.visible = false;
		corpID_lowBar_mc.visible = false;
		corporate_gray_btn.visible = false;*/


		function corporate_clik(event:MouseEvent):void
		{
			main_image_mc.visible = false;
			corpID_mc.visible = true;
			corpID_lowBar_mc.visible = true;
			posters_mc.visible = false;
			posters_lowBar_mc.visible = false;
			web_mc.visible = false;
			web_lowBar_mc.visible = false;
			other_mc.visible = false;
			other_lowBar_mc.visible = false;
			resume_mc.visible = false;
			about_mc.visible = false;

			if (eng_lang_black_btn.visible == true)
			{
				black_txt.text = topTextEnglish_mc.corporate_eng_txt.text;
			}
			else if (esp_lang_black_btn.visible == true)
			{
				black_txt.text = topTextSpanish_mc.corporate_spa_txt.text;
			}

		}
		/*function changeBlackText():void
		{
		if (topTextEnglish_mc.corporate_eng_txt.visible == true)
		{
		black_txt.text = topTextEnglish_mc.corporate_eng_txt.text;
		}
		else if (topTextSpanish_mc.corporate_spa_txt.visible == true)
		{
		black_txt.text = topTextSpanish_mc.corporate_spa_txt.text;
		}
		}*/


		function corporate_over(event:MouseEvent):void
		{
			corporate_gray_btn.visible = true;
		}


		function corporate_out(event:MouseEvent):void
		{
			corporate_gray_btn.visible = false;
		}

		// POSTERS BUTTON

		/*posters_mc.visible = false;
		posters_lowBar_mc.visible = false;
		posters_gray_btn.visible = false;*/


		function posters_clik(event:MouseEvent):void
		{
			main_image_mc.visible = false;
			corpID_mc.visible = false;
			corpID_lowBar_mc.visible = false;
			posters_mc.visible = true;
			posters_lowBar_mc.visible = true;
			web_mc.visible = false;
			web_lowBar_mc.visible = false;
			other_mc.visible = false;
			other_lowBar_mc.visible = false;
			resume_mc.visible = false;
			about_mc.visible = false;

			if (eng_lang_black_btn.visible == true)
			{
				black_txt.text = topTextEnglish_mc.posters_eng_txt.text;
			}
			else if (esp_lang_black_btn.visible == true)
			{
				black_txt.text = topTextSpanish_mc.posters_spa_txt.text;
			}
		}


		function postersBtn_over(event:MouseEvent):void
		{
			posters_gray_btn.visible = true;
		}


		function postersBtn_out(event:MouseEvent):void
		{
			posters_gray_btn.visible = false;
		}

		// WEB BUTTON

		/*web_mc.visible = false;
		web_lowBar_mc.visible = false;
		web_gray_btn.visible = false;*/


		function web_clik(event:MouseEvent):void
		{
			main_image_mc.visible = false;
			corpID_mc.visible = false;
			corpID_lowBar_mc.visible = false;
			posters_mc.visible = false;
			posters_lowBar_mc.visible = false;
			web_mc.visible = true;
			web_lowBar_mc.visible = true;
			other_mc.visible = false;
			other_lowBar_mc.visible = false;
			resume_mc.visible = false;
			about_mc.visible = false;

			if (eng_lang_black_btn.visible == true)
			{
				black_txt.text = topTextEnglish_mc.web_eng_txt.text;
			}
			else if (esp_lang_black_btn.visible == true)
			{
				black_txt.text = topTextSpanish_mc.web_spa_txt.text;
			}
		}


		function webBtn_over(event:MouseEvent):void
		{
			web_gray_btn.visible = true;
		}


		function webBtn_out(event:MouseEvent):void
		{
			web_gray_btn.visible = false;
		}

		// OTHER BUTTON

		/*other_mc.visible = false;
		other_lowBar_mc.visible = false;
		other_gray_btn.visible = false;*/


		function other_clik(event:MouseEvent):void
		{
			main_image_mc.visible = false;
			corpID_mc.visible = false;
			corpID_lowBar_mc.visible = false;
			posters_mc.visible = false;
			posters_lowBar_mc.visible = false;
			web_mc.visible = false;
			web_lowBar_mc.visible = false;
			other_mc.visible = true;
			other_lowBar_mc.visible = true;
			resume_mc.visible = false;
			about_mc.visible = false;

			if (eng_lang_black_btn.visible == true)
			{
				black_txt.text = topTextEnglish_mc.other_eng_txt.text;
			}
			else if (esp_lang_black_btn.visible == true)
			{
				black_txt.text = topTextSpanish_mc.other_spa_txt.text;
			}
		}


		function otherBtn_over(event:MouseEvent):void
		{
			other_gray_btn.visible = true;
		}


		function otherBtn_out(event:MouseEvent):void
		{
			other_gray_btn.visible = false;
		}

		// RESUME BUTTON

		/*resume_mc.visible = false;
		resume_gray_btn.visible = false;*/


		function resume_clik(event:MouseEvent):void
		{
			main_image_mc.visible = false;
			corpID_mc.visible = false;
			corpID_lowBar_mc.visible = false;
			posters_mc.visible = false;
			posters_lowBar_mc.visible = false;
			web_mc.visible = false;
			web_lowBar_mc.visible = false;
			other_mc.visible = false;
			other_lowBar_mc.visible = false;
			resume_mc.visible = true;
			about_mc.visible = false;

			if (eng_lang_black_btn.visible == true)
			{
				black_txt.text = topTextEnglish_mc.resume_eng_txt.text;
			}
			else if (esp_lang_black_btn.visible == true)
			{
				black_txt.text = topTextSpanish_mc.resume_spa_txt.text;
			}
		}


		function resumeBtn_over(event:MouseEvent):void
		{
			resume_gray_btn.visible = true;
		}


		function resumeBtn_out(event:MouseEvent):void
		{
			resume_gray_btn.visible = false;
		}

		//ABOUT BUTTON

		/*about_mc.visible = false;
		about_gray_btn.visible = false;*/


		function about_clik(event:MouseEvent):void
		{
			main_image_mc.visible = false;
			corpID_mc.visible = false;
			corpID_lowBar_mc.visible = false;
			posters_mc.visible = false;
			posters_lowBar_mc.visible = false;
			web_mc.visible = false;
			web_lowBar_mc.visible = false;
			other_mc.visible = false;
			other_lowBar_mc.visible = false;
			resume_mc.visible = false;
			about_mc.visible = true;

			if (eng_lang_black_btn.visible == true)
			{
				black_txt.text = topTextEnglish_mc.about_eng_txt.text;
			}
			else if (esp_lang_black_btn.visible == true)
			{
				black_txt.text = topTextSpanish_mc.about_spa_txt.text;
			}
		}


		function aboutBtn_over(event:MouseEvent):void
		{
			about_gray_btn.visible = true;
		}


		function aboutBtn_out(event:MouseEvent):void
		{
			about_gray_btn.visible = false;
		}

		/*-------------------------------------------------------
		CORPORATE IDENTITY*/

		// CORP ID TWEEN
		function corpID_navigate(event:MouseEvent):void
		{
			if (event.target == corpID_lowBar_mc.m7_lowBar_mc)
			{
				corpID_setTween(corpID_oneX,corpID_oneY);

				corpID_lowBar_mc.m7_lowBar_mc.alpha = 1;
				corpID_lowBar_mc.ei_lowBar_mc.alpha = .4;
				corpID_lowBar_mc.ed_lowBar_mc.alpha = .4;
				corpID_lowBar_mc.cmm_lowBar_mc.alpha = .4;
				corpID_lowBar_mc.alien_lowBar_mc.alpha = .4;
			}
			else if (event.target == corpID_lowBar_mc.ei_lowBar_mc)
			{
				corpID_setTween(corpID_twoX,corpID_twoY);
				corpID_lowBar_mc.m7_lowBar_mc.alpha = .4;
				corpID_lowBar_mc.ei_lowBar_mc.alpha = 1;
				corpID_lowBar_mc.ed_lowBar_mc.alpha = .4;
				corpID_lowBar_mc.cmm_lowBar_mc.alpha = .4;
				corpID_lowBar_mc.alien_lowBar_mc.alpha = .4;
			}
			else if (event.target == corpID_lowBar_mc.ed_lowBar_mc)
			{
				corpID_setTween(corpID_threeX,corpID_threeY);
				corpID_lowBar_mc.m7_lowBar_mc.alpha = .4;
				corpID_lowBar_mc.ei_lowBar_mc.alpha = .4;
				corpID_lowBar_mc.ed_lowBar_mc.alpha = 1;
				corpID_lowBar_mc.cmm_lowBar_mc.alpha = .4;
				corpID_lowBar_mc.alien_lowBar_mc.alpha = .4;
			}
			else if (event.target == corpID_lowBar_mc.cmm_lowBar_mc)
			{
				corpID_setTween(corpID_fourX,corpID_fourY);
				corpID_lowBar_mc.m7_lowBar_mc.alpha = .4;
				corpID_lowBar_mc.ei_lowBar_mc.alpha = .4;
				corpID_lowBar_mc.ed_lowBar_mc.alpha = .4;
				corpID_lowBar_mc.cmm_lowBar_mc.alpha = 1;
				corpID_lowBar_mc.alien_lowBar_mc.alpha = .4;
			}
			else if (event.target == corpID_lowBar_mc.alien_lowBar_mc)
			{
				corpID_setTween(corpID_fiveX, corpID_fiveY);
				corpID_lowBar_mc.m7_lowBar_mc.alpha = .4;
				corpID_lowBar_mc.ei_lowBar_mc.alpha = .4;
				corpID_lowBar_mc.ed_lowBar_mc.alpha = .4;
				corpID_lowBar_mc.cmm_lowBar_mc.alpha = .4;
				corpID_lowBar_mc.alien_lowBar_mc.alpha = 1;
			}
		}

		function corpID_over(event:MouseEvent):void
		{
			switch (event.target)
			{
				case corpID_lowBar_mc.m7_lowBar_mc :
					corpID_lowBar_mc.m7_lowBar_mc.alpha = .8;
					break;

				case corpID_lowBar_mc.ei_lowBar_mc :
					corpID_lowBar_mc.ei_lowBar_mc.alpha = .8;
					break;

				case corpID_lowBar_mc.ed_lowBar_mc :
					corpID_lowBar_mc.ed_lowBar_mc.alpha = .8;
					break;

				case corpID_lowBar_mc.cmm_lowBar_mc :
					corpID_lowBar_mc.cmm_lowBar_mc.alpha = .8;
					break;

				case corpID_lowBar_mc.alien_lowBar_mc :
					corpID_lowBar_mc.alien_lowBar_mc.alpha = .8;
					break;
			}
			event.target.buttonMode = true;
		}

		function corpID_out(event:MouseEvent):void
		{
			switch (event.target)
			{
				case corpID_lowBar_mc.m7_lowBar_mc :
					if (corpID_lowBar_mc.m7_lowBar_mc.alpha == 1)
					{
						corpID_lowBar_mc.m7_lowBar_mc.removeEventListener(MouseEvent.ROLL_OUT, corpID_out);
						corpID_lowBar_mc.ei_lowBar_mc.addEventListener(MouseEvent.ROLL_OUT, corpID_out);
						corpID_lowBar_mc.ed_lowBar_mc.addEventListener(MouseEvent.ROLL_OUT, corpID_out);
						corpID_lowBar_mc.cmm_lowBar_mc.addEventListener(MouseEvent.ROLL_OUT, corpID_out);
						corpID_lowBar_mc.alien_lowBar_mc.addEventListener(MouseEvent.ROLL_OUT, corpID_out);

						corpID_lowBar_mc.m7_lowBar_mc.removeEventListener(MouseEvent.ROLL_OVER, corpID_over);
						corpID_lowBar_mc.ei_lowBar_mc.addEventListener(MouseEvent.ROLL_OVER, corpID_over);
						corpID_lowBar_mc.ed_lowBar_mc.addEventListener(MouseEvent.ROLL_OVER, corpID_over);
						corpID_lowBar_mc.cmm_lowBar_mc.addEventListener(MouseEvent.ROLL_OVER, corpID_over);
						corpID_lowBar_mc.alien_lowBar_mc.addEventListener(MouseEvent.ROLL_OVER, corpID_over);
					}
					else
					{
						corpID_lowBar_mc.m7_lowBar_mc.alpha = .4;
					}
					break;

				case corpID_lowBar_mc.ei_lowBar_mc :
					if (corpID_lowBar_mc.ei_lowBar_mc.alpha == 1)
					{
						corpID_lowBar_mc.m7_lowBar_mc.addEventListener(MouseEvent.ROLL_OUT, corpID_out);
						corpID_lowBar_mc.ei_lowBar_mc.removeEventListener(MouseEvent.ROLL_OUT, corpID_out);
						corpID_lowBar_mc.ed_lowBar_mc.addEventListener(MouseEvent.ROLL_OUT, corpID_out);
						corpID_lowBar_mc.cmm_lowBar_mc.addEventListener(MouseEvent.ROLL_OUT, corpID_out);
						corpID_lowBar_mc.alien_lowBar_mc.addEventListener(MouseEvent.ROLL_OUT, corpID_out);

						corpID_lowBar_mc.m7_lowBar_mc.addEventListener(MouseEvent.ROLL_OVER, corpID_over);
						corpID_lowBar_mc.ei_lowBar_mc.removeEventListener(MouseEvent.ROLL_OVER, corpID_over);
						corpID_lowBar_mc.ed_lowBar_mc.addEventListener(MouseEvent.ROLL_OVER, corpID_over);
						corpID_lowBar_mc.cmm_lowBar_mc.addEventListener(MouseEvent.ROLL_OVER, corpID_over);
						corpID_lowBar_mc.alien_lowBar_mc.addEventListener(MouseEvent.ROLL_OVER, corpID_over);
					}
					else
					{
						corpID_lowBar_mc.ei_lowBar_mc.alpha = .4;
					}
					break;

				case corpID_lowBar_mc.ed_lowBar_mc :
					if (corpID_lowBar_mc.ed_lowBar_mc.alpha == 1)
					{
						corpID_lowBar_mc.m7_lowBar_mc.addEventListener(MouseEvent.ROLL_OUT, corpID_out);
						corpID_lowBar_mc.ei_lowBar_mc.addEventListener(MouseEvent.ROLL_OUT, corpID_out);
						corpID_lowBar_mc.ed_lowBar_mc.removeEventListener(MouseEvent.ROLL_OUT, corpID_out);
						corpID_lowBar_mc.cmm_lowBar_mc.addEventListener(MouseEvent.ROLL_OUT, corpID_out);
						corpID_lowBar_mc.alien_lowBar_mc.addEventListener(MouseEvent.ROLL_OUT, corpID_out);

						corpID_lowBar_mc.m7_lowBar_mc.addEventListener(MouseEvent.ROLL_OVER, corpID_over);
						corpID_lowBar_mc.ei_lowBar_mc.addEventListener(MouseEvent.ROLL_OVER, corpID_over);
						corpID_lowBar_mc.ed_lowBar_mc.removeEventListener(MouseEvent.ROLL_OVER, corpID_over);
						corpID_lowBar_mc.cmm_lowBar_mc.addEventListener(MouseEvent.ROLL_OVER, corpID_over);
						corpID_lowBar_mc.alien_lowBar_mc.addEventListener(MouseEvent.ROLL_OVER, corpID_over);
					}
					else
					{
						corpID_lowBar_mc.ed_lowBar_mc.alpha = .4;
					}
					break;

				case corpID_lowBar_mc.cmm_lowBar_mc :
					if (corpID_lowBar_mc.cmm_lowBar_mc.alpha == 1)
					{
						corpID_lowBar_mc.m7_lowBar_mc.addEventListener(MouseEvent.ROLL_OUT, corpID_out);
						corpID_lowBar_mc.ei_lowBar_mc.addEventListener(MouseEvent.ROLL_OUT, corpID_out);
						corpID_lowBar_mc.ed_lowBar_mc.addEventListener(MouseEvent.ROLL_OUT, corpID_out);
						corpID_lowBar_mc.cmm_lowBar_mc.removeEventListener(MouseEvent.ROLL_OUT, corpID_out);
						corpID_lowBar_mc.alien_lowBar_mc.addEventListener(MouseEvent.ROLL_OUT, corpID_out);

						corpID_lowBar_mc.m7_lowBar_mc.addEventListener(MouseEvent.ROLL_OVER, corpID_over);
						corpID_lowBar_mc.ei_lowBar_mc.addEventListener(MouseEvent.ROLL_OVER, corpID_over);
						corpID_lowBar_mc.ed_lowBar_mc.addEventListener(MouseEvent.ROLL_OVER, corpID_over);
						corpID_lowBar_mc.cmm_lowBar_mc.removeEventListener(MouseEvent.ROLL_OVER, corpID_over);
						corpID_lowBar_mc.alien_lowBar_mc.addEventListener(MouseEvent.ROLL_OVER, corpID_over);
					}
					else
					{
						corpID_lowBar_mc.cmm_lowBar_mc.alpha = .4;
					}
					break;

				case corpID_lowBar_mc.alien_lowBar_mc :
					if (corpID_lowBar_mc.alien_lowBar_mc.alpha == 1)
					{
						corpID_lowBar_mc.m7_lowBar_mc.addEventListener(MouseEvent.ROLL_OUT, corpID_out);
						corpID_lowBar_mc.ei_lowBar_mc.addEventListener(MouseEvent.ROLL_OUT, corpID_out);
						corpID_lowBar_mc.ed_lowBar_mc.addEventListener(MouseEvent.ROLL_OUT, corpID_out);
						corpID_lowBar_mc.cmm_lowBar_mc.addEventListener(MouseEvent.ROLL_OUT, corpID_out);
						corpID_lowBar_mc.alien_lowBar_mc.removeEventListener(MouseEvent.ROLL_OUT, corpID_out);

						corpID_lowBar_mc.m7_lowBar_mc.addEventListener(MouseEvent.ROLL_OVER, corpID_over);
						corpID_lowBar_mc.ei_lowBar_mc.addEventListener(MouseEvent.ROLL_OVER, corpID_over);
						corpID_lowBar_mc.ed_lowBar_mc.addEventListener(MouseEvent.ROLL_OVER, corpID_over);
						corpID_lowBar_mc.cmm_lowBar_mc.addEventListener(MouseEvent.ROLL_OVER, corpID_over);
						corpID_lowBar_mc.alien_lowBar_mc.removeEventListener(MouseEvent.ROLL_OVER, corpID_over);
					}
					else
					{
						corpID_lowBar_mc.alien_lowBar_mc.alpha = .4;
					}
					break;
			}
		}

		function corpID_setTween(corpID_tweenX:Number, corpID_tweenY:Number):void
		{
			corpID_xTween.begin = corpID_mc.x;
			corpID_yTween.begin = corpID_mc.y;
			corpID_xTween.finish = corpID_tweenX;
			corpID_yTween.finish = corpID_tweenY;

			corpID_xTween.start();
			corpID_yTween.start();
		}

		//M7 TEK BUTTON TWEEN

		function M7_navigate(event:MouseEvent):void
		{
			if (event.target == corpID_mc.m7_mc.one_m7_btn)
			{
				M7_setTween(M7_oneX,M7_oneY);
			}
			else if (event.target == corpID_mc.m7_mc.two_m7_btn)
			{
				M7_setTween(M7_twoX,M7_twoY);
			}
			else
			{
				M7_setTween(M7_threeX,M7_threeY);
			}
		}

		function M7_setTween(M7_tweenX:Number, M7_tweenY:Number):void
		{
			M7_xTween.begin = corpID_mc.m7_mc.m7_images_mc.x;
			M7_yTween.begin = corpID_mc.m7_mc.m7_images_mc.y;
			M7_xTween.finish = M7_tweenX;
			M7_yTween.finish = M7_tweenY;

			M7_xTween.start();
			M7_yTween.start();
		}

		function M7_circleOver(event:MouseEvent):void
		{
			switch (event.target)
			{
				case corpID_mc.m7_mc.one_m7_btn :
					corpID_mc.m7_mc.over_circle_mc.x = corpID_mc.m7_mc.one_m7_btn.x;
					corpID_mc.m7_mc.over_circle_mc.y = corpID_mc.m7_mc.one_m7_btn.y;
					break;

				case corpID_mc.m7_mc.two_m7_btn :
					corpID_mc.m7_mc.over_circle_mc.x = corpID_mc.m7_mc.two_m7_btn.x;
					corpID_mc.m7_mc.over_circle_mc.y = corpID_mc.m7_mc.two_m7_btn.y;
					break;

				case corpID_mc.m7_mc.three_m7_btn :
					corpID_mc.m7_mc.over_circle_mc.x = corpID_mc.m7_mc.three_m7_btn.x;
					corpID_mc.m7_mc.over_circle_mc.y = corpID_mc.m7_mc.three_m7_btn.y;
					break;
			}
		}

		// EPIC INVENTIONS BUTTON TWEEN


		function EI_navigate(event:MouseEvent):void
		{
			if (event.target == corpID_mc.ei_mc.one_ei_btn)
			{
				EI_setTween(EI_oneX,EI_oneY);
			}
			else if (event.target == corpID_mc.ei_mc.two_ei_btn)
			{
				EI_setTween(EI_twoX,EI_twoY);
			}
			else if (event.target == corpID_mc.ei_mc.three_ei_btn)
			{
				EI_setTween(EI_threeX,EI_threeY);
			}
			else
			{
				EI_setTween(EI_fourX,EI_fourY);
			}
		}

		function EI_setTween(EI_tweenX:Number, EI_tweenY:Number):void
		{
			EI_xTween.begin = corpID_mc.ei_mc.ei_images_mc.x;
			EI_yTween.begin = corpID_mc.ei_mc.ei_images_mc.y;
			EI_xTween.finish = EI_tweenX;
			EI_yTween.finish = EI_tweenY;

			EI_xTween.start();
			EI_yTween.start();
		}

		function EI_circleOver(event:MouseEvent):void
		{
			switch (event.target)
			{
				case corpID_mc.ei_mc.one_ei_btn :
					corpID_mc.ei_mc.over_circle_mc.x = corpID_mc.ei_mc.one_ei_btn.x;
					corpID_mc.ei_mc.over_circle_mc.y = corpID_mc.ei_mc.one_ei_btn.y;
					break;

				case corpID_mc.ei_mc.two_ei_btn :
					corpID_mc.ei_mc.over_circle_mc.x = corpID_mc.ei_mc.two_ei_btn.x;
					corpID_mc.ei_mc.over_circle_mc.y = corpID_mc.ei_mc.two_ei_btn.y;
					break;

				case corpID_mc.ei_mc.three_ei_btn :
					corpID_mc.ei_mc.over_circle_mc.x = corpID_mc.ei_mc.three_ei_btn.x;
					corpID_mc.ei_mc.over_circle_mc.y = corpID_mc.ei_mc.three_ei_btn.y;
					break;

				case corpID_mc.ei_mc.four_ei_btn :
					corpID_mc.ei_mc.over_circle_mc.x = corpID_mc.ei_mc.four_ei_btn.x;
					corpID_mc.ei_mc.over_circle_mc.y = corpID_mc.ei_mc.four_ei_btn.y;
					break;
			}
		}

		// EPIC DUEL BUTTON TWEEN

		function ED_navigate(event:MouseEvent):void
		{
			if (event.target == corpID_mc.ed_mc.one_ed_btn)
			{
				ED_setTween(ED_oneX,ED_oneY);
			}
			else if (event.target == corpID_mc.ed_mc.two_ed_btn)
			{
				ED_setTween(ED_twoX,ED_twoY);
			}
			else
			{
				ED_setTween(ED_threeX,ED_threeY);
			}
		}

		function ED_setTween(ED_tweenX:Number, ED_tweenY:Number):void
		{
			ED_xTween.begin = corpID_mc.ed_mc.ed_images_mc.x;
			ED_yTween.begin = corpID_mc.ed_mc.ed_images_mc.y;
			ED_xTween.finish = ED_tweenX;
			ED_yTween.finish = ED_tweenY;

			ED_xTween.start();
			ED_yTween.start();
		}

		function ED_circleOver(event:MouseEvent):void
		{
			switch (event.target)
			{
				case corpID_mc.ed_mc.one_ed_btn :
					corpID_mc.ed_mc.over_circle_mc.x = corpID_mc.ed_mc.one_ed_btn.x;
					corpID_mc.ed_mc.over_circle_mc.y = corpID_mc.ed_mc.one_ed_btn.y;
					break;

				case corpID_mc.ed_mc.two_ed_btn :
					corpID_mc.ed_mc.over_circle_mc.x = corpID_mc.ed_mc.two_ed_btn.x;
					corpID_mc.ed_mc.over_circle_mc.y = corpID_mc.ed_mc.two_ed_btn.y;
					break;

					case corpID_mc.ed_mc.three_ed_btn :
					corpID_mc.ed_mc.over_circle_mc.x = corpID_mc.ed_mc.three_ed_btn.x;
					corpID_mc.ed_mc.over_circle_mc.y = corpID_mc.ed_mc.three_ed_btn.y;
					break;
			}
		}

		// COLEGIO MUNDO MONTESSORI BUTTON TWEEN

		function CMM_navigate(event:MouseEvent):void
		{
			if (event.target == corpID_mc.cmm_mc.one_cmm_btn)
			{
				CMM_setTween(CMM_oneX,CMM_oneY);
			}
			else
			{
				CMM_setTween(CMM_twoX,CMM_twoY);
			}
		}

		function CMM_setTween(CMM_tweenX:Number, CMM_tweenY:Number):void
		{
			CMM_xTween.begin = corpID_mc.cmm_mc.cmm_images_mc.x;
			CMM_yTween.begin = corpID_mc.cmm_mc.cmm_images_mc.y;
			CMM_xTween.finish = CMM_tweenX;
			CMM_yTween.finish = CMM_tweenY;

			CMM_xTween.start();
			CMM_yTween.start();
		}

		function CMM_circleOver(event:MouseEvent):void
		{
			switch (event.target)
			{
				case corpID_mc.cmm_mc.one_cmm_btn :
					corpID_mc.cmm_mc.over_circle_mc.x = corpID_mc.cmm_mc.one_cmm_btn.x;
					corpID_mc.cmm_mc.over_circle_mc.y = corpID_mc.cmm_mc.one_cmm_btn.y;
					break;

				case corpID_mc.cmm_mc.two_cmm_btn :
					corpID_mc.cmm_mc.over_circle_mc.x = corpID_mc.cmm_mc.two_cmm_btn.x;
					corpID_mc.cmm_mc.over_circle_mc.y = corpID_mc.cmm_mc.two_cmm_btn.y;
					break;
			}
		}

		// ALIEN COMPANY BUTTON TWEEN

		function ALIEN_navigate(event:MouseEvent):void
		{
			if (event.target == corpID_mc.alien_mc.one_alien_btn)
			{
				ALIEN_setTween(ALIEN_oneX,ALIEN_oneY);
			}
			else
			{
				ALIEN_setTween(ALIEN_twoX,ALIEN_twoY);
			}
		}

		function ALIEN_setTween(ALIEN_tweenX:Number, ALIEN_tweenY:Number):void
		{
			ALIEN_xTween.begin = corpID_mc.alien_mc.alien_images_mc.x;
			ALIEN_yTween.begin = corpID_mc.alien_mc.alien_images_mc.y;
			ALIEN_xTween.finish = ALIEN_tweenX;
			ALIEN_yTween.finish = ALIEN_tweenY;

			ALIEN_xTween.start();
			ALIEN_yTween.start();
		}

		function ALIEN_circleOver(event:MouseEvent):void
		{
			switch (event.target)
			{
				case corpID_mc.alien_mc.one_alien_btn :
					corpID_mc.alien_mc.over_circle_mc.x = corpID_mc.alien_mc.one_alien_btn.x;
					corpID_mc.alien_mc.over_circle_mc.y = corpID_mc.alien_mc.one_alien_btn.y;
					break;

				case corpID_mc.alien_mc.two_alien_btn :
					corpID_mc.alien_mc.over_circle_mc.x = corpID_mc.alien_mc.two_alien_btn.x;
					corpID_mc.alien_mc.over_circle_mc.y = corpID_mc.alien_mc.two_alien_btn.y;
					break;
			}
		}

		/*-------------------------------------------------------
		POSTERS*/

		// POSTERS TWEEN

		function posters_navigate(event:MouseEvent):void
		{
			if (event.target == posters_lowBar_mc.cadd_lowBar_mc)
			{
				posters_setTween(posters_oneX,posters_oneY);

				posters_lowBar_mc.cadd_lowBar_mc.alpha = 1;
				posters_lowBar_mc.bush_lowBar_mc.alpha = .4;
			}
			else if (event.target == posters_lowBar_mc.bush_lowBar_mc)
			{
				posters_setTween(posters_twoX,posters_twoY);

				posters_lowBar_mc.cadd_lowBar_mc.alpha = .4;
				posters_lowBar_mc.bush_lowBar_mc.alpha = 1;
			}
		}

		function posters_over(event:MouseEvent):void
		{
			switch (event.target)
			{
				case posters_lowBar_mc.cadd_lowBar_mc :
					posters_lowBar_mc.cadd_lowBar_mc.alpha = .8;
					break;

				case posters_lowBar_mc.bush_lowBar_mc :
					posters_lowBar_mc.bush_lowBar_mc.alpha = .8;
					break;
			}
			//event.target.buttonMode = true;
		}

		function posters_out(event:MouseEvent):void
		{
			switch (event.target)
			{
				case posters_lowBar_mc.cadd_lowBar_mc :
					if (posters_lowBar_mc.cadd_lowBar_mc.alpha == 1)
					{
						posters_lowBar_mc.cadd_lowBar_mc.removeEventListener(MouseEvent.ROLL_OUT, posters_out);
						posters_lowBar_mc.bush_lowBar_mc.addEventListener(MouseEvent.ROLL_OUT, posters_out);

						posters_lowBar_mc.cadd_lowBar_mc.removeEventListener(MouseEvent.ROLL_OVER, posters_over);
						posters_lowBar_mc.bush_lowBar_mc.addEventListener(MouseEvent.ROLL_OVER, posters_over);

					}
					else
					{
						posters_lowBar_mc.cadd_lowBar_mc.alpha = .4;
					}
					break;

				case posters_lowBar_mc.bush_lowBar_mc :
					if (posters_lowBar_mc.bush_lowBar_mc.alpha == 1)
					{
						posters_lowBar_mc.cadd_lowBar_mc.addEventListener(MouseEvent.ROLL_OUT, posters_out);
						posters_lowBar_mc.bush_lowBar_mc.removeEventListener(MouseEvent.ROLL_OUT, posters_out);

						posters_lowBar_mc.cadd_lowBar_mc.addEventListener(MouseEvent.ROLL_OVER, posters_over);
						posters_lowBar_mc.bush_lowBar_mc.removeEventListener(MouseEvent.ROLL_OVER, posters_over);

					}
					else
					{
						posters_lowBar_mc.bush_lowBar_mc.alpha = .4;
					}
					break;
			}
		}

		function posters_setTween(posters_tweenX:Number, posters_tweenY:Number):void
		{
			posters_xTween.begin = posters_mc.x;
			posters_yTween.begin = posters_mc.y;
			posters_xTween.finish = posters_tweenX;
			posters_yTween.finish = posters_tweenY;

			posters_xTween.start();
			posters_yTween.start();
		}

		// POSTERS DRAG
		public function init():void
		{
			trace("INIT!");

			posters_mc.cadd_ZoomIn_mc.addEventListener(MouseEvent.CLICK, loadAsset);
			posters_mc.cadd_ZoomOut_mc.addEventListener(MouseEvent.CLICK, loadAsset);
			posters_mc.cadd_ZoomIn_mc.buttonMode = true;
			posters_mc.cadd_ZoomOut_mc.buttonMode = true;

			posters_mc.bush_ZoomIn_mc.addEventListener(MouseEvent.CLICK, loadAsset);
			posters_mc.bush_ZoomOut_mc.addEventListener(MouseEvent.CLICK, loadAsset);
			posters_mc.bush_ZoomIn_mc.buttonMode = true;
			posters_mc.bush_ZoomOut_mc.buttonMode = true;

			other_mc.calendar_ZoomIn_mc.addEventListener(MouseEvent.CLICK, loadAsset);
			other_mc.calendar_ZoomOut_mc.addEventListener(MouseEvent.CLICK, loadAsset);
			other_mc.calendar_ZoomIn_mc.buttonMode = true;
			other_mc.calendar_ZoomOut_mc.buttonMode = true;

			posters_lowBar_mc.cadd_lowBar_mc.addEventListener(MouseEvent.CLICK, loadAsset);
			posters_lowBar_mc.bush_lowBar_mc.addEventListener(MouseEvent.CLICK, loadAsset);

			//about_btn.addEventListener(MouseEvent.CLICK, loadAsset);

			/*false, 0, true if the asset is removed from the stage it will be removed from the stage.*/
			
			_loader = new Loader();
			_loader.contentLoaderInfo.addEventListener(Event.COMPLETE, completeListener);
			_loader.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressListener);
			
			/*_loader.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS, progressCADD);
			function progressCADD(e:ProgressEvent):void
			{
				var total:Number = (e.bytesLoaded/e.bytesTotal);
				//trace("Loading In Progress");
				posters_mc.caddLoadMC_mc.percentCADD_mc.numbers_mc.percent_txt.text = Math.floor(total*100) + "%";
				posters_mc.caddLoadMC_mc.percentCADD_mc.numbers_mc.braquets_mc.rotation += 2;
			}*/
			
			/*several events to add to loader: loader has property called contentLoaderInfo. it is property of loader object that allows you to listen for several different types of loading evets.
			  contentLoaderInfo. it is property of loader object that allows you to listen for several different types of loading evets. one of those being the COMPLETE event. below.
			COMPLETE means loading a listener when loading finished*/
		}
		private function loadAsset(event:MouseEvent):void
		{
			switch (event.target)
			{
				case posters_mc.cadd_ZoomIn_mc :
					trace("cock is bigger");
					posters_mc.cadd_ZoomOut_mc.visible = true;
					posters_mc.caddLoadMC_mc.visible = true;
					_urlRequest = new URLRequest("cockTurd.swf");
					_loader.load(_urlRequest);
					posters_mc.cadd_small_mc.visible = false;
					posters_mc.cadd_ZoomIn_mc.visible = false;
					posters_mc.caddLoadMC_mc.addChild(_loader);
					//_loader.unload();
					posters_mc.bush_ZoomOut_mc.visible = false;
					posters_mc.bushLoadMC_mc.visible = false;
					posters_mc.bush_small_mc.visible = true;
					posters_mc.bush_ZoomIn_mc.visible = true;
					//posters_mc.bushLoadMC_mc.removeChild(_loader);
					other_mc.calendar_ZoomOut_mc.visible = false;
					other_mc.calendarLoadMC_mc.visible = false;
					other_mc.calendar_small_mc.visible = true;
					other_mc.calendar_ZoomIn_mc.visible = true;
					break;

				case posters_mc.cadd_ZoomOut_mc :
					trace("shrink cock");
					_loader.unload();
					posters_mc.cadd_ZoomOut_mc.visible = false;
					posters_mc.caddLoadMC_mc.visible = false;
					posters_mc.cadd_small_mc.visible = true;
					posters_mc.cadd_ZoomIn_mc.visible = true;
					//posters_mc.caddLoadMC_mc.removeChild(_loader);
					break;

				case posters_mc.bush_ZoomIn_mc :
					trace("bush is bigger");
					posters_mc.bush_ZoomOut_mc.visible = true;
					posters_mc.bushLoadMC_mc.visible = true;
					_urlRequest = new URLRequest("bushTurd.swf");
					_loader.load(_urlRequest);
					posters_mc.bush_small_mc.visible = false;
					posters_mc.bush_ZoomIn_mc.visible = false;
					posters_mc.bushLoadMC_mc.addChild(_loader);
					//_loader.unload();
					posters_mc.cadd_ZoomOut_mc.visible = false;
					posters_mc.caddLoadMC_mc.visible = false;
					posters_mc.cadd_small_mc.visible = true;
					posters_mc.cadd_ZoomIn_mc.visible = true;
					//posters_mc.caddLoadMC_mc.removeChild(_loader);
					other_mc.calendar_ZoomOut_mc.visible = false;
					other_mc.calendarLoadMC_mc.visible = false;
					other_mc.calendar_small_mc.visible = true;
					other_mc.calendar_ZoomIn_mc.visible = true;
					break;

				case posters_mc.bush_ZoomOut_mc :
					trace("shrink bush");
					_loader.unload();
					posters_mc.bush_ZoomOut_mc.visible = false;
					posters_mc.bushLoadMC_mc.visible = false;
					posters_mc.bush_small_mc.visible = true;
					posters_mc.bush_ZoomIn_mc.visible = true;
					//posters_mc.bushLoadMC_mc.removeChild(_loader);
					break;

				case other_mc.calendar_ZoomIn_mc :
					trace("calendar is bigger");
					other_mc.calendar_ZoomOut_mc.visible = true;
					other_mc.calendarLoadMC_mc.visible = true;
					_urlRequest = new URLRequest("calendarTurd.swf");
					_loader.load(_urlRequest);
					other_mc.calendar_small_mc.visible = false;
					other_mc.calendar_ZoomIn_mc.visible = false;
					other_mc.calendarLoadMC_mc.addChild(_loader);
					//other_mc.bushLoadMC_mc.removeChild(_loader);
					posters_mc.cadd_ZoomOut_mc.visible = false;
					posters_mc.caddLoadMC_mc.visible = false;
					posters_mc.cadd_small_mc.visible = true;
					posters_mc.cadd_ZoomIn_mc.visible = true;
					
					posters_mc.bush_ZoomOut_mc.visible = false;
					posters_mc.bushLoadMC_mc.visible = false;
					posters_mc.bush_small_mc.visible = true;
					posters_mc.bush_ZoomIn_mc.visible = true;
					break;

				case other_mc.calendar_ZoomOut_mc :
					trace("shrink calendar");
					_loader.unload();
					other_mc.calendar_ZoomOut_mc.visible = false;
					other_mc.calendarLoadMC_mc.visible = false;
					other_mc.calendar_small_mc.visible = true;
					other_mc.calendar_ZoomIn_mc.visible = true;
					//other_mc.calendarLoadMC_mc.removeChild(_loader);
					break;

				case posters_lowBar_mc.cadd_lowBar_mc :
					_loader.unload();
					trace("shrink bush");
					posters_mc.bush_ZoomOut_mc.visible = false;
					posters_mc.bushLoadMC_mc.visible = false;
					posters_mc.bush_small_mc.visible = true;
					posters_mc.bush_ZoomIn_mc.visible = true;
					//posters_mc.bushLoadMC_mc.removeChild(_loader);
					break;

				case posters_lowBar_mc.bush_lowBar_mc :
					trace("shrink cock");
					_loader.unload();
					posters_mc.cadd_ZoomOut_mc.visible = false;
					posters_mc.caddLoadMC_mc.visible = false;
					posters_mc.cadd_small_mc.visible = true;
					posters_mc.cadd_ZoomIn_mc.visible = true;
					//posters_mc.caddLoadMC_mc.removeChild(_loader);
					break;

					/*case about_btn:
					trace("load form")
					_urlRequest = new URLRequest("quoteForm.swf");
					_loader.load(_urlRequest);
					about_mc.addChild(_loader);*/
			}
		}
		/*private function noForm():void
		{
		if(about_mc.visible == false)
		{
		trace("UNLOAD!");
		_loader.unload();
		
		}
		}*/

		public function completeListener(e:Event):void
		{
			trace("Loading Completed");
			numbers_mc.visible = false;
		}
		
		public function progressListener(e:ProgressEvent):void
		{
			numbers_mc.visible = true;
			//trace("LOADING IN PROGRESS...");
			var total:Number = (e.bytesLoaded/e.bytesTotal);
			numbers_mc.percent_txt.text = Math.floor(total*100) + "%";
			numbers_mc.braquets_mc.rotation += 2;
		}

		/*-------------------------------------------------------
		WEB*/

		/*function web_navigate(event:MouseEvent):void
		{
			if (event.target == web_lowBar_mc.webCMM_lowBar_mc)
			{
				web_setTween(web_oneX,web_oneY);

				web_lowBar_mc.webCMM_lowBar_mc.alpha = 1;
				web_lowBar_mc.dwayne_lowBar_mc.alpha = .4;
			}
			else if (event.target == web_lowBar_mc.dwayne_lowBar_mc)
			{
				web_setTween(web_twoX,web_twoY);

				web_lowBar_mc.webCMM_lowBar_mc.alpha = .4;
				web_lowBar_mc.dwayne_lowBar_mc.alpha = 1;
			}
		}

		function web_over(event:MouseEvent):void
		{
			switch (event.target)
			{
				case web_lowBar_mc.webCMM_lowBar_mc :
					web_lowBar_mc.webCMM_lowBar_mc.alpha = .8;
					break;

				case web_lowBar_mc.dwayne_lowBar_mc :
					web_lowBar_mc.dwayne_lowBar_mc.alpha = .8;
					break;
			}
			//event.target.buttonMode = true;
		}

		function web_out(event:MouseEvent):void
		{
			switch (event.target)
			{
				case web_lowBar_mc.webCMM_lowBar_mc :
					if (web_lowBar_mc.webCMM_lowBar_mc.alpha == 1)
					{
						web_lowBar_mc.webCMM_lowBar_mc.removeEventListener(MouseEvent.ROLL_OUT, web_out);
						web_lowBar_mc.dwayne_lowBar_mc.addEventListener(MouseEvent.ROLL_OUT, web_out);

						web_lowBar_mc.webCMM_lowBar_mc.removeEventListener(MouseEvent.ROLL_OVER, web_over);
						web_lowBar_mc.dwayne_lowBar_mc.addEventListener(MouseEvent.ROLL_OVER, web_over);

					}
					else
					{
						web_lowBar_mc.webCMM_lowBar_mc.alpha = .4;
					}
					break;

				case web_lowBar_mc.dwayne_lowBar_mc :
					if (web_lowBar_mc.dwayne_lowBar_mc.alpha == 1)
					{
						web_lowBar_mc.webCMM_lowBar_mc.addEventListener(MouseEvent.ROLL_OUT, web_out);
						web_lowBar_mc.dwayne_lowBar_mc.removeEventListener(MouseEvent.ROLL_OUT, web_out);

						web_lowBar_mc.webCMM_lowBar_mc.addEventListener(MouseEvent.ROLL_OVER, web_over);
						web_lowBar_mc.dwayne_lowBar_mc.removeEventListener(MouseEvent.ROLL_OVER, web_over);

					}
					else
					{
						web_lowBar_mc.dwayne_lowBar_mc.alpha = .4;
					}
					break;
			}
		}

		function web_setTween(web_tweenX:Number, web_tweenY:Number):void
		{
			web_xTween.begin = web_mc.x;
			web_yTween.begin = web_mc.y;
			web_xTween.finish = web_tweenX;
			web_yTween.finish = web_tweenY;

			web_xTween.start();
			web_yTween.start();
		}*/

		/*-------------------------------------------------------
		OTHER*/

		function other_navigate(event:MouseEvent):void
		{
			if (event.target == other_lowBar_mc.stamps_lowBar_mc)
			{
				other_setTween(other_oneX,other_oneY);

				other_lowBar_mc.stamps_lowBar_mc.alpha = 1;
				other_lowBar_mc.calendar_lowBar_mc.alpha = .4;
				other_lowBar_mc.salty_lowBar_mc.alpha = .4;
			}
			else if (event.target == other_lowBar_mc.calendar_lowBar_mc)
			{
				other_setTween(other_twoX,other_twoY);

				other_lowBar_mc.stamps_lowBar_mc.alpha = .4;
				other_lowBar_mc.calendar_lowBar_mc.alpha = 1;
				other_lowBar_mc.salty_lowBar_mc.alpha = .4;
			}
			else if (event.target == other_lowBar_mc.salty_lowBar_mc)
			{
				other_setTween(other_threeX,other_threeY);

				other_lowBar_mc.stamps_lowBar_mc.alpha = .4;
				other_lowBar_mc.calendar_lowBar_mc.alpha = .4;
				other_lowBar_mc.salty_lowBar_mc.alpha = 1;
			}
		}

		function other_over(event:MouseEvent):void
		{
			switch (event.target)
			{
				case other_lowBar_mc.stamps_lowBar_mc :
					other_lowBar_mc.stamps_lowBar_mc.alpha = .8;
					break;

				case other_lowBar_mc.calendar_lowBar_mc :
					other_lowBar_mc.calendar_lowBar_mc.alpha = .8;
					break;

				case other_lowBar_mc.salty_lowBar_mc :
					other_lowBar_mc.salty_lowBar_mc.alpha = .8;
					break;
			}
			//event.target.buttonMode = true;
		}



		function other_out(event:MouseEvent):void
		{
			switch (event.target)
			{
				case other_lowBar_mc.stamps_lowBar_mc :
					if (other_lowBar_mc.stamps_lowBar_mc.alpha == 1)
					{
						other_lowBar_mc.stamps_lowBar_mc.removeEventListener(MouseEvent.ROLL_OUT, other_out);
						other_lowBar_mc.calendar_lowBar_mc.addEventListener(MouseEvent.ROLL_OUT, other_out);
						other_lowBar_mc.salty_lowBar_mc.addEventListener(MouseEvent.ROLL_OUT, other_out);

						other_lowBar_mc.stamps_lowBar_mc.removeEventListener(MouseEvent.ROLL_OVER, other_over);
						other_lowBar_mc.calendar_lowBar_mc.addEventListener(MouseEvent.ROLL_OVER, other_over);
						other_lowBar_mc.salty_lowBar_mc.addEventListener(MouseEvent.ROLL_OVER, other_over);

					}
					else
					{
						other_lowBar_mc.stamps_lowBar_mc.alpha = .4;
					}
					break;

				case other_lowBar_mc.calendar_lowBar_mc :
					if (other_lowBar_mc.calendar_lowBar_mc.alpha == 1)
					{
						other_lowBar_mc.stamps_lowBar_mc.addEventListener(MouseEvent.ROLL_OUT, other_out);
						other_lowBar_mc.calendar_lowBar_mc.removeEventListener(MouseEvent.ROLL_OUT, other_out);
						other_lowBar_mc.salty_lowBar_mc.addEventListener(MouseEvent.ROLL_OUT, other_out);

						other_lowBar_mc.stamps_lowBar_mc.addEventListener(MouseEvent.ROLL_OVER, other_over);
						other_lowBar_mc.calendar_lowBar_mc.removeEventListener(MouseEvent.ROLL_OVER, other_over);
						other_lowBar_mc.salty_lowBar_mc.addEventListener(MouseEvent.ROLL_OVER, other_over);

					}
					else
					{
						other_lowBar_mc.calendar_lowBar_mc.alpha = .4;
					}
					break;

				case other_lowBar_mc.salty_lowBar_mc :
					if (other_lowBar_mc.salty_lowBar_mc.alpha == 1)
					{
						other_lowBar_mc.stamps_lowBar_mc.addEventListener(MouseEvent.ROLL_OUT, other_out);
						other_lowBar_mc.calendar_lowBar_mc.addEventListener(MouseEvent.ROLL_OUT, other_out);
						other_lowBar_mc.salty_lowBar_mc.removeEventListener(MouseEvent.ROLL_OUT, other_out);

						other_lowBar_mc.stamps_lowBar_mc.addEventListener(MouseEvent.ROLL_OVER, other_over);
						other_lowBar_mc.calendar_lowBar_mc.addEventListener(MouseEvent.ROLL_OVER, other_over);
						other_lowBar_mc.salty_lowBar_mc.removeEventListener(MouseEvent.ROLL_OVER, other_over);

					}
					else
					{
						other_lowBar_mc.salty_lowBar_mc.alpha = .4;
					}
					break;
			}
		}

		function other_setTween(other_tweenX:Number, other_tweenY:Number):void
		{
			other_xTween.begin = other_mc.x;
			other_yTween.begin = other_mc.y;
			other_xTween.finish = other_tweenX;
			other_yTween.finish = other_tweenY;

			other_xTween.start();
			other_yTween.start();
		}

		// SALTY COLOMBIAN TWEEN

		function SALTY_navigate(event:MouseEvent):void
		{
			if (event.target == other_mc.one_salty_btn)
			{
				SALTY_setTween(SALTY_oneX,SALTY_oneY);
			}
			else
			{
				SALTY_setTween(SALTY_twoX,SALTY_twoY);
			}
		}

		function SALTY_setTween(SALTY_tweenX:Number, SALTY_tweenY:Number):void
		{
			SALTY_xTween.begin = other_mc.salty_mc.x;
			SALTY_yTween.begin = other_mc.salty_mc.y;
			SALTY_xTween.finish = SALTY_tweenX;
			SALTY_yTween.finish = SALTY_tweenY;

			SALTY_xTween.start();
			SALTY_yTween.start();
		}

		function SALTY_circleOver(event:MouseEvent):void
		{
			switch (event.target)
			{
				case other_mc.one_salty_btn :
					other_mc.over_circle_mc.x = other_mc.one_salty_btn.x;
					other_mc.over_circle_mc.y = other_mc.one_salty_btn.y;
					break;

				case other_mc.two_salty_btn :
					other_mc.over_circle_mc.x = other_mc.two_salty_btn.x;
					other_mc.over_circle_mc.y = other_mc.two_salty_btn.y;
					break;
			}
		}

		/*-------------------------------------------------------
		RESUME*/

		function loadResume(event:MouseEvent):void
		{
			var url:String = "Resume.pdf";
			var request:URLRequest = new URLRequest(url);
			navigateToURL(request);
		}
		function bigResume(event:MouseEvent):void
		{
			resume_mc.resume_image_mc.gotoAndPlay("bigResume");
		}


		function smallResume(event:MouseEvent):void
		{
			resume_mc.resume_image_mc.gotoAndPlay("smallResume");
		}

		/*-------------------------------------------------------
		QUOTE*/
		var atLeastOneSelected:Number = 0;

		/*function muthafucknCheckBoxes(event:MouseEvent):void
		{
			var checkDaBoxes:Array = 
			[about_mc.form_mc.logo_cbx_mc,
			  about_mc.form_mc.business_cbx_mc, 
			  about_mc.form_mc.letterhead_cbx_mc, 
			  about_mc.form_mc.brochure_cbx_mc, 
			  about_mc.form_mc.poster_cbx_mc, 
			  about_mc.form_mc.website_cbx_mc, 
			  about_mc.form_mc.EngSpa_cbx_mc,
			  about_mc.form_mc.EngChi_cbx_mc,
			  about_mc.form_mc.ChiSpa_cbx_mc];

			for (var i=0; i < checkDaBoxes.length; i++)
			{
				checkDaBoxes[i].addEventListener(Event.CHANGE, seleKted);
			}

			function seleKted(event:Event):void
			{
				//trace(event.target,event.target.selected);

				if (event.target.selected)
				{
					trace();
					trace("SELECTED");
					atLeastOneSelected++;
				}
				if (event.target.selected == false)
				{
					trace("UNSELECTED");
					atLeastOneSelected--;
				}
			}
		}*/
		function ValidateAndSend(event:MouseEvent):void
		{
			//var errorMsg:String = "";

			if (about_mc.form_mc.name_txt.text == "" ||
			about_mc.form_mc.email_txt.text == "" ||
			about_mc.form_mc.msg_txt.text == "" ||
			about_mc.form_mc.phone_txt.text == "" ||
			about_mc.form_mc.company_txt.text == "")
			{
				if ((about_mc.form_mc.quote_Englishtext_mc.visible == true) && (about_mc.form_mc.name_txt.text == ""))
				{
					about_mc.form_mc.quote_Englishtext_mc.nameBlueEng.textColor = 0xFF0000;
				}
				if((about_mc.form_mc.quote_Englishtext_mc.visible == true) && (about_mc.form_mc.name_txt.text != ""))
				{
					about_mc.form_mc.quote_Englishtext_mc.nameBlueEng.textColor = 0x0066CC;
				}
				
				if ((about_mc.form_mc.quote_Spanishtext_mc.visible == true) && (about_mc.form_mc.name_txt.text == ""))
				{
					about_mc.form_mc.quote_Spanishtext_mc.nameBlueSpa.textColor = 0xFF0000;
				}
				if ((about_mc.form_mc.quote_Spanishtext_mc.visible == true) && (about_mc.form_mc.name_txt.text != ""))
				{
					about_mc.form_mc.quote_Spanishtext_mc.nameBlueSpa.textColor = 0x0066CC;
				}
				
				if ((about_mc.form_mc.quote_Englishtext_mc.visible == true) && (about_mc.form_mc.email_txt.text == ""))
				{
					about_mc.form_mc.quote_Englishtext_mc.emailBlueEng.textColor = 0xFF0000;
				}
				if ((about_mc.form_mc.quote_Englishtext_mc.visible == true) && (about_mc.form_mc.email_txt.text != ""))
				{
					about_mc.form_mc.quote_Englishtext_mc.emailBlueEng.textColor = 0x0066CC;
				}
				
				if ((about_mc.form_mc.quote_Spanishtext_mc.visible == true) && (about_mc.form_mc.email_txt.text == ""))
				{
					about_mc.form_mc.quote_Spanishtext_mc.emailBlueSpa.textColor = 0xFF0000;
				}
				if ((about_mc.form_mc.quote_Spanishtext_mc.visible == true) && (about_mc.form_mc.email_txt.text != ""))
				{
					about_mc.form_mc.quote_Spanishtext_mc.emailBlueSpa.textColor = 0x0066CC;
				}
				
				if ((about_mc.form_mc.quote_Englishtext_mc.visible == true) && (about_mc.form_mc.msg_txt.text == ""))
				{
					about_mc.form_mc.quote_Englishtext_mc.projectBlueEng.textColor = 0xFF0000;
				}
				if ((about_mc.form_mc.quote_Englishtext_mc.visible == true) && (about_mc.form_mc.msg_txt.text != ""))
				{
					about_mc.form_mc.quote_Englishtext_mc.projectBlueEng.textColor = 0x0066CC;
				}
				
				if ((about_mc.form_mc.quote_Spanishtext_mc.visible == true) && (about_mc.form_mc.msg_txt.text == ""))
				{
					about_mc.form_mc.quote_Spanishtext_mc.projectBlueSpa.textColor = 0xFF0000;
				}
				if ((about_mc.form_mc.quote_Spanishtext_mc.visible == true) && (about_mc.form_mc.msg_txt.text != ""))
				{
					about_mc.form_mc.quote_Spanishtext_mc.projectBlueSpa.textColor = 0x0066CC;
				}
				
				if ((about_mc.form_mc.quote_Englishtext_mc.visible == true) && (about_mc.form_mc.phone_txt.text == ""))
				{
					about_mc.form_mc.quote_Englishtext_mc.phoneBlueEng.textColor = 0xFF0000;
				}
				if ((about_mc.form_mc.quote_Englishtext_mc.visible == true) && (about_mc.form_mc.phone_txt.text != ""))
				{
					about_mc.form_mc.quote_Englishtext_mc.phoneBlueEng.textColor = 0x0066CC;
				}
				
				if ((about_mc.form_mc.quote_Spanishtext_mc.visible == true) && (about_mc.form_mc.phone_txt.text == ""))
				{
					about_mc.form_mc.quote_Spanishtext_mc.phoneBlueSpa.textColor = 0xFF0000;
				}
				if ((about_mc.form_mc.quote_Spanishtext_mc.visible == true) && (about_mc.form_mc.phone_txt.text != ""))
				{
					about_mc.form_mc.quote_Spanishtext_mc.phoneBlueSpa.textColor = 0x0066CC;
				}
				
				if ((about_mc.form_mc.quote_Englishtext_mc.visible == true) && (about_mc.form_mc.company_txt.text == ""))
				{
					about_mc.form_mc.quote_Englishtext_mc.companyBlueEng.textColor = 0xFF0000;
				}
				if ((about_mc.form_mc.quote_Englishtext_mc.visible == true) && (about_mc.form_mc.company_txt.text != ""))
				{
					about_mc.form_mc.quote_Englishtext_mc.companyBlueEng.textColor = 0x0066CC;
				}
				
				if ((about_mc.form_mc.quote_Spanishtext_mc.visible == true) && (about_mc.form_mc.company_txt.text == ""))
				{
					about_mc.form_mc.quote_Spanishtext_mc.companyBlueSpa.textColor = 0xFF0000;
				}
				if ((about_mc.form_mc.quote_Spanishtext_mc.visible == true) && (about_mc.form_mc.company_txt.text != ""))
				{
					about_mc.form_mc.quote_Spanishtext_mc.companyBlueSpa.textColor = 0x0066CC;
				}
			}//------------------------------------->>>>>>>>>>
			
			if (about_mc.form_mc.name_txt.text != "" &&
				about_mc.form_mc.company_txt.text != "" &&
			   about_mc.form_mc.email_txt.text != "" &&
			   about_mc.form_mc.msg_txt.text != "" &&
			   about_mc.form_mc.phone_txt.text != "")
			{
				about_mc.thanks_txt.visible = true;
				about_mc.form_mc.visible = false;
				hideThanksTxt.start();
				if (about_mc.form_mc.quote_Englishtext_mc.visible == true)
				{
					about_mc.thanks_txt.text = "Thank you " + about_mc.form_mc.name_txt.text + ".\n I will get back to you as soon as I can.";
				}
				if (about_mc.form_mc.quote_Spanishtext_mc.visible == true)
				{
					about_mc.thanks_txt.text = "Gracias " + about_mc.form_mc.name_txt.text + ".\n Estaré en contacto contigo lo más pronto posible.";
				}
				
				variables.userName = about_mc.form_mc.name_txt.text;
			  	 variables.userEmail = about_mc.form_mc.email_txt.text;
			  	variables.userMsg = about_mc.form_mc.msg_txt.text;
				variables.userPhone = about_mc.form_mc.phone_txt.text;
				variables.userCompany = about_mc.form_mc.company_txt.text;
				varLoader.load(varSend);
			}
			
			
		}

		/*import flash.events.TimerEvent;
		import flash.events.Timer;*/

		function goAway(event:TimerEvent):void
		{
			if (about_mc.thanks_txt.visible == true)
			{
				about_mc.thanks_txt.visible = false;
				about_mc.form_mc.visible = true;
				about_mc.form_mc.name_txt.text = "" ;
				about_mc.form_mc.company_txt.text = "" ;
				about_mc.form_mc.email_txt.text = "" ;
				about_mc.form_mc.msg_txt.text = "" ;
				about_mc.form_mc.phone_txt.text = "" ;
				
				about_mc.form_mc.quote_Englishtext_mc.nameBlueEng.textColor = 0x0066CC;
				about_mc.form_mc.quote_Englishtext_mc.emailBlueEng.textColor = 0x0066CC;
				about_mc.form_mc.quote_Englishtext_mc.projectBlueEng.textColor = 0x0066CC;
				about_mc.form_mc.quote_Englishtext_mc.phoneBlueEng.textColor = 0x0066CC;
				about_mc.form_mc.quote_Englishtext_mc.companyBlueEng.textColor = 0x0066CC;
				
				about_mc.form_mc.quote_Spanishtext_mc.nameBlueSpa.textColor = 0x0066CC;
				about_mc.form_mc.quote_Spanishtext_mc.emailBlueSpa.textColor = 0x0066CC;
				about_mc.form_mc.quote_Spanishtext_mc.projectBlueSpa.textColor = 0x0066CC;
				about_mc.form_mc.quote_Spanishtext_mc.phoneBlueSpa.textColor = 0x0066CC;
				about_mc.form_mc.quote_Spanishtext_mc.companyBlueSpa.textColor = 0x0066CC;
			}
		}

		/*function validateEmail(str:String):Boolean 
		{
		var pattern:RegExp = /(\w|[_.\-])+@((\w|-)+\.)+\w{2,4}+/;
		var result:Object = pattern.exec(str);
		if(result == null) 
		{
		return false;
		}
		return true;
		}*/

	}
}

//PROGRESS BAR