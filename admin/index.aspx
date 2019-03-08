<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Admin.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="admin_index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <header>
        <title>
            Admin|Home
        </title>
    </header>
    <div class="page-content-wrapper">
		<div class="page-content">
			
			<div class="row">
				<div class="col-md-12">
					<!-- BEGIN PAGE TITLE & BREADCRUMB-->
					<h3 class="page-title">
					    <asp:Label ID="Label1" runat="server" Text="Dashboard "></asp:Label>
					</h3>
					<ul class="page-breadcrumb breadcrumb">
						<li>
							<i class="fa fa-home"></i>
							<a href="index.aspx">
								<asp:Label ID="Label2" runat="server" Text="Home"></asp:Label>
							</a>
							<i class="fa fa-angle-right"></i>
						</li>
						<li>
							<a href="index.aspx">
								<asp:Label ID="Label3" runat="server" Text="Dashboard  "></asp:Label>
							</a>
						</li>
						<li class="pull-right">
							<div id="dashboard-report-range" class="dashboard-date-range tooltips" data-placement="top" data-original-title="Change dashboard date range">
								<i class="fa fa-calendar"></i>
								<span>
								</span>
								<i class="fa fa-angle-down"></i>
							</div>
						</li>
					</ul>
					<!-- END PAGE TITLE & BREADCRUMB-->
				</div>
			</div>
			<!-- END PAGE HEADER-->
			<!-- BEGIN DASHBOARD STATS -->
			<div class="row">
				<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 margin-bottom-10">
					<div class="dashboard-stat blue">
						<div class="visual">
							<i class="fa fa-briefcase fa-icon-medium"></i>
						</div>
						<div class="details">
							<div class="number">
								 $168,492.54
							</div>
							<div class="desc">
								  Sales
							</div>
						</div>
						<a class="more" href="#">
							 View more <i class="m-icon-swapright m-icon-white"></i>
						</a>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
					<div class="dashboard-stat green">
						<div class="visual">
							<i class="fa fa-shopping-cart"></i>
						</div>
						<div class="details">
							<div class="number">
								 1,127,390
							</div>
							<div class="desc">
								 Total Orders
							</div>
						</div>
						<a class="more" href="#">
							 View more <i class="m-icon-swapright m-icon-white"></i>
						</a>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
					<div class="dashboard-stat yellow">
						<div class="visual">
							<i class="fa fa-group fa-icon-medium"></i>
						</div>
						<div class="details">
							<div class="number">
								 $670.54
							</div>
							<div class="desc">
								 Average Orders
							</div>
						</div>
						<a class="more" href="#">
							 View more <i class="m-icon-swapright m-icon-white"></i>
						</a>
					</div>
				</div>
			</div>
			<!-- END DASHBOARD STATS -->
			<div class="clearfix">
			</div>
			<div class="row">
				<div class="col-md-6 col-sm-6">
					<!-- BEGIN PORTLET-->
					<div class="portlet solid bordered light-grey">
						<div class="portlet-title">
							<div class="caption">
								<i class="fa fa-bar-chart-o"></i>Site Visits
							</div>
							<div class="tools">
								<div class="btn-group" data-toggle="buttons">
									<label class="btn default btn-sm active">
									<input type="radio" name="options" class="toggle" id="option1">Users </label>
									<label class="btn default btn-sm">
									<input type="radio" name="options" class="toggle" id="option2">Feedbacks </label>
								</div>
							</div>
						</div>
						<div class="portlet-body">
							<div id="site_statistics_loading">
								<img src="assets/img/loading.gif" alt="loading"/>
							</div>
							<div id="site_statistics_content" class="display-none">
								<div id="site_statistics" class="chart">
								</div>
							</div>
						</div>
					</div>
					<!-- END PORTLET-->
				</div>
				<div class="col-md-6 col-sm-6">
					<!-- BEGIN PORTLET-->
					<div class="portlet solid light-grey bordered">
						<div class="portlet-title">
							<div class="caption">
								<i class="fa fa-bullhorn"></i>Activities
							</div>
							<div class="tools">
								<div class="btn-group pull-right" data-toggle="buttons">
									<a href="" class="btn blue btn-sm active">
										 Users
									</a>
									<a href="" class="btn blue btn-sm">
										 Orders
									</a>
								</div>
							</div>
						</div>
						<div class="portlet-body">
							<div id="site_activities_loading">
								<img src="assets/img/loading.gif" alt="loading"/>
							</div>
							<div id="site_activities_content" class="display-none">
								<div id="site_activities" style="height: 100px;">
								</div>
							</div>
						</div>
					</div>
					<!-- END PORTLET-->
					<!-- BEGIN PORTLET-->
					<div class="portlet solid bordered light-grey">
						<div class="portlet-title">
							<div class="caption">
								<i class="fa fa-signal"></i>Server Load
							</div>
							<div class="tools">
								<div class="btn-group pull-right" data-toggle="buttons">
									<a href="" class="btn red btn-sm active">
										 Database
									</a>
									<a href="" class="btn red btn-sm">
										 Web
									</a>
								</div>
							</div>
						</div>
						<div class="portlet-body">
							<div id="load_statistics_loading">
								<img src="assets/img/loading.gif" alt="loading"/>
							</div>
							<div id="load_statistics_content" class="display-none">
								<div id="load_statistics" style="height: 108px;">
								</div>
							</div>
						</div>
					</div>

					<!-- END PORTLET-->
				</div>
			</div>
            <div class="col-md-6">
					<!-- Begin: life time stats -->
					<div class="portlet box yellow">
						<div class="portlet-title">
							<div class="caption">
								<i class="fa fa-thumb-tack"></i>Overview
							</div>
						</div>
						<div class="portlet-body">
							<ul class="nav nav-tabs">
								<li class="active">
									<a href="#overview_1" data-toggle="tab">
										 Top Selling
									</a>
								</li>
								<li>
									<a href="#overview_2" data-toggle="tab">
										 Most Viewed
									</a>
								</li>
								
								<li class="dropdown">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown">
										 Orders <i class="fa fa-angle-down"></i>
									</a>
									<ul class="dropdown-menu" role="menu">
										<li>
											<a href="#overview_4" tabindex="-1" data-toggle="tab">
												 Latest 10 Orders
											</a>
										</li>
										<li>
											<a href="#overview_4" tabindex="-1" data-toggle="tab">
												 Pending Orders
											</a>
										</li>
										<li>
											<a href="#overview_4" tabindex="-1" data-toggle="tab">
												 Completed Orders
											</a>
										</li>
										<li>
											<a href="#overview_4" tabindex="-1" data-toggle="tab">
												 Rejected Orders
											</a>
										</li>
									</ul>
								</li>
							</ul>
							<div class="tab-content">
								<div class="tab-pane active" id="overview_1">
									<div class="table-responsive">
										<table class="table table-striped table-hover table-bordered">
										<thead>
										<tr>
											<th>
												 Product Name
											</th>
											<th>
												 Price
											</th>
											<th>
												 Sold
											</th>
											<th>
											</th>
										</tr>
										</thead>
										<tbody>
										<tr>
											<td>
												<a href="#">
													 Apple iPhone 4s - 16GB - Black
												</a>
											</td>
											<td>
												 $625.50
											</td>
											<td>
												 809
											</td>
											<td>
												<a href="#" class="btn default btn-xs green-stripe">
													 View
												</a>
											</td>
										</tr>
										<tr>
											<td>
												<a href="#">
													 Samsung Galaxy S III SGH-I747 - 16GB
												</a>
											</td>
											<td>
												 $915.50
											</td>
											<td>
												 6709
											</td>
											<td>
												<a href="#" class="btn default btn-xs green-stripe">
													 View
												</a>
											</td>
										</tr>
										<tr>
											<td>
												<a href="#">
													 Motorola Droid 4 XT894 - 16GB - Black
												</a>
											</td>
											<td>
												 $878.50
											</td>
											<td>
												 784
											</td>
											<td>
												<a href="#" class="btn default btn-xs green-stripe">
													 View
												</a>
											</td>
										</tr>
										<tr>
											<td>
												<a href="#">
													 Regatta Luca 3 in 1 Jacket
												</a>
											</td>
											<td>
												 $25.50
											</td>
											<td>
												 1245
											</td>
											<td>
												<a href="#" class="btn default btn-xs green-stripe">
													 View
												</a>
											</td>
										</tr>
										
										
										</tbody>
										</table>
									</div>
								</div>
								<div class="tab-pane" id="overview_2">
									<div class="table-responsive">
										<table class="table table-striped table-hover table-bordered">
										<thead>
										<tr>
											<th>
												 Product Name
											</th>
											<th>
												 Price
											</th>
											<th>
												 Views
											</th>
											<th>
											</th>
										</tr>
										</thead>
										<tbody>
										<tr>
											<td>
												<a href="#">
													 Metronic - Responsive Admin + Frontend Theme
												</a>
											</td>
											<td>
												 $20.00
											</td>
											<td>
												 11190
											</td>
											<td>
												<a href="#" class="btn default btn-xs green-stripe">
													 View
												</a>
											</td>
										</tr>
										<tr>
											<td>
												<a href="#">
													 Regatta Luca 3 in 1 Jacket
												</a>
											</td>
											<td>
												 $25.50
											</td>
											<td>
												 1245
											</td>
											<td>
												<a href="#" class="btn default btn-xs green-stripe">
													 View
												</a>
											</td>
										</tr>
										<tr>
											<td>
												<a href="#">
													 Apple iPhone 4s - 16GB - Black
												</a>
											</td>
											<td>
												 $625.50
											</td>
											<td>
												 809
											</td>
											<td>
												<a href="#" class="btn default btn-xs green-stripe">
													 View
												</a>
											</td>
										</tr>
										<tr>
											<td>
												<a href="#">
													 Samsung Galaxy S III SGH-I747 - 16GB
												</a>
											</td>
											<td>
												 $915.50
											</td>
											<td>
												 6709
											</td>
											<td>
												<a href="#" class="btn default btn-xs green-stripe">
													 View
												</a>
											</td>
										</tr>
										<tr>
											<td>
												<a href="#">
													 Motorola Droid 4 XT894 - 16GB - Black
												</a>
											</td>
											<td>
												 $878.50
											</td>
											<td>
												 784
											</td>
											<td>
												<a href="#" class="btn default btn-xs green-stripe">
													 View
												</a>
											</td>
										</tr>
										<tr>
											<td>
												<a href="#">
													 Samsung Galaxy Note 3
												</a>
											</td>
											<td>
												 $925.50
											</td>
											<td>
												 21245
											</td>
											<td>
												<a href="#" class="btn default btn-xs green-stripe">
													 View
												</a>
											</td>
										</tr>
										<tr>
											<td>
												<a href="#">
													 Inoval Digital Pen
												</a>
											</td>
											<td>
												 $125.50
											</td>
											<td>
												 1245
											</td>
											<td>
												<a href="#" class="btn default btn-xs green-stripe">
													 View
												</a>
											</td>
										</tr>
										</tbody>
										</table>
									</div>
								</div>
								<div class="tab-pane" id="overview_3">
									<div class="table-responsive">
										<table class="table table-striped table-hover table-bordered">
										<thead>
										<tr>
											<th>
												 Customer Name
											</th>
											<th>
												 Total Orders
											</th>
											<th>
												 Total Amount
											</th>
											<th>
											</th>
										</tr>
										</thead>
										<tbody>
										<tr>
											<td>
												<a href="#">
													 David Wilson
												</a>
											</td>
											<td>
												 3
											</td>
											<td>
												 $625.50
											</td>
											<td>
												<a href="#" class="btn default btn-xs green-stripe">
													 View
												</a>
											</td>
										</tr>
										<tr>
											<td>
												<a href="#">
													 Amanda Nilson
												</a>
											</td>
											<td>
												 4
											</td>
											<td>
												 $12625.50
											</td>
											<td>
												<a href="#" class="btn default btn-xs green-stripe">
													 View
												</a>
											</td>
										</tr>
										<tr>
											<td>
												<a href="#">
													 Jhon Doe
												</a>
											</td>
											<td>
												 2
											</td>
											<td>
												 $125.00
											</td>
											<td>
												<a href="#" class="btn default btn-xs green-stripe">
													 View
												</a>
											</td>
										</tr>
										<tr>
											<td>
												<a href="#">
													 Bill Chang
												</a>
											</td>
											<td>
												 45
											</td>
											<td>
												 $12,125.70
											</td>
											<td>
												<a href="#" class="btn default btn-xs green-stripe">
													 View
												</a>
											</td>
										</tr>
										<tr>
											<td>
												<a href="#">
													 Paul Strong
												</a>
											</td>
											<td>
												 1
											</td>
											<td>
												 $890.85
											</td>
											<td>
												<a href="#" class="btn default btn-xs green-stripe">
													 View
												</a>
											</td>
										</tr>
										<tr>
											<td>
												<a href="#">
													 Jane Hilson
												</a>
											</td>
											<td>
												 5
											</td>
											<td>
												 $239.85
											</td>
											<td>
												<a href="#" class="btn default btn-xs green-stripe">
													 View
												</a>
											</td>
										</tr>
										<tr>
											<td>
												<a href="#">
													 Patrick Walker
												</a>
											</td>
											<td>
												 2
											</td>
											<td>
												 $1239.85
											</td>
											<td>
												<a href="#" class="btn default btn-xs green-stripe">
													 View
												</a>
											</td>
										</tr>
										</tbody>
										</table>
									</div>
								</div>
								<div class="tab-pane" id="overview_4">
									<div class="table-responsive">
										<table class="table table-striped table-hover table-bordered">
										<thead>
										<tr>
											<th>
												 Customer Name
											</th>
											<th>
												 Date
											</th>
											<th>
												 Amount
											</th>
											<th>
												 Status
											</th>
											<th>
											</th>
										</tr>
										</thead>
										<tbody>
										<tr>
											<td>
												<a href="#">
													 David Wilson
												</a>
											</td>
											<td>
												 3 Jan, 2013
											</td>
											<td>
												 $625.50
											</td>
											<td>
												<span class="label label-sm label-warning">
													 Pending
												</span>
											</td>
											<td>
												<a href="#" class="btn default btn-xs green-stripe">
													 View
												</a>
											</td>
										</tr>
										<tr>
											<td>
												<a href="#">
													 Amanda Nilson
												</a>
											</td>
											<td>
												 13 Feb, 2013
											</td>
											<td>
												 $12625.50
											</td>
											<td>
												<span class="label label-sm label-warning">
													 Pending
												</span>
											</td>
											<td>
												<a href="#" class="btn default btn-xs green-stripe">
													 View
												</a>
											</td>
										</tr>
										<tr>
											<td>
												<a href="#">
													 Jhon Doe
												</a>
											</td>
											<td>
												 20 Mar, 2013
											</td>
											<td>
												 $125.00
											</td>
											<td>
												<span class="label label-sm label-success">
													 Success
												</span>
											</td>
											<td>
												<a href="#" class="btn default btn-xs green-stripe">
													 View
												</a>
											</td>
										</tr>
										<tr>
											<td>
												<a href="#">
													 Bill Chang
												</a>
											</td>
											<td>
												 29 May, 2013
											</td>
											<td>
												 $12,125.70
											</td>
											<td>
												<span class="label label-sm label-info">
													 In Process
												</span>
											</td>
											<td>
												<a href="#" class="btn default btn-xs green-stripe">
													 View
												</a>
											</td>
										</tr>
										<tr>
											<td>
												<a href="#">
													 Paul Strong
												</a>
											</td>
											<td>
												 1 Jun, 2013
											</td>
											<td>
												 $890.85
											</td>
											<td>
												<span class="label label-sm label-success">
													 Success
												</span>
											</td>
											<td>
												<a href="#" class="btn default btn-xs green-stripe">
													 View
												</a>
											</td>
										</tr>
										<tr>
											<td>
												<a href="#">
													 Jane Hilson
												</a>
											</td>
											<td>
												 5 Aug, 2013
											</td>
											<td>
												 $239.85
											</td>
											<td>
												<span class="label label-sm label-danger">
													 Canceled
												</span>
											</td>
											<td>
												<a href="#" class="btn default btn-xs green-stripe">
													 View
												</a>
											</td>
										</tr>
										<tr>
											<td>
												<a href="#">
													 Patrick Walker
												</a>
											</td>
											<td>
												 6 Aug, 2013
											</td>
											<td>
												 $1239.85
											</td>
											<td>
												<span class="label label-sm label-success">
													 Success
												</span>
											</td>
											<td>
												<a href="#" class="btn default btn-xs green-stripe">
													 View
												</a>
											</td>
										</tr>
										</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- End: life time stats -->
				</div>
			<div class="clearfix">
			</div>
			<div class="row ">
				<div class="col-md-6 col-sm-6">
				</div>
			</div>
		</div>
	</div>
	<!-- END CONTENT -->
</div>
</asp:Content>

