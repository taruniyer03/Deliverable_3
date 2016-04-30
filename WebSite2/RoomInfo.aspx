﻿
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RoomInfo.aspx.cs" Inherits="RoomInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="RoomInfo.css"/>
    <link rel="stylesheet" type="text/css" href="MainSheet.css"/>
    <!--#include file ="Navigation.aspx"-->
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <!-- MAIN CONTENT -->
    <div id="page-content-container">
      <div class="tab-content card-container">
        <div class="roomSearch-header roomSearch-header-bottomBorder"><span
            id="roomSearch-title">Room Search</span>
          <span id="roomSearch-reset"><i class="fa fa-repeat fa-flip-horizontal"></i> Reset Preferences</span>
        </div>
        <div class="roomSearch-container">
          <form class="form-inline mo_info">
            <div class="section" id="form-building-info">
              <div class="form-group">
                <label>Park:</label>
                <select id="select-park" class="form-dropdown-medium">
                  <option>Any</option>
                  <option>Central</option>
                  <option>East</option>
                  <option>West</option>
                  <option>London</option>
                </select>
              </div>
              <br>
              <div class="form-group">
                <label>Building:</label>
                <select id="select-building" class="form-dropdown-xlarge"></select>
              </div>
              <br/>
              <div class="form-group">
                <label>Capacity:</label>
                <input type="text" name="name" class="form-control" id="form-capacity"
                       placeholder="eg. 150">
              </div>
              <div id="wdytknbt">
                <label>Room Code:</label>
                <input type="text" name="name" class="form-control roomcode" id="form-booking-roomCode">
                <label class="full" id="form-booking-roomName">No Room Selected</label>
                <br/>
                <div class="form-group">
                  <label>Semester:</label>
                  <select id="select-semester" class="form-dropdown-medium">
                    <option>1</option>
                    <option>2</option>
                  </select>
                </div>
                <br/>
                <br>
                <br>
                <br/>
                <br/>
              </div>
            </div>
            <div class="section" id="form-specific-reqs">
              <h2 class="mt0">Specific Requirements</h2>
              <ul id="select-specificreqs" class="spe_list">
                <li><span id="facility-PASystem">PA System</span> &nbsp;&nbsp;|&nbsp;&nbsp; <span
                    id="facility-RadioMic">Radio Mic</span></li>
                <li><span id="facility-Wheelchair">Wheelchair Access</span></li>
                <li><span id="facility-Computer">Computer</span></li>
                <li><span id="facility-Projector">Projector</span> &nbsp;&nbsp;|&nbsp;&nbsp; <span
                    id="facility-DualProjector">Dual Projector</span></li>
                <li><span id="facility-InductionLoop">Induction Loop</span></li>
                <li><span id="facility-DVD">DVD Player</span> &nbsp;&nbsp;|&nbsp;&nbsp; <span
                    id="facility-BluRay">BluRay</span> &nbsp;&nbsp;|&nbsp;&nbsp; <span
                    id="facility-VHS">VHS</span></li>
                <li><span id="facility-Whiteboard">Whiteboard</span> &nbsp;&nbsp;|&nbsp;&nbsp; <span
                    id="facility-Chalkboard">Chalkboard</span></li>
                <li><span id="facility-Visualiser">Visualiser</span> &nbsp;&nbsp;|&nbsp;&nbsp; <span
                    id="facility-OHP">OverHead Projector</span></li>
                <li><span id="facility-Plasma">Plasma Screen</span></li>
                <li><span id="facility-ReVIEW">ReVIEW Capture</span></li>
                <li><span id="facility-Lab">Laboratory</span></li>
              </ul>
            </div>
            <div class="section" id="form-suitable-rooms">
              <h2 class="mt0">Suitable Rooms <span id="form-numRooms"></span></h2>
              <select size="12" class="form-control select_width" id="form-roomSelection"></select>
            </div>
          </form>
        </div>

        <!-- Tab panes -->
        <div class="roomSearch-header roomSearch-header-bottomBorder"><span
            id="roomSearch-booking">Selected Room</span>
        </div>
        <form class="form-inline mo_info">

        </form>

        <div id='selected-room-info'>
        </div>
        <br/>
        <br/>

        <!-- JQuery Message Popup Dialog -->
        <div class="messagepop pop">
          <b>Information for a booked timetable slot.</b><br/><br/><br/><br/><br/>
          <p></p>
          <p class='close'>Close</p>
        </div>

        <!-- TIMETABLE -->
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
