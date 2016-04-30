<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ModuleManager.aspx.cs" Inherits="ModuleManager" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="ModuleManager.css"/>
    <link rel="stylesheet" type="text/css" href="MainSheet.css"/>
    <!--#include file ="Navigation.aspx"-->
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div id="page-content-container">

      <div id="createmodule-container" class="card-container">
        <div class='form-cont' id="form-createmodule">
          <h3 style="margin:15px">Create Module</h3>
          <div class="form-div">
            <span class="form-label">Department Code</span>
            <input type='text' placeholder='e.g. <?= $_SESSION['dept-code'] ?>' id='mod-depcode' class="form-control" style="width:60%" disabled="disabled" value="<?= $_SESSION['dept-code'] ?>"/>
          </div>
          <div class="form-div">
            <span class="form-label">Module Code</span>
            <input type='text' placeholder='e.g. <?= $_SESSION['dept-code'] ?>B290' id='mod-code' class="form-control" style="width:60%"/>
          </div>
          <div class="form-div">
            <span class="form-label">Module Title</span>
            <input type='text' placeholder='e.g. Team Projects' id='mod-title' class="form-control" style="width:70%"/>
          </div>
          <div class="form-div">
            <button id='create-mod' class='btn ok' style="width:90%">CREATE</button>
          </div>
        </div>
      </div>
      <div id="editdeletemodule-container" class="card-container">

        <div style="padding:20px;">
          <h3>Modify Module</h3>
          <div class="editmodule-blocks" id="search-block">
            <p>Module Search:</p>
            <input type='text' placeholder='e.g. COB290 Team Projects' id='input-moduleInfo' class="form-control" style="width:80%" align="middle"/>
          </div>
          <div class="editmodule-blocks" id="upd-block">
            <p>Edit Module:</p>
            <span class="form-label">Module Code</span>
            <input type='text' readonly placeholder='Module Code' id='modupd-code' class="form-control form-edit-input" style="width:67%" disabled="disabled"/>
            <br/>
            <span class="form-label">Module Title</span>
            <input type='text' placeholder='Module Title' id='modupd-title' class="form-control form-edit-input" style="width:68%"/>
            <br/>
            <center>
              <button id='update-mod' class='btn ok' style="margin-top:15px; width: 97%">UPDATE</button>
            </center>
          </div>
          <div class="editmodule-blocks" id="del-block">
            <p>Delete Module:</p>
            <br/>
            <button class='btn del' id='del-mod'>DELETE</button>
          </div>
        </div>
      </div>
    </div>
    </div>
    </form>
</body>
</html>
