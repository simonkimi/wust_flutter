final classTableHtml = r"""




<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">


<head id="headerid1">
	<base target='_self'>
	<title>学期理论课表</title>	
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="湖南强智科技教务系统">
	<meta http-equiv="description" content="湖南强智科技教务系统">
	<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8" />
<script type="text/javascript" src="/jsxsd/js/jquery-min.js" language="javascript" ></script>
<script type="text/javascript" src="/jsxsd/js/common.js" language="javascript" ></script>
<script type="text/javascript" src="/jsxsd/js/iepngfix_tilebg.js" language="javascript" ></script>
<script type="text/javascript" src="/jsxsd/js/easyui/jquery.easyui.min.js" language="javascript" ></script>
<script type="text/javascript" src="/jsxsd/js/jquery.autocomplete.min.js" language="javascript" ></script>
<link href="/jsxsd/framework/images/common.css" rel="stylesheet" type="text/css" />
<link href="/jsxsd/framework/images/blue.css" rel="stylesheet" type="text/css" id="link_theme" />
<link href="/jsxsd/framework/images/workstation.css" rel="stylesheet" type="text/css" /> 
<link href="/jsxsd/css/easyui.css" rel="stylesheet" type="text/css" />
<link href="/jsxsd/css/jquery.autocomplete.css" rel="stylesheet" type="text/css" />
</head>
<iframe id="notSession" name="notSession" style="display: none;" src=""></iframe>
<script type="text/javascript">
jQuery(document).ready(function(){
	window.setInterval(function(){
		 document.getElementById("notSession").src = "/jsxsd/framework/blankPage.jsp";
	 }, 1000 * 60 * 10);
});
</script>

<body>
 
<div class="Nsb_pw">
	







 
<div class="Nsb_layout_r">
<iframe style="display:none;" name="ifrmPrint" id="ifrmPrint"></iframe>
<form action="" name="FormPrint" id="FormPrint" method="post" target="ifrmPrint">
</form>
 <form action="" name="Form1" id="Form1" method="post" target="_self">
	 <input type="hidden" name="jx0404id" value=""/>
 <input type="hidden" name="cj0701id" id="cj0701id" value=""/><div class="Nsb_layout_r title">学期理论课表</div>
        <div>
        	
        	周次：<select name="zc" id="zc" onchange="javascript:document.getElementById('Form1').submit();" >
		 <option value="">(全部)</option>	
		
		    <option value="1"  >第1周</option>
		    
		    <option value="2"  >第2周</option>
		    
		    <option value="3"  >第3周</option>
		    
		    <option value="4"  >第4周</option>
		    
		    <option value="5"  >第5周</option>
		    
		    <option value="6"  >第6周</option>
		    
		    <option value="7"  >第7周</option>
		    
		    <option value="8"  >第8周</option>
		    
		    <option value="9"  >第9周</option>
		    
		    <option value="10"  >第10周</option>
		    
		    <option value="11"  >第11周</option>
		    
		    <option value="12"  >第12周</option>
		    
		    <option value="13"  >第13周</option>
		    
		    <option value="14"  >第14周</option>
		    
		    <option value="15"  >第15周</option>
		    
		    <option value="16"  >第16周</option>
		    
		    <option value="17"  >第17周</option>
		    
		    <option value="18"  >第18周</option>
		    
		    <option value="19"  >第19周</option>
		    
		    <option value="20"  >第20周</option>
		    
		    <option value="21"  >第21周</option>
		    
		    <option value="22"  >第22周</option>
		    
		    <option value="23"  >第23周</option>
		    
		    <option value="24"  >第24周</option>
		    
		    <option value="25"  >第25周</option>
		    
		    <option value="26"  >第26周</option>
		    
		    <option value="27"  >第27周</option>
		    
		    <option value="28"  >第28周</option>
		    
		    <option value="29"  >第29周</option>
		    
		    <option value="30"  >第30周</option>
		    
		<input type="hidden" name="demo" id="demo" value="">
		</select>学年学期：<select name="xnxq01id" id="xnxq01id" onchange="javascript:document.getElementById('Form1').submit();"　style="width:180px;">
		
		<option value="2023-2024-2"  >2023-2024-2</option>
		
		<option value="2023-2024-1"  >2023-2024-1</option>
		
		<option value="2022-2023-2"  >2022-2023-2</option>
		
		<option value="2022-2023-1"  >2022-2023-1</option>
		
		<option value="2021-2022-2"  >2021-2022-2</option>
		
		<option value="2021-2022-1"  >2021-2022-1</option>
		
		<option value="2020-2021-2"  >2020-2021-2</option>
		
		<option value="2020-2021-1"  >2020-2021-1</option>
		
		<option value="2019-2020-2"   selected="selected">2019-2020-2</option>
		
		<option value="2019-2020-1"  >2019-2020-1</option>
		
		<option value="2018-2019-2"  >2018-2019-2</option>
		
		<option value="2018-2019-1"  >2018-2019-1</option>
		
		<option value="2017-2018-2"  >2017-2018-2</option>
		
		<option value="2017-2018-1"  >2017-2018-1</option>
		
		<option value="2016-2017-2"  >2016-2017-2</option>
		
		<option value="2016-2017-1"  >2016-2017-1</option>
		
		<option value="2015-2016-2"  >2015-2016-2</option>
		
		<option value="2015-2016-1"  >2015-2016-1</option>
		
		<option value="2014-2015-2"  >2014-2015-2</option>
		
		<option value="2014-2015-1"  >2014-2015-1</option>
		
		<option value="2013-2014-2"  >2013-2014-2</option>
		
		<option value="2013-2014-1"  >2013-2014-1</option>
		
		<option value="2012-2013-2"  >2012-2013-2</option>
		
		<option value="2012-2013-1"  >2012-2013-1</option>
		
		<option value="2011-2012-2"  >2011-2012-2</option>
		
		<option value="2011-2012-1"  >2011-2012-1</option>
		
		<option value="2010-2011-2"  >2010-2011-2</option>
		
		<option value="2010-2011-1"  >2010-2011-1</option>
		
		<option value="2009-2010-2"  >2009-2010-2</option>
		
		<option value="2009-2010-1"  >2009-2010-1</option>
		
		<option value="2008-2009-2"  >2008-2009-2</option>
		
		<option value="2008-2009-1"  >2008-2009-1</option>
		
		<option value="2007-2008-2"  >2007-2008-2</option>
		
		<option value="2007-2008-1"  >2007-2008-1</option>
		
		<option value="2006-2007-2"  >2006-2007-2</option>
		
		<option value="2006-2007-1"  >2006-2007-1</option>
		
		<option value="2005-2006-2"  >2005-2006-2</option>
		
		<option value="2005-2006-1"  >2005-2006-1</option>
		
		<option value="2004-2005-2"  >2004-2005-2</option>
		
		<option value="2004-2005-1"  >2004-2005-1</option>
		
		<option value="2003-2004-2"  >2003-2004-2</option>
		
		<option value="2003-2004-1"  >2003-2004-1</option>
		
		<option value="2002-2003-2"  >2002-2003-2</option>
		
		<option value="2002-2003-1"  >2002-2003-1</option>
		
		<option value="2001-2002-2"  >2001-2002-2</option>
		
		<option value="2001-2002-1"  >2001-2002-1</option>
		
		<option value="2000-2001-2"  >2000-2001-2</option>
		
		<option value="2000-2001-1"  >2000-2001-1</option>
		
		<option value="1999-2000-2"  >1999-2000-2</option>
		
		<option value="1999-2000-1"  >1999-2000-1</option>
		
		</select>&nbsp;
			<input type="button" value="打 印" class="button el-button"  onclick="print(this)"  >&nbsp;
			<!--营口理工 -->
			
			<!--泉州职业技术大学 -->
			
			<!--内蒙古师范大学 -->
		
			<!--北京邮电大学 预留帆软接口-->
			
		<!--  
		<input type="button" class="button" id="btnShenshen" value="返 回" onclick="javascript:window.location.href='/jsxsd/framework/main.jsp';"/>
		-->
		
		<input type="checkbox" name="sfFD" id="sfFD" value="1" onclick="funFD(this.checked)"  checked>放大
		
		
		时间模式：<select name="kbjcmsid" id="kbjcmsid" onchange="javascript:document.getElementById('Form1').submit();" style="width: 180px;">
		
			<option value="9486203B90F3E3CBE0532914A8C03BE2" selected="selected">默认节次模式</option>
		
			<option value="D012D3EAA2564458AE988FFDC28BF44A" >洪山校区模式</option>
		
		</select>
        </div>
        	
        	
		　<table id="kbtable" border="1" width="100%"   cellspacing="0" cellpadding="0"
				    class="Nsb_r_list Nsb_table">
				<tr>
					<th width="70" height="28" align="center">
						&nbsp;
					</th>
					<th width="123" height="28" align="center">星期一</th>
					<th width="123" height="28" align="center">星期二</th>
					<th width="123" height="28" align="center">星期三</th>
					<th width="124" height="28" align="center">星期四</th>
					<th width="124" height="28" align="center">星期五</th>
					<th width="124" height="28" align="center">星期六</th>
					<th width="124" height="28" align="center">星期日</th>
				</tr> 
				
					<tr>
							<th width="70" height="28" align="center">
						
								1-2节&nbsp;<br/>
							    
									08:20-10:00
								
							</th>
							<td width="123" height="28" align="center" valign="top"  >
								<input type="hidden" name="jx0415zbdiv_1" value="A18793F2A9DF4F8EA8315A4D52CD4389-1-1">
								<input type="hidden" name="jx0415zbdiv_2" value="A18793F2A9DF4F8EA8315A4D52CD4389-1-2">
								<div id="A18793F2A9DF4F8EA8315A4D52CD4389-1-1" class="kbcontent1">电机拖动基础<br/><font title='周次(节次)'>1-12(周)</font><br/><font title='教室'>恒大楼三区505</font><br/></div>
								<div id="A18793F2A9DF4F8EA8315A4D52CD4389-1-2" style="display: none;" class="kbcontent" >电机拖动基础<br/><font title='老师'>蔡彬副教授</font><br/><font title='课堂名称'>教学班2035</font><br/><font title='周次(节次)'>1-12(周)[01-02节]</font><br/><font title='教室'>恒大楼三区505</font><br/></div>
								<div id="A18793F2A9DF4F8EA8315A4D52CD4389-1-1" class="kbcontent1 sykb1"></div>
								<div id="A18793F2A9DF4F8EA8315A4D52CD4389-1-2" style="display: none;" class="kbcontent sykb2" ></div>

							</td>
							<td width="123" height="28" align="center" valign="top" >
								<input type="hidden" name="jx0415zbdiv_1" value="A18793F2A9DF4F8EA8315A4D52CD4389-2-1">
								<input type="hidden" name="jx0415zbdiv_2" value="A18793F2A9DF4F8EA8315A4D52CD4389-2-2">
								<div id="A18793F2A9DF4F8EA8315A4D52CD4389-2-1" class="kbcontent1">面向对象的程序设计<br/><font title='周次(节次)'>10-15(周)</font><br/><font title='教室'>恒大楼一区206</font><br/></div>
								<div id="A18793F2A9DF4F8EA8315A4D52CD4389-2-2"
								style="display: none;" class="kbcontent">面向对象的程序设计<br/><font title='老师'>杨岚讲师（高校）</font><br/><font title='课堂名称'>教学班2102</font><br/><font title='周次(节次)'>10-15(周)[01-02节]</font><br/><font title='教室'>恒大楼一区206</font><br/></div>
								<div id="A18793F2A9DF4F8EA8315A4D52CD4389-2-1" class="kbcontent1 sykb1"></div>
								<div id="A18793F2A9DF4F8EA8315A4D52CD4389-2-2"
									 style="display: none;" class="kbcontent sykb2"></div>
							</td>
							<td width="123" height="28" align="center" valign="top" >
								<input type="hidden" name="jx0415zbdiv_1" value="A18793F2A9DF4F8EA8315A4D52CD4389-3-1">
								<input type="hidden" name="jx0415zbdiv_2" value="A18793F2A9DF4F8EA8315A4D52CD4389-3-2">
								<div id="A18793F2A9DF4F8EA8315A4D52CD4389-3-1"  class="kbcontent1">电机拖动基础<br/><font title='周次(节次)'>1-12(周)</font><br/><font title='教室'>恒大楼三区505</font><br/></div>
								<div id="A18793F2A9DF4F8EA8315A4D52CD4389-3-2"
								style="display: none;" class="kbcontent">电机拖动基础<br/><font title='老师'>蔡彬副教授</font><br/><font title='课堂名称'>教学班2035</font><br/><font title='周次(节次)'>1-12(周)[01-02节]</font><br/><font title='教室'>恒大楼三区505</font><br/></div>
								<div id="A18793F2A9DF4F8EA8315A4D52CD4389-3-1"  class="kbcontent1 sykb1"></div>
								<div id="A18793F2A9DF4F8EA8315A4D52CD4389-3-2"
									 style="display: none;" class="kbcontent sykb2"></div>
							</td>
							<td width="123" height="28" align="center" valign="top"  >
								<input type="hidden" name="jx0415zbdiv_1" value="A18793F2A9DF4F8EA8315A4D52CD4389-4-1">
								<input type="hidden" name="jx0415zbdiv_2" value="A18793F2A9DF4F8EA8315A4D52CD4389-4-2">
								<div id="A18793F2A9DF4F8EA8315A4D52CD4389-4-1"  class="kbcontent1">&nbsp;</div>
								<div id="A18793F2A9DF4F8EA8315A4D52CD4389-4-2"
								style="display: none;" class="kbcontent">&nbsp;</div>
								<div id="A18793F2A9DF4F8EA8315A4D52CD4389-4-1"  class="kbcontent1 sykb1"></div>
								<div id="A18793F2A9DF4F8EA8315A4D52CD4389-4-2"
									 style="display: none;" class="kbcontent sykb2"></div>
							</td>
							<td width="123" height="28" align="center" valign="top" >
								<input type="hidden" name="jx0415zbdiv_1" value="A18793F2A9DF4F8EA8315A4D52CD4389-5-1">
								<input type="hidden" name="jx0415zbdiv_2" value="A18793F2A9DF4F8EA8315A4D52CD4389-5-2">
								<div id="A18793F2A9DF4F8EA8315A4D52CD4389-5-1"  class="kbcontent1" >信号与系统<br/><font title='周次(节次)'>1-8(周)</font><br/><font title='教室'>恒大楼一区203</font><br/></div>
								<div id="A18793F2A9DF4F8EA8315A4D52CD4389-5-2"  
								style="display: none;" class="kbcontent" >信号与系统<br/><font title='老师'>熊丹讲师（高校）</font><br/><font title='课堂名称'>教学班2109</font><br/><font title='周次(节次)'>1-8(周)[01-02节]</font><br/><font title='教室'>恒大楼一区203</font><br/></div>
								<div id="A18793F2A9DF4F8EA8315A4D52CD4389-5-1"  class="kbcontent1 sykb1" ></div>
								<div id="A18793F2A9DF4F8EA8315A4D52CD4389-5-2"
									 style="display: none;" class="kbcontent sykb2" ></div>
							</td>
							<td width="123" height="28" align="center" valign="top" >
								<input type="hidden" name="jx0415zbdiv_1" value="A18793F2A9DF4F8EA8315A4D52CD4389-6-1">
								<input type="hidden" name="jx0415zbdiv_2" value="A18793F2A9DF4F8EA8315A4D52CD4389-6-2">
								<div id="A18793F2A9DF4F8EA8315A4D52CD4389-6-1"  class="kbcontent1">&nbsp;</div>
								<div id="A18793F2A9DF4F8EA8315A4D52CD4389-6-2"  
								style="display: none;" class="kbcontent">&nbsp;</div>
								<div id="A18793F2A9DF4F8EA8315A4D52CD4389-6-1"  class="kbcontent1 sykb1"></div>
								<div id="A18793F2A9DF4F8EA8315A4D52CD4389-6-2"
									 style="display: none;" class="kbcontent sykb2"></div>
							</td>
							<td width="123" height="28" align="center" valign="top" >
								<input type="hidden" name="jx0415zbdiv_1" value="A18793F2A9DF4F8EA8315A4D52CD4389-7-1">
								<input type="hidden" name="jx0415zbdiv_2" value="A18793F2A9DF4F8EA8315A4D52CD4389-7-2">
								<div id="A18793F2A9DF4F8EA8315A4D52CD4389-7-1"  class="kbcontent1" >&nbsp;</div>
								<div id="A18793F2A9DF4F8EA8315A4D52CD4389-7-2"  
								style="display: none;" class="kbcontent">&nbsp;</div>
								<div id="A18793F2A9DF4F8EA8315A4D52CD4389-7-1"  class="kbcontent1 sykb1" ></div>
								<div id="A18793F2A9DF4F8EA8315A4D52CD4389-7-2"
									 style="display: none;" class="kbcontent sykb2"></div>
							</td>
							
					</tr>
				
					<tr>
							<th width="70" height="28" align="center">
						
								3-4节&nbsp;<br/>
							    
									10:15-11:55
								
							</th>
							<td width="123" height="28" align="center" valign="top"  >
								<input type="hidden" name="jx0415zbdiv_1" value="159F4A8743BF4C80B561DB5CB4689041-1-1">
								<input type="hidden" name="jx0415zbdiv_2" value="159F4A8743BF4C80B561DB5CB4689041-1-2">
								<div id="159F4A8743BF4C80B561DB5CB4689041-1-1" class="kbcontent1">数字电子技术<br/><font title='周次(节次)'>1-12(周)</font><br/><font title='教室'>教二楼一区301</font><br/></div>
								<div id="159F4A8743BF4C80B561DB5CB4689041-1-2" style="display: none;" class="kbcontent" >数字电子技术<br/><font title='老师'>刘琼(信)副教授</font><br/><font title='课堂名称'>教学班1030</font><br/><font title='周次(节次)'>1-12(周)[03-04节]</font><br/><font title='教室'>教二楼一区301</font><br/></div>
								<div id="159F4A8743BF4C80B561DB5CB4689041-1-1" class="kbcontent1 sykb1"></div>
								<div id="159F4A8743BF4C80B561DB5CB4689041-1-2" style="display: none;" class="kbcontent sykb2" ></div>

							</td>
							<td width="123" height="28" align="center" valign="top" >
								<input type="hidden" name="jx0415zbdiv_1" value="159F4A8743BF4C80B561DB5CB4689041-2-1">
								<input type="hidden" name="jx0415zbdiv_2" value="159F4A8743BF4C80B561DB5CB4689041-2-2">
								<div id="159F4A8743BF4C80B561DB5CB4689041-2-1" class="kbcontent1">&nbsp;</div>
								<div id="159F4A8743BF4C80B561DB5CB4689041-2-2"
								style="display: none;" class="kbcontent">&nbsp;</div>
								<div id="159F4A8743BF4C80B561DB5CB4689041-2-1" class="kbcontent1 sykb1"></div>
								<div id="159F4A8743BF4C80B561DB5CB4689041-2-2"
									 style="display: none;" class="kbcontent sykb2"></div>
							</td>
							<td width="123" height="28" align="center" valign="top" >
								<input type="hidden" name="jx0415zbdiv_1" value="159F4A8743BF4C80B561DB5CB4689041-3-1">
								<input type="hidden" name="jx0415zbdiv_2" value="159F4A8743BF4C80B561DB5CB4689041-3-2">
								<div id="159F4A8743BF4C80B561DB5CB4689041-3-1"  class="kbcontent1">数字电子技术<br/><font title='周次(节次)'>1-12(周)</font><br/><font title='教室'>恒大楼三区507</font><br/></div>
								<div id="159F4A8743BF4C80B561DB5CB4689041-3-2"
								style="display: none;" class="kbcontent">数字电子技术<br/><font title='老师'>刘琼(信)副教授</font><br/><font title='课堂名称'>教学班1030</font><br/><font title='周次(节次)'>1-12(周)[03-04节]</font><br/><font title='教室'>恒大楼三区507</font><br/></div>
								<div id="159F4A8743BF4C80B561DB5CB4689041-3-1"  class="kbcontent1 sykb1"></div>
								<div id="159F4A8743BF4C80B561DB5CB4689041-3-2"
									 style="display: none;" class="kbcontent sykb2"></div>
							</td>
							<td width="123" height="28" align="center" valign="top"  >
								<input type="hidden" name="jx0415zbdiv_1" value="159F4A8743BF4C80B561DB5CB4689041-4-1">
								<input type="hidden" name="jx0415zbdiv_2" value="159F4A8743BF4C80B561DB5CB4689041-4-2">
								<div id="159F4A8743BF4C80B561DB5CB4689041-4-1"  class="kbcontent1">&nbsp;</div>
								<div id="159F4A8743BF4C80B561DB5CB4689041-4-2"
								style="display: none;" class="kbcontent">&nbsp;</div>
								<div id="159F4A8743BF4C80B561DB5CB4689041-4-1"  class="kbcontent1 sykb1"></div>
								<div id="159F4A8743BF4C80B561DB5CB4689041-4-2"
									 style="display: none;" class="kbcontent sykb2"></div>
							</td>
							<td width="123" height="28" align="center" valign="top" >
								<input type="hidden" name="jx0415zbdiv_1" value="159F4A8743BF4C80B561DB5CB4689041-5-1">
								<input type="hidden" name="jx0415zbdiv_2" value="159F4A8743BF4C80B561DB5CB4689041-5-2">
								<div id="159F4A8743BF4C80B561DB5CB4689041-5-1"  class="kbcontent1" >面向对象的程序设计<br/><font title='周次(节次)'>10-15(周)</font><br/><font title='教室'>恒大楼一区503</font><br/></div>
								<div id="159F4A8743BF4C80B561DB5CB4689041-5-2"  
								style="display: none;" class="kbcontent" >面向对象的程序设计<br/><font title='老师'>杨岚讲师（高校）</font><br/><font title='课堂名称'>教学班2102</font><br/><font title='周次(节次)'>10-15(周)[03-04节]</font><br/><font title='教室'>恒大楼一区503</font><br/></div>
								<div id="159F4A8743BF4C80B561DB5CB4689041-5-1"  class="kbcontent1 sykb1" ></div>
								<div id="159F4A8743BF4C80B561DB5CB4689041-5-2"
									 style="display: none;" class="kbcontent sykb2" ></div>
							</td>
							<td width="123" height="28" align="center" valign="top" >
								<input type="hidden" name="jx0415zbdiv_1" value="159F4A8743BF4C80B561DB5CB4689041-6-1">
								<input type="hidden" name="jx0415zbdiv_2" value="159F4A8743BF4C80B561DB5CB4689041-6-2">
								<div id="159F4A8743BF4C80B561DB5CB4689041-6-1"  class="kbcontent1">&nbsp;</div>
								<div id="159F4A8743BF4C80B561DB5CB4689041-6-2"  
								style="display: none;" class="kbcontent">&nbsp;</div>
								<div id="159F4A8743BF4C80B561DB5CB4689041-6-1"  class="kbcontent1 sykb1"></div>
								<div id="159F4A8743BF4C80B561DB5CB4689041-6-2"
									 style="display: none;" class="kbcontent sykb2"></div>
							</td>
							<td width="123" height="28" align="center" valign="top" >
								<input type="hidden" name="jx0415zbdiv_1" value="159F4A8743BF4C80B561DB5CB4689041-7-1">
								<input type="hidden" name="jx0415zbdiv_2" value="159F4A8743BF4C80B561DB5CB4689041-7-2">
								<div id="159F4A8743BF4C80B561DB5CB4689041-7-1"  class="kbcontent1" >形势与政策<br/><font title='周次(节次)'>15-16(周)</font><br/><font title='教室'>恒大楼三区105</font><br/></div>
								<div id="159F4A8743BF4C80B561DB5CB4689041-7-2"  
								style="display: none;" class="kbcontent">形势与政策<br/><font title='老师'>王晓曦副教授</font><br/><font title='课堂名称'>教学班1917</font><br/><font title='周次(节次)'>15-16(周)[03-04节]</font><br/><font title='教室'>恒大楼三区105</font><br/></div>
								<div id="159F4A8743BF4C80B561DB5CB4689041-7-1"  class="kbcontent1 sykb1" ></div>
								<div id="159F4A8743BF4C80B561DB5CB4689041-7-2"
									 style="display: none;" class="kbcontent sykb2"></div>
							</td>
							
					</tr>
				
					<tr>
							<th width="70" height="28" align="center">
						
								5-6节&nbsp;<br/>
							    
									14:10-15:50
								
							</th>
							<td width="123" height="28" align="center" valign="top"  >
								<input type="hidden" name="jx0415zbdiv_1" value="9A46193378EB4DFE86851706A6932DA9-1-1">
								<input type="hidden" name="jx0415zbdiv_2" value="9A46193378EB4DFE86851706A6932DA9-1-2">
								<div id="9A46193378EB4DFE86851706A6932DA9-1-1" class="kbcontent1">大学英语(四)<br/><font title='周次(节次)'>5-16(周)</font><br/><font title='教室'>教四楼二区308</font><br/></div>
								<div id="9A46193378EB4DFE86851706A6932DA9-1-2" style="display: none;" class="kbcontent" >大学英语(四)<br/><font title='老师'>翁磊讲师（高校）</font><br/><font title='课堂名称'>教学班1432</font><br/><font title='周次(节次)'>5-16(周)[05-06节]</font><br/><font title='教室'>教四楼二区308</font><br/></div>
								<div id="9A46193378EB4DFE86851706A6932DA9-1-1" class="kbcontent1 sykb1"></div>
								<div id="9A46193378EB4DFE86851706A6932DA9-1-2" style="display: none;" class="kbcontent sykb2" ></div>

							</td>
							<td width="123" height="28" align="center" valign="top" >
								<input type="hidden" name="jx0415zbdiv_1" value="9A46193378EB4DFE86851706A6932DA9-2-1">
								<input type="hidden" name="jx0415zbdiv_2" value="9A46193378EB4DFE86851706A6932DA9-2-2">
								<div id="9A46193378EB4DFE86851706A6932DA9-2-1" class="kbcontent1">毛泽东思想与中国特色社会主义理论体系概论<br/><font title='周次(节次)'>1-16(周)</font><br/><font title='教室'>恒大楼三区105</font><br/>----------------------<br>形势与政策<br/><font title='周次(节次)'>17(周)</font><br/><font title='教室'>恒大楼三区105</font><br/></div>
								<div id="9A46193378EB4DFE86851706A6932DA9-2-2"
								style="display: none;" class="kbcontent">毛泽东思想与中国特色社会主义理论体系概论<br/><font title='老师'>刘勇(马)教授,张齐武副教授,王晓曦副教授</font><br/><font title='课堂名称'>教学班1325</font><br/><font title='周次(节次)'>1-16(周)[05-06节]</font><br/><font title='教室'>恒大楼三区105</font><br/>---------------------<br>形势与政策<br/><font title='老师'>王晓曦副教授</font><br/><font title='课堂名称'>教学班1917</font><br/><font title='周次(节次)'>17(周)[05-06节]</font><br/><font title='教室'>恒大楼三区105</font><br/></div>
								<div id="9A46193378EB4DFE86851706A6932DA9-2-1" class="kbcontent1 sykb1"></div>
								<div id="9A46193378EB4DFE86851706A6932DA9-2-2"
									 style="display: none;" class="kbcontent sykb2"></div>
							</td>
							<td width="123" height="28" align="center" valign="top" >
								<input type="hidden" name="jx0415zbdiv_1" value="9A46193378EB4DFE86851706A6932DA9-3-1">
								<input type="hidden" name="jx0415zbdiv_2" value="9A46193378EB4DFE86851706A6932DA9-3-2">
								<div id="9A46193378EB4DFE86851706A6932DA9-3-1"  class="kbcontent1">大学英语(四)<br/><font title='周次(节次)'>5-16(周)</font><br/><font title='教室'>教四楼二区308</font><br/></div>
								<div id="9A46193378EB4DFE86851706A6932DA9-3-2"
								style="display: none;" class="kbcontent">大学英语(四)<br/><font title='老师'>翁磊讲师（高校）</font><br/><font title='课堂名称'>教学班1432</font><br/><font title='周次(节次)'>5-16(周)[05-06节]</font><br/><font title='教室'>教四楼二区308</font><br/></div>
								<div id="9A46193378EB4DFE86851706A6932DA9-3-1"  class="kbcontent1 sykb1"></div>
								<div id="9A46193378EB4DFE86851706A6932DA9-3-2"
									 style="display: none;" class="kbcontent sykb2"></div>
							</td>
							<td width="123" height="28" align="center" valign="top"  >
								<input type="hidden" name="jx0415zbdiv_1" value="9A46193378EB4DFE86851706A6932DA9-4-1">
								<input type="hidden" name="jx0415zbdiv_2" value="9A46193378EB4DFE86851706A6932DA9-4-2">
								<div id="9A46193378EB4DFE86851706A6932DA9-4-1"  class="kbcontent1">毛泽东思想与中国特色社会主义理论体系概论<br/><font title='周次(节次)'>1-16(周)</font><br/><font title='教室'>恒大楼一区310</font><br/>----------------------<br>形势与政策<br/><font title='周次(节次)'>17(周)</font><br/><font title='教室'>恒大楼三区105</font><br/></div>
								<div id="9A46193378EB4DFE86851706A6932DA9-4-2"
								style="display: none;" class="kbcontent">毛泽东思想与中国特色社会主义理论体系概论<br/><font title='老师'>刘勇(马)教授,张齐武副教授,王晓曦副教授</font><br/><font title='课堂名称'>教学班1325</font><br/><font title='周次(节次)'>1-16(周)[05-06节]</font><br/><font title='教室'>恒大楼一区310</font><br/>---------------------<br>形势与政策<br/><font title='老师'>王晓曦副教授</font><br/><font title='课堂名称'>教学班1917</font><br/><font title='周次(节次)'>17(周)[05-06节]</font><br/><font title='教室'>恒大楼三区105</font><br/></div>
								<div id="9A46193378EB4DFE86851706A6932DA9-4-1"  class="kbcontent1 sykb1"></div>
								<div id="9A46193378EB4DFE86851706A6932DA9-4-2"
									 style="display: none;" class="kbcontent sykb2"></div>
							</td>
							<td width="123" height="28" align="center" valign="top" >
								<input type="hidden" name="jx0415zbdiv_1" value="9A46193378EB4DFE86851706A6932DA9-5-1">
								<input type="hidden" name="jx0415zbdiv_2" value="9A46193378EB4DFE86851706A6932DA9-5-2">
								<div id="9A46193378EB4DFE86851706A6932DA9-5-1"  class="kbcontent1" >&nbsp;</div>
								<div id="9A46193378EB4DFE86851706A6932DA9-5-2"  
								style="display: none;" class="kbcontent" >&nbsp;</div>
								<div id="9A46193378EB4DFE86851706A6932DA9-5-1"  class="kbcontent1 sykb1" ></div>
								<div id="9A46193378EB4DFE86851706A6932DA9-5-2"
									 style="display: none;" class="kbcontent sykb2" ></div>
							</td>
							<td width="123" height="28" align="center" valign="top" >
								<input type="hidden" name="jx0415zbdiv_1" value="9A46193378EB4DFE86851706A6932DA9-6-1">
								<input type="hidden" name="jx0415zbdiv_2" value="9A46193378EB4DFE86851706A6932DA9-6-2">
								<div id="9A46193378EB4DFE86851706A6932DA9-6-1"  class="kbcontent1">&nbsp;</div>
								<div id="9A46193378EB4DFE86851706A6932DA9-6-2"  
								style="display: none;" class="kbcontent">&nbsp;</div>
								<div id="9A46193378EB4DFE86851706A6932DA9-6-1"  class="kbcontent1 sykb1"></div>
								<div id="9A46193378EB4DFE86851706A6932DA9-6-2"
									 style="display: none;" class="kbcontent sykb2"></div>
							</td>
							<td width="123" height="28" align="center" valign="top" >
								<input type="hidden" name="jx0415zbdiv_1" value="9A46193378EB4DFE86851706A6932DA9-7-1">
								<input type="hidden" name="jx0415zbdiv_2" value="9A46193378EB4DFE86851706A6932DA9-7-2">
								<div id="9A46193378EB4DFE86851706A6932DA9-7-1"  class="kbcontent1" >&nbsp;</div>
								<div id="9A46193378EB4DFE86851706A6932DA9-7-2"  
								style="display: none;" class="kbcontent">&nbsp;</div>
								<div id="9A46193378EB4DFE86851706A6932DA9-7-1"  class="kbcontent1 sykb1" ></div>
								<div id="9A46193378EB4DFE86851706A6932DA9-7-2"
									 style="display: none;" class="kbcontent sykb2"></div>
							</td>
							
					</tr>
				
					<tr>
							<th width="70" height="28" align="center">
						
								7-8节&nbsp;<br/>
							    
									16:00-17:40
								
							</th>
							<td width="123" height="28" align="center" valign="top"  >
								<input type="hidden" name="jx0415zbdiv_1" value="316DEE792F9C47B48972175D7F500F79-1-1">
								<input type="hidden" name="jx0415zbdiv_2" value="316DEE792F9C47B48972175D7F500F79-1-2">
								<div id="316DEE792F9C47B48972175D7F500F79-1-1" class="kbcontent1">现代管理理论与方法<br/><font title='周次(节次)'>1-5(周)</font><br/><font title='教室'>恒大楼三区308</font><br/></div>
								<div id="316DEE792F9C47B48972175D7F500F79-1-2" style="display: none;" class="kbcontent" >现代管理理论与方法<br/><font title='老师'>任凤玲副教授</font><br/><font title='课堂名称'>教学班1116</font><br/><font title='周次(节次)'>1-5(周)[07-08节]</font><br/><font title='教室'>恒大楼三区308</font><br/></div>
								<div id="316DEE792F9C47B48972175D7F500F79-1-1" class="kbcontent1 sykb1"></div>
								<div id="316DEE792F9C47B48972175D7F500F79-1-2" style="display: none;" class="kbcontent sykb2" ></div>

							</td>
							<td width="123" height="28" align="center" valign="top" >
								<input type="hidden" name="jx0415zbdiv_1" value="316DEE792F9C47B48972175D7F500F79-2-1">
								<input type="hidden" name="jx0415zbdiv_2" value="316DEE792F9C47B48972175D7F500F79-2-2">
								<div id="316DEE792F9C47B48972175D7F500F79-2-1" class="kbcontent1">信号与系统<br/><font title='周次(节次)'>1-8(周)</font><br/><font title='教室'>恒大楼一区502</font><br/></div>
								<div id="316DEE792F9C47B48972175D7F500F79-2-2"
								style="display: none;" class="kbcontent">信号与系统<br/><font title='老师'>熊丹讲师（高校）</font><br/><font title='课堂名称'>教学班2109</font><br/><font title='周次(节次)'>1-8(周)[07-08节]</font><br/><font title='教室'>恒大楼一区502</font><br/></div>
								<div id="316DEE792F9C47B48972175D7F500F79-2-1" class="kbcontent1 sykb1"></div>
								<div id="316DEE792F9C47B48972175D7F500F79-2-2"
									 style="display: none;" class="kbcontent sykb2"></div>
							</td>
							<td width="123" height="28" align="center" valign="top" >
								<input type="hidden" name="jx0415zbdiv_1" value="316DEE792F9C47B48972175D7F500F79-3-1">
								<input type="hidden" name="jx0415zbdiv_2" value="316DEE792F9C47B48972175D7F500F79-3-2">
								<div id="316DEE792F9C47B48972175D7F500F79-3-1"  class="kbcontent1">现代管理理论与方法<br/><font title='周次(节次)'>1-5(周)</font><br/><font title='教室'>恒大楼三区308</font><br/></div>
								<div id="316DEE792F9C47B48972175D7F500F79-3-2"
								style="display: none;" class="kbcontent">现代管理理论与方法<br/><font title='老师'>任凤玲副教授</font><br/><font title='课堂名称'>教学班1116</font><br/><font title='周次(节次)'>1-5(周)[07-08节]</font><br/><font title='教室'>恒大楼三区308</font><br/></div>
								<div id="316DEE792F9C47B48972175D7F500F79-3-1"  class="kbcontent1 sykb1"></div>
								<div id="316DEE792F9C47B48972175D7F500F79-3-2"
									 style="display: none;" class="kbcontent sykb2"></div>
							</td>
							<td width="123" height="28" align="center" valign="top"  >
								<input type="hidden" name="jx0415zbdiv_1" value="316DEE792F9C47B48972175D7F500F79-4-1">
								<input type="hidden" name="jx0415zbdiv_2" value="316DEE792F9C47B48972175D7F500F79-4-2">
								<div id="316DEE792F9C47B48972175D7F500F79-4-1"  class="kbcontent1">体育(四)<br/><font title='周次(节次)'>1-17(周)</font><br/><font title='教室'>黄家湖北区运动场</font><br/></div>
								<div id="316DEE792F9C47B48972175D7F500F79-4-2"
								style="display: none;" class="kbcontent">体育(四)<br/><font title='老师'>喻家瑜副教授</font><br/><font title='课堂名称'>教学班0618</font><br/><font title='周次(节次)'>1-17(周)[07-08节]</font><br/><font title='教室'>黄家湖北区运动场</font><br/></div>
								<div id="316DEE792F9C47B48972175D7F500F79-4-1"  class="kbcontent1 sykb1"></div>
								<div id="316DEE792F9C47B48972175D7F500F79-4-2"
									 style="display: none;" class="kbcontent sykb2"></div>
							</td>
							<td width="123" height="28" align="center" valign="top" >
								<input type="hidden" name="jx0415zbdiv_1" value="316DEE792F9C47B48972175D7F500F79-5-1">
								<input type="hidden" name="jx0415zbdiv_2" value="316DEE792F9C47B48972175D7F500F79-5-2">
								<div id="316DEE792F9C47B48972175D7F500F79-5-1"  class="kbcontent1" >&nbsp;</div>
								<div id="316DEE792F9C47B48972175D7F500F79-5-2"  
								style="display: none;" class="kbcontent" >&nbsp;</div>
								<div id="316DEE792F9C47B48972175D7F500F79-5-1"  class="kbcontent1 sykb1" ></div>
								<div id="316DEE792F9C47B48972175D7F500F79-5-2"
									 style="display: none;" class="kbcontent sykb2" ></div>
							</td>
							<td width="123" height="28" align="center" valign="top" >
								<input type="hidden" name="jx0415zbdiv_1" value="316DEE792F9C47B48972175D7F500F79-6-1">
								<input type="hidden" name="jx0415zbdiv_2" value="316DEE792F9C47B48972175D7F500F79-6-2">
								<div id="316DEE792F9C47B48972175D7F500F79-6-1"  class="kbcontent1">&nbsp;</div>
								<div id="316DEE792F9C47B48972175D7F500F79-6-2"  
								style="display: none;" class="kbcontent">&nbsp;</div>
								<div id="316DEE792F9C47B48972175D7F500F79-6-1"  class="kbcontent1 sykb1"></div>
								<div id="316DEE792F9C47B48972175D7F500F79-6-2"
									 style="display: none;" class="kbcontent sykb2"></div>
							</td>
							<td width="123" height="28" align="center" valign="top" >
								<input type="hidden" name="jx0415zbdiv_1" value="316DEE792F9C47B48972175D7F500F79-7-1">
								<input type="hidden" name="jx0415zbdiv_2" value="316DEE792F9C47B48972175D7F500F79-7-2">
								<div id="316DEE792F9C47B48972175D7F500F79-7-1"  class="kbcontent1" >&nbsp;</div>
								<div id="316DEE792F9C47B48972175D7F500F79-7-2"  
								style="display: none;" class="kbcontent">&nbsp;</div>
								<div id="316DEE792F9C47B48972175D7F500F79-7-1"  class="kbcontent1 sykb1" ></div>
								<div id="316DEE792F9C47B48972175D7F500F79-7-2"
									 style="display: none;" class="kbcontent sykb2"></div>
							</td>
							
					</tr>
				
					<tr>
							<th width="70" height="28" align="center">
						
								9-10节&nbsp;<br/>
							    
									19:00-20:40
								
							</th>
							<td width="123" height="28" align="center" valign="top"  >
								<input type="hidden" name="jx0415zbdiv_1" value="8CF19D30B35B43119D5E501B177590D0-1-1">
								<input type="hidden" name="jx0415zbdiv_2" value="8CF19D30B35B43119D5E501B177590D0-1-2">
								<div id="8CF19D30B35B43119D5E501B177590D0-1-1" class="kbcontent1">&nbsp;</div>
								<div id="8CF19D30B35B43119D5E501B177590D0-1-2" style="display: none;" class="kbcontent" >&nbsp;</div>
								<div id="8CF19D30B35B43119D5E501B177590D0-1-1" class="kbcontent1 sykb1"></div>
								<div id="8CF19D30B35B43119D5E501B177590D0-1-2" style="display: none;" class="kbcontent sykb2" ></div>

							</td>
							<td width="123" height="28" align="center" valign="top" >
								<input type="hidden" name="jx0415zbdiv_1" value="8CF19D30B35B43119D5E501B177590D0-2-1">
								<input type="hidden" name="jx0415zbdiv_2" value="8CF19D30B35B43119D5E501B177590D0-2-2">
								<div id="8CF19D30B35B43119D5E501B177590D0-2-1" class="kbcontent1">&nbsp;</div>
								<div id="8CF19D30B35B43119D5E501B177590D0-2-2"
								style="display: none;" class="kbcontent">&nbsp;</div>
								<div id="8CF19D30B35B43119D5E501B177590D0-2-1" class="kbcontent1 sykb1"></div>
								<div id="8CF19D30B35B43119D5E501B177590D0-2-2"
									 style="display: none;" class="kbcontent sykb2"></div>
							</td>
							<td width="123" height="28" align="center" valign="top" >
								<input type="hidden" name="jx0415zbdiv_1" value="8CF19D30B35B43119D5E501B177590D0-3-1">
								<input type="hidden" name="jx0415zbdiv_2" value="8CF19D30B35B43119D5E501B177590D0-3-2">
								<div id="8CF19D30B35B43119D5E501B177590D0-3-1"  class="kbcontent1">&nbsp;</div>
								<div id="8CF19D30B35B43119D5E501B177590D0-3-2"
								style="display: none;" class="kbcontent">&nbsp;</div>
								<div id="8CF19D30B35B43119D5E501B177590D0-3-1"  class="kbcontent1 sykb1"></div>
								<div id="8CF19D30B35B43119D5E501B177590D0-3-2"
									 style="display: none;" class="kbcontent sykb2"></div>
							</td>
							<td width="123" height="28" align="center" valign="top"  >
								<input type="hidden" name="jx0415zbdiv_1" value="8CF19D30B35B43119D5E501B177590D0-4-1">
								<input type="hidden" name="jx0415zbdiv_2" value="8CF19D30B35B43119D5E501B177590D0-4-2">
								<div id="8CF19D30B35B43119D5E501B177590D0-4-1"  class="kbcontent1">&nbsp;</div>
								<div id="8CF19D30B35B43119D5E501B177590D0-4-2"
								style="display: none;" class="kbcontent">&nbsp;</div>
								<div id="8CF19D30B35B43119D5E501B177590D0-4-1"  class="kbcontent1 sykb1"></div>
								<div id="8CF19D30B35B43119D5E501B177590D0-4-2"
									 style="display: none;" class="kbcontent sykb2"></div>
							</td>
							<td width="123" height="28" align="center" valign="top" >
								<input type="hidden" name="jx0415zbdiv_1" value="8CF19D30B35B43119D5E501B177590D0-5-1">
								<input type="hidden" name="jx0415zbdiv_2" value="8CF19D30B35B43119D5E501B177590D0-5-2">
								<div id="8CF19D30B35B43119D5E501B177590D0-5-1"  class="kbcontent1" >&nbsp;</div>
								<div id="8CF19D30B35B43119D5E501B177590D0-5-2"  
								style="display: none;" class="kbcontent" >&nbsp;</div>
								<div id="8CF19D30B35B43119D5E501B177590D0-5-1"  class="kbcontent1 sykb1" ></div>
								<div id="8CF19D30B35B43119D5E501B177590D0-5-2"
									 style="display: none;" class="kbcontent sykb2" ></div>
							</td>
							<td width="123" height="28" align="center" valign="top" >
								<input type="hidden" name="jx0415zbdiv_1" value="8CF19D30B35B43119D5E501B177590D0-6-1">
								<input type="hidden" name="jx0415zbdiv_2" value="8CF19D30B35B43119D5E501B177590D0-6-2">
								<div id="8CF19D30B35B43119D5E501B177590D0-6-1"  class="kbcontent1">&nbsp;</div>
								<div id="8CF19D30B35B43119D5E501B177590D0-6-2"  
								style="display: none;" class="kbcontent">&nbsp;</div>
								<div id="8CF19D30B35B43119D5E501B177590D0-6-1"  class="kbcontent1 sykb1"></div>
								<div id="8CF19D30B35B43119D5E501B177590D0-6-2"
									 style="display: none;" class="kbcontent sykb2"></div>
							</td>
							<td width="123" height="28" align="center" valign="top" >
								<input type="hidden" name="jx0415zbdiv_1" value="8CF19D30B35B43119D5E501B177590D0-7-1">
								<input type="hidden" name="jx0415zbdiv_2" value="8CF19D30B35B43119D5E501B177590D0-7-2">
								<div id="8CF19D30B35B43119D5E501B177590D0-7-1"  class="kbcontent1" >&nbsp;</div>
								<div id="8CF19D30B35B43119D5E501B177590D0-7-2"  
								style="display: none;" class="kbcontent">&nbsp;</div>
								<div id="8CF19D30B35B43119D5E501B177590D0-7-1"  class="kbcontent1 sykb1" ></div>
								<div id="8CF19D30B35B43119D5E501B177590D0-7-2"
									 style="display: none;" class="kbcontent sykb2"></div>
							</td>
							
					</tr>
				
					<tr>
							<th width="70" height="28" align="center">
						
								11-12节&nbsp;<br/>
							    
									20:50-22:30
								
							</th>
							<td width="123" height="28" align="center" valign="top"  >
								<input type="hidden" name="jx0415zbdiv_1" value="00FAAAF3F1914305A04A4019F46ECF54-1-1">
								<input type="hidden" name="jx0415zbdiv_2" value="00FAAAF3F1914305A04A4019F46ECF54-1-2">
								<div id="00FAAAF3F1914305A04A4019F46ECF54-1-1" class="kbcontent1">&nbsp;</div>
								<div id="00FAAAF3F1914305A04A4019F46ECF54-1-2" style="display: none;" class="kbcontent" >&nbsp;</div>
								<div id="00FAAAF3F1914305A04A4019F46ECF54-1-1" class="kbcontent1 sykb1"></div>
								<div id="00FAAAF3F1914305A04A4019F46ECF54-1-2" style="display: none;" class="kbcontent sykb2" ></div>

							</td>
							<td width="123" height="28" align="center" valign="top" >
								<input type="hidden" name="jx0415zbdiv_1" value="00FAAAF3F1914305A04A4019F46ECF54-2-1">
								<input type="hidden" name="jx0415zbdiv_2" value="00FAAAF3F1914305A04A4019F46ECF54-2-2">
								<div id="00FAAAF3F1914305A04A4019F46ECF54-2-1" class="kbcontent1">&nbsp;</div>
								<div id="00FAAAF3F1914305A04A4019F46ECF54-2-2"
								style="display: none;" class="kbcontent">&nbsp;</div>
								<div id="00FAAAF3F1914305A04A4019F46ECF54-2-1" class="kbcontent1 sykb1"></div>
								<div id="00FAAAF3F1914305A04A4019F46ECF54-2-2"
									 style="display: none;" class="kbcontent sykb2"></div>
							</td>
							<td width="123" height="28" align="center" valign="top" >
								<input type="hidden" name="jx0415zbdiv_1" value="00FAAAF3F1914305A04A4019F46ECF54-3-1">
								<input type="hidden" name="jx0415zbdiv_2" value="00FAAAF3F1914305A04A4019F46ECF54-3-2">
								<div id="00FAAAF3F1914305A04A4019F46ECF54-3-1"  class="kbcontent1">&nbsp;</div>
								<div id="00FAAAF3F1914305A04A4019F46ECF54-3-2"
								style="display: none;" class="kbcontent">&nbsp;</div>
								<div id="00FAAAF3F1914305A04A4019F46ECF54-3-1"  class="kbcontent1 sykb1"></div>
								<div id="00FAAAF3F1914305A04A4019F46ECF54-3-2"
									 style="display: none;" class="kbcontent sykb2"></div>
							</td>
							<td width="123" height="28" align="center" valign="top"  >
								<input type="hidden" name="jx0415zbdiv_1" value="00FAAAF3F1914305A04A4019F46ECF54-4-1">
								<input type="hidden" name="jx0415zbdiv_2" value="00FAAAF3F1914305A04A4019F46ECF54-4-2">
								<div id="00FAAAF3F1914305A04A4019F46ECF54-4-1"  class="kbcontent1">&nbsp;</div>
								<div id="00FAAAF3F1914305A04A4019F46ECF54-4-2"
								style="display: none;" class="kbcontent">&nbsp;</div>
								<div id="00FAAAF3F1914305A04A4019F46ECF54-4-1"  class="kbcontent1 sykb1"></div>
								<div id="00FAAAF3F1914305A04A4019F46ECF54-4-2"
									 style="display: none;" class="kbcontent sykb2"></div>
							</td>
							<td width="123" height="28" align="center" valign="top" >
								<input type="hidden" name="jx0415zbdiv_1" value="00FAAAF3F1914305A04A4019F46ECF54-5-1">
								<input type="hidden" name="jx0415zbdiv_2" value="00FAAAF3F1914305A04A4019F46ECF54-5-2">
								<div id="00FAAAF3F1914305A04A4019F46ECF54-5-1"  class="kbcontent1" >&nbsp;</div>
								<div id="00FAAAF3F1914305A04A4019F46ECF54-5-2"  
								style="display: none;" class="kbcontent" >&nbsp;</div>
								<div id="00FAAAF3F1914305A04A4019F46ECF54-5-1"  class="kbcontent1 sykb1" ></div>
								<div id="00FAAAF3F1914305A04A4019F46ECF54-5-2"
									 style="display: none;" class="kbcontent sykb2" ></div>
							</td>
							<td width="123" height="28" align="center" valign="top" >
								<input type="hidden" name="jx0415zbdiv_1" value="00FAAAF3F1914305A04A4019F46ECF54-6-1">
								<input type="hidden" name="jx0415zbdiv_2" value="00FAAAF3F1914305A04A4019F46ECF54-6-2">
								<div id="00FAAAF3F1914305A04A4019F46ECF54-6-1"  class="kbcontent1">&nbsp;</div>
								<div id="00FAAAF3F1914305A04A4019F46ECF54-6-2"  
								style="display: none;" class="kbcontent">&nbsp;</div>
								<div id="00FAAAF3F1914305A04A4019F46ECF54-6-1"  class="kbcontent1 sykb1"></div>
								<div id="00FAAAF3F1914305A04A4019F46ECF54-6-2"
									 style="display: none;" class="kbcontent sykb2"></div>
							</td>
							<td width="123" height="28" align="center" valign="top" >
								<input type="hidden" name="jx0415zbdiv_1" value="00FAAAF3F1914305A04A4019F46ECF54-7-1">
								<input type="hidden" name="jx0415zbdiv_2" value="00FAAAF3F1914305A04A4019F46ECF54-7-2">
								<div id="00FAAAF3F1914305A04A4019F46ECF54-7-1"  class="kbcontent1" >&nbsp;</div>
								<div id="00FAAAF3F1914305A04A4019F46ECF54-7-2"  
								style="display: none;" class="kbcontent">&nbsp;</div>
								<div id="00FAAAF3F1914305A04A4019F46ECF54-7-1"  class="kbcontent1 sykb1" ></div>
								<div id="00FAAAF3F1914305A04A4019F46ECF54-7-2"
									 style="display: none;" class="kbcontent sykb2"></div>
							</td>
							
					</tr>
				
				<tr>
					<th width="70" height="28" align="center">
					备注:
					</th> <td colspan="7" align="left">数字电子技术实验 尚涛 1周;公益劳动  1周;</td>
				</tr> 
		  </table>
	 <span><font color="red">注：O表示整体调课，P表示部分调课</font></span>
	 
		
</form>
</div>
</div>
<form  action="" name="Formfr" id="FormFr">
	<input type="hidden" name="key" id="key" />
</form>
<input id="PageContext" type="hidden" value="/jsxsd" />
<script type="text/javascript" src="/jsxsd/js/validate.js" language="javascript"></script>
<br />
 
<script language="javascript">
loadjs();
function loadjs(){
if( ''!=''){
alert('');
}

}

//放大显示详细
function funFD(flag){
	if(flag){
		var jx0415zbdiv_1 = document.getElementsByName("jx0415zbdiv_1");
		for(var i = 0; i < jx0415zbdiv_1.length; i++){
			document.getElementById(jx0415zbdiv_1[i].value).style.display="none";
		}
		var jx0415zbdiv_2 = document.getElementsByName("jx0415zbdiv_2");
		for(var i = 0; i < jx0415zbdiv_2.length; i++){
			document.getElementById(jx0415zbdiv_2[i].value).style.display="";
		}
		$("font[name='xsks']").show();
		$(".sykb1").attr("style","display: none;");
		$(".sykb2").attr("style","display: ;");
	}else{
		var jx0415zbdiv_1 = document.getElementsByName("jx0415zbdiv_1");
		for(var i = 0; i < jx0415zbdiv_1.length; i++){
			document.getElementById(jx0415zbdiv_1[i].value).style.display="";
		}
		var jx0415zbdiv_2 = document.getElementsByName("jx0415zbdiv_2");
		for(var i = 0; i < jx0415zbdiv_2.length; i++){
			document.getElementById(jx0415zbdiv_2[i].value).style.display="none";
		}
		$("font[name='xsks']").hide();
		$(".sykb2").attr("style","display: none;");
		$(".sykb1").attr("style","display: ;");
	}
}

function funFRMBZ(flag){
	if(flag){
		$("p[name='bz']").show();
	}else{
		$("p[name='bz']").hide();
	}
}

function funShowJzxsjhj(flag){
	if(flag){
		$("p[name='jzxsjhj']").show();
	}else{
		$("p[name='jzxsjhj']").hide();
	}
}

function search(obj){
	if(obj != null){
		obj.value = "查询中";
		obj.disabled = true;
	}
	document.getElementById('Form1').submit();
}
function print(obj){
	var url = "";
	var xnxq01id = document.getElementById("xnxq01id").value ; 
	var zc = document.getElementById("zc").value ;
	var sjms = document.getElementById("kbjcmsid");
	url += "?xnxq01id="+xnxq01id;
	url += "&zc="+zc;
	var kbjcmsid = "";
	if(sjms){
		kbjcmsid = sjms.value;
		url += "&kbjcmsid="+kbjcmsid;
	}
	if("" == '1'){
		var sfbyjs = document.getElementById("sfbyjs");
		if(sfbyjs.checked){
			url+="&sfbyjs=1";
		}
	}

	document.getElementById("FormPrint").action = "/jsxsd/xskb/xskb_print.do"+url;
	document.getElementById("FormPrint").submit();
}
funFD(document.getElementById("sfFD").checked);

function printKb_fr(){
	var xnxq01id=$("#xnxq01id").val();
	var xs0101id="41644821E7784E67819916FEF5A1583D";
	var zc=$("#zc").val();
	frdy_laosha(xnxq01id+','+xs0101id+","+zc,'个人课表-学生课表','null','alert(\'无对应帆软模板配置\')')
}
function printKb_rq(){
	var xnxq01id=$("#xnxq01id").val();
	var xs0101id="41644821E7784E67819916FEF5A1583D";
	var zc=$("#zc").val();
	var kbjcmsid=$("#kbjcmsid").val();
	frdy_laosha(xnxq01id+","+xs0101id+","+kbjcmsid+","+zc,'个人课表-学生课表','http://202.114.251.154:81/qzbb/reportJsp/showReport.jsp','alert(\'无对应润乾模板配置\')')
}
function printKb_fr_12928(){
	var xnxq01id=$("#xnxq01id").val();
	var xs0101id="41644821E7784E67819916FEF5A1583D";
	var zc=$("#zc").val();
	 var kbjcmsid=$("#kbjcmsid").val();
	 var sfbz =$("#sfBZ:checked").val();
	var jzxsjhj =$("#jzxsjhj:checked").val();
	if(undefined==sfbz || sfbz==null || ""==sfbz){
		sfbz=0;
	}
	if(undefined==jzxsjhj || jzxsjhj==null || ""==jzxsjhj){
		jzxsjhj=0;
	}
	frdy_laosha(xnxq01id+','+kbjcmsid+','+xs0101id+','+zc+','+sfbz+','+jzxsjhj,'个人课表-学生课表','null','alert(\'无对应帆软模板配置\')')
}
function printKb_fr_10013(){
	frdy_laosha('','个人课表-学生课表','null','alert(\'无对应帆软模板配置\')')
}
funBYJS(false);
function funBYJS(b){
	if(b){
		$("font[name='byjsmc']").show();
	}else{
		$("font[name='byjsmc']").hide();
	}
}
if(""=="true"){
	$("#kbjcmsid").prepend(new Option("全部", "qb"));
	$("#kbjcmsid").val("9486203B90F3E3CBE0532914A8C03BE2");
}
</script>
</body>
</html>
""";
