if(typeof Object.assign!=='function'){Object.defineProperty(Object,"assign",{value:function assign(target,varArgs){'use strict';if(target===null||target===undefined){throw new TypeError('Cannot convert undefined or null to object')}
var to=Object(target);for(var index=1;index<arguments.length;index++){var nextSource=arguments[index];if(nextSource!==null&&nextSource!==undefined){for(var nextKey in nextSource){if(Object.prototype.hasOwnProperty.call(nextSource,nextKey)){to[nextKey]=nextSource[nextKey]}}}}
return to},writable:!0,configurable:!0})}
var APP=APP||{};APP.segmentConfig={cookieDomain:"resumegenius.com",cookiePath:"/"};var clientUtility={getHostURL:function(){var subDomain=document.domain.substring(0,document.domain.indexOf("."));var skipSubdomainSplit=false;if(subDomain.indexOf('iso')==-1&&subDomain.indexOf('-')>-1&&!skipSubdomainSplit){subDomain=subDomain.split('-')[0]}
return "https://"+subDomain+document.domain.slice(document.domain.indexOf('.')).replace(/\//g,'')+"/";},set_Cookie:function(c_name,value,exdays){var exdate=new Date();exdate.setDate(exdate.getDate()+exdays);var c_value=escape(value)+((exdays==null)?"":"; expires="+exdate.toUTCString());var domain=document.domain.substring(document.domain.indexOf('.'));if(domain){document.cookie=c_name+"="+c_value+";domain="+domain+";path=/";}
else{document.cookie=c_name+"="+c_value+";path=/";}},get_Cookie:function(c_name){var c_value=document.cookie;var c_start=c_value.indexOf(" "+c_name+"=");if(c_start==-1){c_start=c_value.indexOf(c_name+"=");}
if(c_start==-1){c_value=null;}
else{c_start=c_value.indexOf("=",c_start)+1;var c_end=c_value.indexOf(";",c_start);if(c_end==-1){c_end=c_value.length;}
c_value=unescape(c_value.substring(c_start,c_end));}
return c_value;},htmlEscape:function(str){if(!str){return;}
return str.replace(/&/g,'&amp;').replace(/"/g,'&quot;').replace(/'/g,'&#39;').replace(/</g,'&lt;').replace(/>/g,'&gt;');},htmlUnescape:function(str){if(!str){return;}
return str.replace(/&quot;/g,'"').replace(/&#39;/g,"'").replace(/&lt;/g,'<').replace(/&gt;/g,'>').replace(/&amp;/g,'and');},getParameterByName:function(name){name=name.replace(/[\[]/,"\\[").replace(/[\]]/,"\\]");var regex=new RegExp("[\\?&]"+name+"=([^&#]*)"),results=regex.exec(location.search);return results===null?"":decodeURIComponent(results[1].replace(/\+/g," "));},getCookieKeyValPair:function(c_name,key,separator){var keyVal="";var c_value=clientUtility.get_Cookie(c_name);if(c_value!=null&&c_value.length>0){var arrkeyval=c_value.split(separator);if(arrkeyval.length>0&&arrkeyval[0].indexOf(":")!=-1){for(var i in arrkeyval){if(arrkeyval[i].split(':')[0].trim().indexOf(key)!=-1){keyVal=arrkeyval[i].split(':')[1].trim();break;}}}}
return keyVal;},getDeviceType:function(){var deviceType;var v_info=clientUtility.get_Cookie('_sntinf');if(v_info&&v_info.indexOf('DeviceType')!==-1){var index=v_info.indexOf("DeviceType");deviceType=v_info.substring(index).split(']&[')[0].split(',')[1].trim();}
if(!deviceType){if(navigator.userAgent.match(/iPad|Tablet|PlayBook/i)){deviceType='tablet';}
else if(navigator.userAgent.match(/Mobile|Android|webOS|iPhone|iPod|Blackberry|IEMobile|Opera Mini/i)){deviceType='mobile';}else{deviceType='desktop';}}
return deviceType;},getSegmentWriteKey:function(){var hostParts=window.location.host.split('.');var segmentKey="";switch(hostParts[0]){case "loc":case "reg":case "qa":case "local":case "pseudo":case "pen":case "perf":case "reg-wp":segmentKey="eBHCeBOO3xtdhmrzMhpzhk1wL1pwoYi2";break;case "stg-wp":case "wp":case "pay":case "bill":case "stl":case "info":case "alt":case "rg":case "stg":case "www":case "resumegenius":segmentKey="O5NASYARuA9HHm4kYHMdaIHcv5LjlfZU";break;}
return segmentKey;}}
var _segmentFirePageLoadEvent=true;var writeKey=clientUtility.getSegmentWriteKey();var segment_portal_name=null;var integrations={"All":false,"Segment.io":true};var isWP=window.location.pathname.indexOf("/app/")>-1?false:true;if(isWP===true){window.SEGMENT_EVENTS_TO_ALL=true;}
if(typeof SEGMENT_EVENTS_TO_ALL!=='undefined'&&SEGMENT_EVENTS_TO_ALL){integrations={"Google Analytics":false};}
APP.segment=(function(scope){var _excludeExperimentFromMixpanelCookie=function(mixpanelProperties){var properties={};var data=JSON.parse(mixpanelProperties);Object.keys(data).forEach(function(key,index){if(key.indexOf('Experiment:')==-1){properties[key]=data[key];}});return JSON.stringify(properties);}
var _analyticsReady=function(fnSegmentReady_triggered){scope.setMixpanelPropsCookie(0);if(typeof segmentReady=='function'&&!fnSegmentReady_triggered){try{segmentReady();}catch(e){console.log(e);}}
if(_segmentFirePageLoadEvent){TrackEvents('page');}}
var _filterMixpanelProps=function(mixpanelProperties){var properties={};var propsToTake=['id','distinct_id','userId','Platform','device type','time'];var data=JSON.parse(mixpanelProperties);Object.keys(data).forEach(function(key,index){if(key.indexOf('$')==0||key.indexOf('mp_')==0||key.indexOf('utm')==0||propsToTake.indexOf(key)>-1){properties[key]=data[key];}});return JSON.stringify(properties);}
scope.setMixpanelPropsCookie=function(retryCount){var mixpanelProperties='';try{if(typeof mixpanel!='undefined'&&typeof mixpanel.get_distinct_id!='undefined'){var deviceType='desktop';if(typeof(clientUtility.getDeviceType)=='function'){deviceType=clientUtility.getDeviceType().toLowerCase();}
mixpanel.register({'device type':deviceType});var infoProperties=mixpanel._.info.properties();if(infoProperties.hasOwnProperty('$browser_version'))
infoProperties.$browser_version=Math.floor(infoProperties.$browser_version);if(infoProperties.hasOwnProperty('time'))
infoProperties.time=Math.floor(infoProperties.time);var persistProperties=mixpanel.persistence.properties();mixpanelProperties=JSON.stringify(Object.assign(infoProperties,persistProperties));mixpanelProperties["$current_url"]=location.href;mixpanelProperties=_excludeExperimentFromMixpanelCookie(mixpanelProperties);mixpanelProperties=_filterMixpanelProps(mixpanelProperties);clientUtility.set_Cookie("mixpanelprops",mixpanelProperties);}
else{retryCount++;if(retryCount<20)
setTimeout(function(){scope.setMixpanelPropsCookie(retryCount)},100);}}
catch(e){console.log('error in mixpanel properties fetching');}}
scope.getGAId=function(){var gaVal=null;try{var gaId=clientUtility.get_Cookie('_ga');if(gaId&&gaId.trim().length>0){var gaItems=gaId.split('.');gaVal=gaItems[gaItems.length-2]+"."+gaItems[gaItems.length-1];}}
catch(e){console.log(e);}
return gaVal;}
scope.load=function(){APP.segment.loadAnalytics();}
scope.loadAnalytics=function(){!function(){var analytics=window.analytics=window.analytics||[];if(!analytics.initialize)if(analytics.invoked)window.console&&console.error&&console.error("Segment snippet included twice.");else{analytics.invoked=!0;analytics.methods=["trackSubmit","trackClick","trackLink","trackForm","pageview","identify","reset","group","track","ready","alias","page","once","off","on"];analytics.factory=function(t){return function(){var e=Array.prototype.slice.call(arguments);e.unshift(t);analytics.push(e);return analytics}};for(var t=0;t<analytics.methods.length;t++){var e=analytics.methods[t];analytics[e]=analytics.factory(e)}analytics.load=function(t,opt){var e=document.createElement("script");e.type="text/javascript";e.defer=!0;e.src=("https:"===document.location.protocol?"https://":"http://")+"cdn.segment.com/analytics.js/v1/"+t+"/analytics.min.js";var n=document.getElementsByTagName("script")[0];n.parentNode.insertBefore(e,n);analytics._loadOptions=opt;};analytics.SNIPPET_VERSION="4.1.0";var _integrations=APP.segment.getIntegrationObject(true);if(_integrations){var loadOptions={integrations:_integrations};analytics.load(writeKey,loadOptions);}
else{analytics.load(writeKey);}
var fnSegmentReady_triggered=false;if(typeof segmentReady=='function'){try{segmentReady();fnSegmentReady_triggered=true;}catch(e){console.log(e);}}
analytics.ready(_analyticsReady(fnSegmentReady_triggered));}}();}
scope.getSegmentContext=function(userid,contextprops){if(userid&&typeof contextprops!='undefined'&&typeof contextprops["locale"]!='undefined'){if(typeof(Storage)!=="undefined"){localStorage.setItem("segment_context_locale",contextprops["locale"]);}}
return localStorage.getItem("segment_context_locale");}
scope.getIntegrationObject=function(isLoad){var _integrations=Object.assign({},integrations);if(window.segment&&window.segment.Integrations){if(_integrations&&_integrations["All"]!=false){for(var prop in segment.Integrations){if(segment.Integrations[prop]&&prop.toLowerCase()!='all'){_integrations.hasOwnProperty(prop)&&delete _integrations[prop];}else if(prop.length>0&&prop.toLowerCase()!='all'){_integrations[prop]=segment.Integrations[prop];}}}else{for(var prop in segment.Integrations){if(!segment.Integrations[prop]&&prop.toLowerCase()!='all'){_integrations.hasOwnProperty(prop)&&delete _integrations[prop];}else if(prop.length>0&&prop.toLowerCase()!='all'){_integrations[prop]=segment.Integrations[prop];}}}}
if(!isLoad&&window.segment&&window.segment.ConsentIntegrations){var consentIntegration=window.segment.ConsentIntegrations;if(_integrations){if(_integrations["All"]!=false){for(var prop in consentIntegration){if(consentIntegration[prop]&&_integrations.hasOwnProperty(prop)){_integrations[prop]=true;}else if(consentIntegration[prop]==false){_integrations[prop]=consentIntegration[prop];}}}else{for(var prop in _integrations){if(consentIntegration.hasOwnProperty(prop)){_integrations[prop]=consentIntegration[prop];}}}}}
return _integrations;};return scope;})(APP.segment||{});window.TrackEvents=function(eventname,eventpropval,userid,islogin,contextprops,callback){var propertiesToBeSent=window.segment&&window.segment.CommonProps?JSON.parse(JSON.stringify(window.segment.CommonProps)):{};if(!islogin){islogin=clientUtility.getCookieKeyValPair('UserStatus','IsUserLoggedIn',",");}
propertiesToBeSent['authenticated user']=islogin&&islogin.toString().toLowerCase()=='true'?'TRUE':'FALSE';propertiesToBeSent['current url short']=window.location.pathname;propertiesToBeSent['current full url']=window.location.href;var eventproperties={};if(eventpropval){for(var item in eventpropval){if(eventpropval[item]){propertiesToBeSent[item]=eventpropval[item];eventproperties[item]=eventpropval[item];}}}
propertiesToBeSent['session']=clientUtility.get_Cookie('_sntd');propertiesToBeSent['product']='Web';propertiesToBeSent['device length size']=screen.height;propertiesToBeSent['device width size']=screen.width;if(typeof(clientUtility.getDeviceType)=='function'){propertiesToBeSent['device type']=clientUtility.getDeviceType().toLowerCase();}
if(segment_portal_name)
propertiesToBeSent["website"]=segment_portal_name;var segment_context_locale=APP.segment.getSegmentContext(userid,contextprops);if(typeof segment_context_locale!='undefined'&&segment_context_locale!=null){propertiesToBeSent['language']=segment_context_locale;}
switch(eventname){case "page":{propertiesToBeSent["website"]="Resume Genius";var vstrType=clientUtility.get_Cookie('vstrType');propertiesToBeSent['session type']=vstrType?'Returning':'New';if(!vstrType){clientUtility.set_Cookie('vstrType',1,5*365);}
var gaValue=APP.segment.getGAId();if(gaValue&&propertiesToBeSent&&gaValue.length>0)
propertiesToBeSent["GA_Id"]=gaValue;FireSegmentIOPage("",propertiesToBeSent);break;}
case "identify":{FireSegmentIOIdentify(userid,eventproperties,contextprops);break;}
default:{FireSegmentIOTrack(eventname,propertiesToBeSent,callback);}}
APP.segment.setMixpanelPropsCookie(0);}
window.TrackUTMEvents=function(a){var b=clientUtility.getParameterByName("utm_source"),c=clientUtility.getParameterByName("utm_medium"),d=clientUtility.getParameterByName("utm_term"),e=clientUtility.getParameterByName("utm_content"),f=clientUtility.getParameterByName("utm_campaign"),g={"UTM Source first touch":b,"UTM Medium first touch":c,"UTM Term first touch":d,"UTM Content first touch":e,"UTM Campaign first touch":f},h={};if(g)
for(var i in g)
g[i]&&(h[i]=g[i]);h||FireSegmentIOIdentify(a,h,!1,!0)}
window.TrackPageEvents=function(eventpropval,islogin){TrackPageEventsFinal(eventpropval,islogin);}
window.TrackAlias=function(userid){FireSegmentIOAlias(userid);}
window.FireSegmentIOIdentify=function(userid,traits,contextprops){traits=traits||null;var options={};if(traits==null){traits={};}
var segment_context_locale=APP.segment.getSegmentContext(userid,contextprops);if(typeof analytics!="undefined"){var _integrations=APP.segment.getIntegrationObject();if(userid&&typeof segment_context_locale!='undefined'&&segment_context_locale!=null){traits["locale"]=segment_context_locale;}
options["integrations"]=_integrations;if(userid){analytics.identify(userid,traits,options);}
else{analytics.identify(traits,options);}
analytics.ready(function(){analytics.user().traits({});});}}
window.FireSegmentIOPage=function(pagename,properties){try{properties=properties||null;if(typeof analytics!="undefined"){var _integrations=APP.segment.getIntegrationObject();if(properties!=null){analytics.page(pagename,properties,{integrations:_integrations})}
else{analytics.page(pagename,{"IsPropsNull":true},{integrations:_integrations})}}}
catch(ex){console.log(ex);}}
window.FireSegmentIOTrack=function(eventname,properties,callback){try{properties=properties||null;if(typeof analytics!="undefined"){var _integrations=APP.segment.getIntegrationObject();if(properties!=null){analytics.track(eventname,properties,{integrations:_integrations},callback)}
else{analytics.track(eventname,{},{integrations:_integrations},callback)}}else{callback&&callback();}}
catch(ex){console.log(ex);}}
window.FireSegmentIOAlias=function(userid){try{if(typeof analytics!="undefined"){analytics.alias(userid,{integrations:APP.segment.getIntegrationObject()});}}
catch(ex){console.log(ex);}}
window.TrackPageEventsFinal=function(eventpropval,islogin){if(typeof mixpanel!='undefined'&&typeof mixpanel.get_distinct_id!='undefined'){clientUtility.set_Cookie("screenWidth",window.innerWidth);}
var propertiesToBeSent={};for(var item in eventpropval){if(eventpropval[item]){propertiesToBeSent[item]=eventpropval[item];}}
TrackEvents("page",propertiesToBeSent,null,islogin);}
function PageCall(pagename,properties){if(typeof analytics!="undefined"){if(properties!=null){analytics.page(pagename,properties);}
else{analytics.page(pagename);}}}
function TrackCall(eventname,properties){if(typeof analytics!="undefined"){if(properties!=null){analytics.track(eventname,properties);}
else{analytics.track(eventname);}}}