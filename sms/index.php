<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link rel="stylesheet" type="text/css" href="menu.css" />
<title>WebSM SMS</title>
</head>
<body style="background-color:khaki;">
<form id="sms" name="sms" method="post" action="send_sms.php">
<table width="400">
  <tr>
    <td align="right" valign="top">From:</td>
    <td align="left"><input name="from" type="text" id="from" size="30" /></td>
  </tr>
  <tr>
    <td align="right" valign="top">To:</td>
    <td align="left"><input name="to" type="text" id="to" size="30" /></td>
  </tr>
  <tr>
    <td align="right" valign="top">Carrier:</td>
    <td align="left"><select name="carrier" id="carrier">
      <option value="att">AT&amp;T</option>      
      <option value="alltel">Alltel</option>
      <option value="cingular">Cingular</option>
      <option value="comcast">Comcast</option>
      <option value="metropcs">Metro PCS</option>
      <option value="verizon">Verizon</option>
      <option value="tmobile">T-Mobile</option>
      <option value="tracfone">Tracfone
      <option value="sprint">Sprint</option>
      <option value="virgin">Virgin Mobile</option>
      <option value="boost">Boost</option>
      
    </select></td>
  </tr>
  <tr>
    <td align="right" valign="top">Message:</td>
    <td align="left"><textarea name="message" cols="40" rows="5" id="message"></textarea></td>
  </tr>
  <tr>
    <td colspan="2" align="right"><input type="submit" name="Submit" value="Submit" /></td>
    </tr>
</table>
</form>

