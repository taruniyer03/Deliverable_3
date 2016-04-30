﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="ModuleInfo.css"/>
    <link rel="stylesheet" type="text/css" href="MainSheet.css"/>
    <!--#include file ="Navigation.aspx"-->
</head>
<body>
    <form id="form1" runat="server">
    <div>
            <!-- MAIN CONTENT -->
    <div id="page-content-container">
      <div class='card-container'>
        <div style="padding:20px;">
          <h3>Module Search</h3>
          <div class="editmodule-blocks" id="search-block">
            <p>Insert Module Name:</p>
            <input type='text' placeholder='e.g. COB290 Team Projects' id='input-moduleInfo' class="form-control" style="width:80%"/>
          </div>
          <div class="form-group" style='margin-left:15px'>
            <label>Semester:</label>
            <select id="select-semester" class="form-dropdown-medium">
              <option>1</option>
              <option>2</option>
            </select>
          </div>
        </div>
      </div>
      <br/>
      <!-- JQuery Message Popup Dialog -->
      <div class="messagepop pop">
        <b>Information for a booked timetable slot.</b><br/><br/><br/><br/><br/>
        <p></p>
        <p class='close'>Close</p>
      </div>

      <div class='card-container'>
        <div id="timetable-container">
          <table class="timetable-table">
            <tr class="timetable-row1-headings">
              <td class="timetable-col1-name"></td>
              <td class="timetable-col2-period1">09:00-10:00</td>
              <td class="timetable-col3-period2">10:00-11:00</td>
              <td class="timetable-col4-period3">11:00-12:00</td>
              <td class="timetable-col5-period4">12:00-13:00</td>
              <td class="timetable-col6-period5">13:00-14:00</td>
              <td class="timetable-col7-period6">14:00-15:00</td>
              <td class="timetable-col8-period7">15:00-16:00</td>
              <td class="timetable-col9-period8">16:00-17:00</td>
              <td class="timetable-col10-period9">17:00-18:00</td>
            </tr>
            <tr class="timetable-row2-monday">
              <td class="timetable-col1-name">Monday</td>
              <td class="timetable-col2-period1 timetable-data"></td>
              <td class="timetable-col3-period2 timetable-data"><div class="timetable-content-empty"></div></td>
              <td class="timetable-col4-period3 timetable-data"><div class="timetable-content-empty"></div></td>
              <td class="timetable-col5-period4 timetable-data"><div class="timetable-content-empty"></div></td>
              <td class="timetable-col6-period5 timetable-data"><div class="timetable-content-empty"></div></td>
              <td class="timetable-col7-period6 timetable-data"><div class="timetable-content-empty"></div></td>
              <td class="timetable-col8-period7 timetable-data"><div class="timetable-content-empty"></div></td>
              <td class="timetable-col9-period8 timetable-data"><div class="timetable-content-empty"></div></td>
              <td class="timetable-col10-period9 timetable-data"><div class="timetable-content-empty"></div></td>
            </tr>
            <tr class="timetable-row3-tuesday">
              <td class="timetable-col1-name">Tuesday</td>
              <td class="timetable-col2-period1 timetable-data"><div class="timetable-content-empty"></div></td>
              <td class="timetable-col3-period2 timetable-data"><div class="timetable-content-empty"></div></td>
              <td class="timetable-col4-period3 timetable-data"><div class="timetable-content-empty"></div></td>
              <td class="timetable-col5-period4 timetable-data"><div class="timetable-content-empty"></div></td>
              <td class="timetable-col6-period5 timetable-data"><div class="timetable-content-empty"></div></td>
              <td class="timetable-col7-period6 timetable-data"><div class="timetable-content-empty"></div></td>
              <td class="timetable-col8-period7 timetable-data"><div class="timetable-content-empty"></div></td>
              <td class="timetable-col9-period8 timetable-data"><div class="timetable-content-empty"></div></td>
              <td class="timetable-col10-period9 timetable-data"><div class="timetable-content-empty"></div></td>
            </tr>
            <tr class="timetable-row4-wednesday">
              <td class="timetable-col1-name">Wednesday</td>
              <td class="timetable-col2-period1 timetable-data"><div class="timetable-content-empty"></div></td>
              <td class="timetable-col3-period2 timetable-data"><div class="timetable-content-empty"></div></td>
              <td class="timetable-col4-period3 timetable-data"><div class="timetable-content-empty"></div></td>
              <td class="timetable-col5-period4 timetable-data"><div class="timetable-content-empty"></div></td>
              <td class="timetable-col6-period5 timetable-data"><div class="timetable-content-empty"></div></td>
              <td class="timetable-col7-period6 timetable-data"><div class="timetable-content-empty"></div></td>
              <td class="timetable-col8-period7 timetable-data"><div class="timetable-content-empty"></div></td>
              <td class="timetable-col9-period8 timetable-data"><div class="timetable-content-empty"></div></td>
              <td class="timetable-col10-period9 timetable-data"><div class="timetable-content-empty"></div></td>
            </tr>
            <tr class="timetable-row5-thursday">
              <td class="timetable-col1-name">Thursday</td>
              <td class="timetable-col2-period1 timetable-data"><div class="timetable-content-empty"></div></td>
              <td class="timetable-col3-period2 timetable-data"><div class="timetable-content-empty"></div></td>
              <td class="timetable-col4-period3 timetable-data"><div class="timetable-content-empty"></div></td>
              <td class="timetable-col5-period4 timetable-data"><div class="timetable-content-empty"></div></td>
              <td class="timetable-col6-period5 timetable-data"><div class="timetable-content-empty"></div></td>
              <td class="timetable-col7-period6 timetable-data"><div class="timetable-content-empty"></div></td>
              <td class="timetable-col8-period7 timetable-data"><div class="timetable-content-empty"></div></td>
              <td class="timetable-col9-period8 timetable-data"><div class="timetable-content-empty"></div></td>
              <td class="timetable-col10-period9 timetable-data"><div class="timetable-content-empty"></div></td>
            </tr>
            <tr class="timetable-row6-friday">
              <td class="timetable-col1-name">Friday</td>
              <td class="timetable-col2-period1 timetable-data"><div class="timetable-content-empty"></div></td>
              <td class="timetable-col3-period2 timetable-data"><div class="timetable-content-empty"></div></td>
              <td class="timetable-col4-period3 timetable-data"><div class="timetable-content-empty"></div></td>
              <td class="timetable-col5-period4 timetable-data"><div class="timetable-content-empty"></div></td>
              <td class="timetable-col6-period5 timetable-data"><div class="timetable-content-empty"></div></td>
              <td class="timetable-col7-period6 timetable-data"><div class="timetable-content-empty"></div></td>
              <td class="timetable-col8-period7 timetable-data"><div class="timetable-content-empty"></div></td>
              <td class="timetable-col9-period8 timetable-data"><div class="timetable-content-empty"></div></td>
              <td class="timetable-col10-period9 timetable-data"><div class="timetable-content-empty"></div></td>
            </tr>
          </table>
        </div>
      </div>
    </div>
    </div>
    </form>
</body>
</html>
