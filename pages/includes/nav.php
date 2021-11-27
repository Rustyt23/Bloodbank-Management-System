<!-- Navigation -->
<nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.php"><i class="icofont-blood-drop"></i>Blood Donor Management System</a>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
               
             
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <!-- <li class="divider"></li> -->
                        <li><a href="../logout.php"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
               
                <!-- /.dropdown -->
            </ul>
            
            <!-- /.navbar-top-links -->

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li class="sidebar-search">
                            <div class="input-group custom-search-form">
                                <input type="text" class="form-control" placeholder="Search...">
                                <span class="input-group-btn">
                                <button class="btn btn-default" type="button">
                                    <i class="fa fa-search"></i>
                                </button>

                            </span>
                            </div>
                            <!-- /input-group -->
                        </li>
                        <li>
                            <a href="index.php"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
                        </li>
                        <li>
                            <a href=""><i class="fa fa-heartbeat"></i> Blood Collection Details <span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="addblood.php">Add Blood</a>
                                </li>
                                <li>
                                    <a href="viewblood.php">View Blood</a>
                                </li>
                                <li>
                                    <a href="editblood.php">Edit Blood</a>
                                </li>
                                <li>
                                    <a href="deleteblood.php">Remove Blood</a>

                                </li>
   <li>
                                    <a href="query.php"> Requests for Donating blood</a>

                                </li>
                            </ul>
</li>
 <li>
                            <a href=""><i class="fa fa-user-plus"></i> Patient <span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="addpatient.php"><i class="fa fa-table fa-user-plus"></i>Add Patient</a>
                                </li>
                                <li>
                                    <a href="viewpatient.php"><i class="fa fa-eye"></i>View Patient</a>
                                </li>
                                <li>
                                    <a href="editpatient.php"><i class="fa fa-edit"></i>Edit Patient</a>
                                </li>
                                <li>
                                    <a href="deletepatient.php"><i class="fa fa-user-times"></i>Delete Patient</a>

                                </li>
  
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
<li>
<a href=""><i class="fa fa-user-plus"></i> Donor <span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
<li>
                                    <a href="adddonor.php"><i class="fa fa-table fa-user-plus"></i>Add Donor</a>
                                </li>
                        <li>
                            <a href="viewdonor.php"><i class="fa fa-edit fa-eye"></i> View Donor Details</a>
                        </li>
                        <li>
                            <a href="editview.php"><i class="fa fa-edit fa-fw"></i> Edit Donor Details</a>
                        </li>
                        <li>
                            <a href="deleteview.php"><i class="fa fa-user-times"></i> Delete Donor Details</a>
                        </li></ul>
</li>
<li>
<a href=""><i class="fa fa-shopping-cart"></i> Order<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
<li>
                            <a href="vieworders.php"><i class="fa fa-eye"></i> View Order Details</a>
                        </li>
<li>
                            <a href="order.php"><i class="fa fa-table"></i> Add Order Details</a>
                        </li>
<li>
                            <a href="editorder.php"><i class="fa fa-table"></i> Edit Order</a>
                        </li>
<li>
                            <a href="deleteorder.php"><i class="fa fa-table"></i> Delete Order</a>
                        </li>
</ul>
</li>
                        <li>
                            <a href=""><i class="fa fa-bullhorn"></i> Announcements <span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="makeannouncement.php">Make Announcement</a>
                                </li>
                                <li>
                                    <a href="viewannouncement.php">View Announcement</a>
                                </li>
                                <li>
                                    <a href="editannounceform.php">Edit Announcement</a>
                                </li>
                                <li>
                                    <a href="deleteannouncement.php">Remove Announcement</a>
                                </li>
                            </ul>
                        </li>

                    
            
                        
                       
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>