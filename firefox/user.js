// Mozilla User Preferences

// To change a preference value, you can either:
// - modify it via the UI (e.g. via about:config in the browser); or
// - set it within a user.js file in your profile.

//ln -s {location of this file}
//from inside that folder: ~/.mozilla/firefox/{random stuff}.default/ 

user_pref("browser.newtabpage.enhanced", true);

user_pref("layout.css.font-display.enabled", false);
user_pref("layout.css.font-loading-api.enabled", false);
user_pref("layout.css.font-variations.enabled", false);

//user_pref("",false);
//user_pref("layout.css.",false);
//user_pref("layout.css..enabled",false);
user_pref("layout.css.font-variations.enabled",false);
user_pref("layout.css.individual-transform.enabled",false);
user_pref("layout.css.initial-letter.enabled",false);
user_pref("layout.frame_rate",30);

user_pref("layout.css.prefixes.font-features",false);
user_pref("layout.css.prefixes.transforms",false);
user_pref("layout.css.prefixes.transitions",false);
user_pref("layout.css.prefixes.animations",false);

user_pref("layout.css.scrollbar-color.enabled",false);
user_pref("layout.css.scrollbar-width.enabled",false);
user_pref("layout.css.text-justify.enabled",false);
user_pref("layout.css.background-blend-mode-enabled",false);

user_pref("layout.css.contain.enabled",false);
user_pref("layout.css.motion-path.enabled",false);

user_pref("nglayout.enable_drag_images",false);

user_pref("zoom.minPercent",100);
user_pref("zoom.maxPercent",100);


user_pref("browser.display.background_color","#d2896b");
user_pref("browser.display.foreground_color","#000000");

user_pref("browser.tabs.closeWindowWithLastTab",false);

//test
//user_pref("browser.urlbar.quantumbar",true);
user_pref("browser.urlbar.usepreloadedtopurls.enabled",true);

user_pref("devtools.debugger.auto-pretty-print",true);

user_pref("devtools.debugger.features.code-folding",true);

user_pref("dom.animations-api.core.enabled",false);

user_pref("gfx.downloadable_fonts.enabled",false);

//currently looking at middlemouse.paste

