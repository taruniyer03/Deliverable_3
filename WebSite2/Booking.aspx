﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Booking.aspx.cs" Inherits="Booking" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="MainSheet.css"/>
    <link rel="stylesheet" type="text/css" href="Booking.css"/>
    <!--#include file ="Navigation.aspx"-->
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <!-- MAIN CONTENT -->
    <div id="page-content-container">

      <div class="help-icon" id="help-bookingPage"><i class="fa fa-question-circle fa-lg"></i><span class="help-text">What's this?</span>
      </div>
      <div class="page-form-header card-container">

        <div class="title_bar">
          <span id="round-name">AD-HOC Round Bookings</span><br>

          <span class="semester-choice-text">
            <span id="current-semester" class="active-semester-choice">Current Semester</span>  |
            <span id="next-semester" class="deactive-semester-choice">Next Semester</span>
          </span>

          <div class="clock">
            DEADLINE <br> <span id="deadline-date">1 Feb</span>
          </div>
        </div>

      </div>

      <div class="page-form-container card-container">
        <div class="form-content">
          <h1>Module Information</h1>
          <form class="form-inline mo_info">
            <div class="clearfix"></div>

            <div class="form-group">
              <span class="form-label">Module Name:</span>
              <input type="text" class="form-control" id="input-moduleInfo" name="input-moduleInfo"
                     placeholder="Insert Module Code or Title">
            </div>
          </form>
          <h1 style="margin-top:20px;">Room Information</h1>
          <form class="form-inline room_info">
            <div class="form-group">
              <span class="form-label">Number of rooms for this module:</span>
              <select id="select-tab-number" class="form-dropdown-small">
                <option>1</option>
                <option>2</option>
                <option>3</option>
              </select>
              <span class="form-label" style="font-size:0.8em;">&nbsp;&nbsp;*for simultaneous, linked bookings in different rooms</span>
            </div>
          </form>
        </div>
        <div class="help-icon" id="help-roomBooking"><i class="fa fa-question-circle fa-lg"></i><span class="help-text">What's this?</span>
        </div>
        <!-- Nav tabs -->
        <div id="room-tabs">
          <ul>
            <li class="room-tab tab-active" id="tab-room1">Room 1</li>
          </ul>
        </div>

        <div class="tab-content">
          <div class="roomSearch-header roomSearch-header-bottomBorder"><span
              id="roomSearch-title">Room Preferences</span>
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
                <div class="form-group">
                  <label>Room use:</label>
                  <select id="select-roomuse" class="form-dropdown-medium">
                    <option>Lecture</option>
                    <option>Lab</option>
                    <option>Seminar</option>
                  </select>
                </div>
                <br/>
                <div class="form-group">
                  <label>Capacity:</label>
                  <input type="text" name="name" class="form-control" id="form-capacity" placeholder="eg. 150">
                </div>
                <div class="form-group">
                  <label>Prioritise?</label>
                  <input type="text" name="name" class="form-control" id="form-priority" placeholder="Reason for Priority">
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
              id="roomSearch-booking">Room Booking</span>
          </div>
          <form class="form-inline mo_info">
            <div id="wdytknbt">
              <label>Room Code:</label>
              <input type="text" name="name" class="form-control roomcode" id="form-booking-roomCode">
              <label class="full" id="form-booking-roomName">No Room Selected</label>
              <br>
              <br>
            </div>
          </form>

          <!-- Required Weeks Form -->
          <div id="form-requiredWeeks">
            <div id="form-requiredWeeks-title">Required weeks:</div>
            <div id="form-requiredWeeks-list">
              <table>
                <tr id="form-requiredWeeks-row1">
                  <td class="form-requiredWeeks-all">
                    <div class="matrix3d"></div>
                    <input type="checkbox" class="form-requiredWeeks-checkbox" id="form-requiredWeeks-all" name="all"/></td>
                  <td>
                    <div class="matrix3d"></div>
                    <input type="checkbox" class="form-requiredWeeks-checkbox" id="form-requiredWeeks-w1"
                           name="w1"/></td>
                  <td>
                    <div class="matrix3d"></div>
                    <input type="checkbox" class="form-requiredWeeks-checkbox" id="form-requiredWeeks-w2"
                           name="w2"/></td>
                  <td>
                    <div class="matrix3d"></div>
                    <input type="checkbox" class="form-requiredWeeks-checkbox" id="form-requiredWeeks-w3"
                           name="w3"/></td>
                  <td>
                    <div class="matrix3d"></div>
                    <input type="checkbox" class="form-requiredWeeks-checkbox" id="form-requiredWeeks-w4"
                           name="w4"/></td>
                  <td>
                    <div class="matrix3d"></div>
                    <input type="checkbox" class="form-requiredWeeks-checkbox" id="form-requiredWeeks-w5"
                           name="w5"/></td>
                  <td>
                    <div class="matrix3d"></div>
                    <input type="checkbox" class="form-requiredWeeks-checkbox" id="form-requiredWeeks-w6"
                           name="w6"/></td>
                  <td>
                    <div class="matrix3d"></div>
                    <input type="checkbox" class="form-requiredWeeks-checkbox" id="form-requiredWeeks-w7"
                           name="w7"/></td>
                  <td>
                    <div class="matrix3d"></div>
                    <input type="checkbox" class="form-requiredWeeks-checkbox" id="form-requiredWeeks-w8"
                           name="w8"/></td>
                  <td>
                    <div class="matrix3d"></div>
                    <input type="checkbox" class="form-requiredWeeks-checkbox" id="form-requiredWeeks-w9"
                           name="w9"/></td>
                  <td>
                    <div class="matrix3d"></div>
                    <input type="checkbox" class="form-requiredWeeks-checkbox" id="form-requiredWeeks-w10"
                           name="w10"/></td>
                  <td>
                    <div class="matrix3d"></div>
                    <input type="checkbox" class="form-requiredWeeks-checkbox" id="form-requiredWeeks-w11"
                           name="w11"/></td>
                  <td>
                    <div class="matrix3d"></div>
                    <input type="checkbox" class="form-requiredWeeks-checkbox" id="form-requiredWeeks-w12"
                           name="w12"/></td>
                  <td>
                    <div class="matrix3d"></div>
                    <input type="checkbox" class="form-requiredWeeks-checkbox" id="form-requiredWeeks-w13"
                           name="w13"/></td>
                  <td>
                    <div class="matrix3d"></div>
                    <input type="checkbox" class="form-requiredWeeks-checkbox" id="form-requiredWeeks-w14"
                           name="w14"/></td>
                  <td>
                    <div class="matrix3d"></div>
                    <input type="checkbox" class="form-requiredWeeks-checkbox" id="form-requiredWeeks-w15"
                           name="w15"/></td>
                </tr>
                <tr id="form-requiredWeeks-row2">
                  <td class="form-requiredWeeks-all"><span class="form-requiredWeeks-number">All</span></td>
                  <td><span class="form-requiredWeeks-number">1</span></td>
                  <td><span class="form-requiredWeeks-number">2</span></td>
                  <td><span class="form-requiredWeeks-number">3</span></td>
                  <td><span class="form-requiredWeeks-number">4</span></td>
                  <td><span class="form-requiredWeeks-number">5</span></td>
                  <td><span class="form-requiredWeeks-number">6</span></td>
                  <td><span class="form-requiredWeeks-number">7</span></td>
                  <td><span class="form-requiredWeeks-number">8</span></td>
                  <td><span class="form-requiredWeeks-number">9</span></td>
                  <td><span class="form-requiredWeeks-number">10</span></td>
                  <td><span class="form-requiredWeeks-number">11</span></td>
                  <td><span class="form-requiredWeeks-number">12</span></td>
                  <td><span class="form-requiredWeeks-number">13</span></td>
                  <td><span class="form-requiredWeeks-number">14</span></td>
                  <td><span class="form-requiredWeeks-number">15</span></td>
                </tr>
              </table>

            </div>
          </div>

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

        <div class="text-center pt20 clear align_center"><span id="submit-btn" class="btn-blue">Submit Bookings</span></div>
      </div>

      <!-- Submission Log -->
      <div class="submissionLog-container card-container">

        <div class="help-icon" id="help-submissionLog"><i class="fa fa-question-circle fa-lg"></i><span
            class="help-text">What's this?</span></div>

        <div class="form-content" id="submissionLog-container">
          <h3>Submission Log</h3>
          <br>
          <div id="submissionLog-inner-container">

          </div>

        </div>
      </div>
    </div>
    <!-- End of Page content container -->

    <div id="state-tab1" style="display:none;">
      <span id="select-park-tab1"></span>
      <span id="form-capacity-tab1"></span>
      <span id="select-building-tab1"></span>
      <span id="select-roomuse-tab1"></span>
      <span id="form-priority-tab1"></span>
      <div class="requirements-tab1">
        <span id="lab-tab1"></span>
        <span id="wheelchair-tab1"></span>
        <span id="hearingloop-tab1"></span>
        <span id="computer-tab1"></span>
        <span id="projector-tab1"></span>
        <span id="dprojector-tab1"></span>
        <span id="ohp-tab1"></span>
        <span id="visualiser-tab1"></span>
        <span id="video-tab1"></span>
        <span id="bluray-tab1"></span>
        <span id="vhs-tab1"></span>
        <span id="whiteboard-tab1"></span>
        <span id="chalkboard-tab1"></span>
        <span id="plasma-tab1"></span>
        <span id="pasystem-tab1"></span>
        <span id="radiomic-tab1"></span>
        <span id="review-tab1"></span>
      </div>
      <span id="roomcode-tab1"></span>
      <div class="timetable-tab1">
        <span id="tab1-monday"></span>
        <span id="tab1-tuesday"></span>
        <span id="tab1-wednesday"></span>
        <span id="tab1-thursday"></span>
        <span id="tab1-friday"></span>
      </div>
    </div>

    <div id="state-tab2" style="display:none;">
      <span id="select-park-tab2"></span>
      <span id="form-capacity-tab2"></span>
      <span id="select-building-tab2"></span>
      <span id="select-roomuse-tab2"></span>
      <span id="form-priority-tab2"></span>
      <div class="requirements-tab2">
        <span id="lab-tab2"></span>
        <span id="wheelchair-tab2"></span>
        <span id="hearingloop-tab2"></span>
        <span id="computer-tab2"></span>
        <span id="projector-tab2"></span>
        <span id="dprojector-tab2"></span>
        <span id="ohp-tab2"></span>
        <span id="visualiser-tab2"></span>
        <span id="video-tab2"></span>
        <span id="bluray-tab2"></span>
        <span id="vhs-tab2"></span>
        <span id="whiteboard-tab2"></span>
        <span id="chalkboard-tab2"></span>
        <span id="plasma-tab2"></span>
        <span id="pasystem-tab2"></span>
        <span id="radiomic-tab2"></span>
        <span id="review-tab2"></span>
      </div>
      <span id="roomcode-tab2"></span>
      <div class="timetable-tab2">
        <span id="tab2-monday"></span>
        <span id="tab2-tuesday"></span>
        <span id="tab2-wednesday"></span>
        <span id="tab2-thursday"></span>
        <span id="tab2-friday"></span>
      </div>
    </div>

    <div id="state-tab3" style="display:none;">
      <span id="select-park-tab3"></span>
      <span id="form-capacity-tab3"></span>
      <span id="select-building-tab3"></span>
      <span id="select-roomuse-tab3"></span>
      <span id="form-priority-tab3"></span>
      <div class="requirements-tab3">
        <span id="lab-tab3"></span>
        <span id="wheelchair-tab3"></span>
        <span id="hearingloop-tab3"></span>
        <span id="computer-tab3"></span>
        <span id="projector-tab3"></span>
        <span id="dprojector-tab3"></span>
        <span id="ohp-tab3"></span>
        <span id="visualiser-tab3"></span>
        <span id="video-tab3"></span>
        <span id="bluray-tab3"></span>
        <span id="vhs-tab3"></span>
        <span id="whiteboard-tab3"></span>
        <span id="chalkboard-tab3"></span>
        <span id="plasma-tab3"></span>
        <span id="pasystem-tab3"></span>
        <span id="radiomic-tab3"></span>
        <span id="review-tab3"></span>
      </div>
      <span id="roomcode-tab3"></span>
      <div class="timetable-tab3">
        <span id="tab3-monday"></span>
        <span id="tab3-tuesday"></span>
        <span id="tab3-wednesday"></span>
        <span id="tab3-thursday"></span>
        <span id="tab3-friday"></span>
      </div>
    </div>
    </div>
    </form>
</body>
</html>
