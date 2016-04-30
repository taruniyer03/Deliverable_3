        <!-- HEADER -->
<div id="header">
  <div id="header-topSection">
    <!-- Logo -->
    <img src="images/lu-logo-white.png" alt="LU Logo White" id="lu-logo">
    <!-- Heading -->
    <h2 id="main-heading">Departmental Timetabling Utility</h2>
    <!-- Accessibility -->
    <div id="accessibility-options">
      <span id="user-details" style='font-size:1.2em;'>Department&nbsp;&nbsp;   
        <span id="username" style='font-weight:700;'>??</span>
      </span>
      <span>&nbsp;&nbsp;&nbsp;&nbsp;<i id="user-notifications" class="fa fa-bell fa-2x accessibility-option"></i><span id='user-notification-alert'><i class="fa fa-exclamation fa-lg"></i></span></span>
      <span>&nbsp;&nbsp;&nbsp;&nbsp;<i id="toggleColor" class="fa fa-eye fa-2x accessibility-option"></i></span>
      <span>&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-search-plus fa-2x accessibility-option" id="fontChange"></i></span>
      <span>&nbsp;&nbsp;&nbsp;&nbsp;<a href="logout.php" class="accessibility-option" id="logoutButton"><i class="fa fa-sign-out fa-2x"></i></a></span>
    </div>
  </div>
  <div id="header-navigation">
    <ul>
      <li>
        <a href="Booking.aspx">
            Room Booking Requests
        </a>
      </li>
      <li>
        <a href="Allocations.aspx">
            Room Allocations
        </a>
      </li>
      <li>
        <a href="RoomInfo.aspx">
            Room Information
        </a>
      </li>
      <li>
        <a href="Default.aspx">
               Module Information
        </a>
      </li>
      <li>
        <a href="ModuleManager.aspx">
            Module Management
        </a>
      </li>
    </ul>
  </div>

  <div class='user-notification-dropdown card-container'><i class="fa fa-bell"></i>&nbsp;&nbsp;Notifications
    <span id='read-icon' style='margin-left:95px;'>Clear <i class="fa fa-check"></i></span>
    <br/>
    <br/>
    <div id='notification-container'></div>
    <br/>
  </div>
</div>

