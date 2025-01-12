<div class="col-sm content" role="main">
	<div class="row">
		<div class="col-sm">
			$Content
		</div>
		<div class="col-sm-6 col-md-4 col-lg-3">
			<% if $Address || $PhoneNumber || $Email %>
				<p>
					<strong>Contact Info:</strong>
				</p>
				<% if $Address %>
					<address>
						$Address
					</address>
				<% end_if %>
				<% if $PhoneNumber || $Email %>
					<p>
						<% if $PhoneNumber %>
							<a href="{$PhoneLink}">
								<i class="fas fa-phone"></i>
								{$PhoneNumber}
							</a><br/>
						<% end_if %>
						<% if $MobileNumber %>
							<a href="{$MobileLink}">
								<i class="fas fa-mobile"></i>
								{$MobileNumber}
							</a><br/>
						<% end_if %>
						<% if $Email %>
							<a href="mailto:{$Email}">
								<i class="fas fa-at"></i>
								{$Email}
							</a>
						<% end_if %>
					</p>
				<% end_if %>
			<% end_if %>
		</div>
	</div>
	$Form
	$PageComments
</div>
<% if $Menu(2) || $SideBarView.Widgets %>
	<% include SideBar %>
<% end_if %>
