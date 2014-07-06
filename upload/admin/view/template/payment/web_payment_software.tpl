<?php echo $header; ?>
<div id="content">
	<div class="breadcrumb">
	<?php foreach ($breadcrumbs as $breadcrumb) { ?>
		<?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
	<?php } ?>
	</div>
	<?php if ($error_warning) { ?>
		<div class="warning"><?php echo $error_warning; ?></div>
	<?php } ?>
	<div class="box">
	<div class="heading">
		<h1><img src="view/image/payment.png" alt="" /> <?php echo $heading_title; ?></h1>
		<div class="buttons">
			<a onclick="$('#form').submit();" class="button"><?php echo $button_save; ?></a>
			<a onclick="apply();" class="button"><?php echo $button_apply; ?></a>
			<a href="<?php echo $cancel; ?>" class="button"><?php echo $button_cancel; ?></a>
		</div>
	</div>
	<div class="content">
	<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
		<table class="form">
		<tr>
			<td><span class="required">*</span> <?php echo $entry_login; ?></td>
			<td><input type="text" name="web_payment_software_merchant_name" value="<?php echo $web_payment_software_merchant_name; ?>" size="40" />
			<?php if ($error_login) { ?>
				<span class="error"><?php echo $error_login; ?></span>
			<?php } ?></td>
		</tr>
		<tr>
			<td><span class="required">*</span> <?php echo $entry_key; ?></td>
			<td><input type="text" name="web_payment_software_merchant_key" value="<?php echo $web_payment_software_merchant_key; ?>" size="40" />
			<?php if ($error_key) { ?>
				<span class="error"><?php echo $error_key; ?></span>
			<?php } ?></td>
		</tr>
		<tr>
			<td><?php echo $entry_mode; ?></td>
			<td><select name="web_payment_software_mode">
				<?php if ($web_payment_software_mode == 'live') { ?>
					<option value="live" selected="selected"><?php echo $text_live; ?></option>
				<?php } else { ?>
					<option value="live"><?php echo $text_live; ?></option>
				<?php } ?>
				<?php if ($web_payment_software_mode == 'test') { ?>
					<option value="test" selected="selected"><?php echo $text_test; ?></option>
				<?php } else { ?>
					<option value="test"><?php echo $text_test; ?></option>
				<?php } ?>
			</select></td>
		</tr>
		<tr>
			<td><?php echo $entry_method; ?></td>
			<td><select name="web_payment_software_method">
				<?php if ($web_payment_software_method == 'authorization') { ?>
					<option value="authorization" selected="selected"><?php echo $text_authorization; ?></option>
				<?php } else { ?>
					<option value="authorization"><?php echo $text_authorization; ?></option>
				<?php } ?>
				<?php if ($web_payment_software_method == 'capture') { ?>
					<option value="capture" selected="selected"><?php echo $text_capture; ?></option>
				<?php } else { ?>
					<option value="capture"><?php echo $text_capture; ?></option>
				<?php } ?>
			</select></td>
		</tr>
		<tr>
			<td><?php echo $entry_order_status; ?></td>
			<td><select name="web_payment_software_order_status_id">
			<?php foreach ($order_statuses as $order_status) { ?>
				<?php if ($order_status['order_status_id'] == $web_payment_software_order_status_id) { ?>
					<option value="<?php echo $order_status['order_status_id']; ?>" selected="selected"><?php echo $order_status['name']; ?></option>
				<?php } else { ?>
					<option value="<?php echo $order_status['order_status_id']; ?>"><?php echo $order_status['name']; ?></option>
				<?php } ?>
			<?php } ?>
			</select></td>
		</tr>
		<tr>
			<td><?php echo $entry_geo_zone; ?></td>
			<td><select name="web_payment_software_geo_zone_id">
			<option value="0"><?php echo $text_all_zones; ?></option>
			<?php foreach ($geo_zones as $geo_zone) { ?>
				<?php if ($geo_zone['geo_zone_id'] == $web_payment_software_geo_zone_id) { ?>
					<option value="<?php echo $geo_zone['geo_zone_id']; ?>" selected="selected"><?php echo $geo_zone['name']; ?></option>
				<?php } else { ?>
					<option value="<?php echo $geo_zone['geo_zone_id']; ?>"><?php echo $geo_zone['name']; ?></option>
				<?php } ?>
			<?php } ?>
			</select></td>
		</tr>
		<tr>
			<td><?php echo $entry_status; ?></td>
			<td><select name="web_payment_software_status">
				<?php if ($web_payment_software_status) { ?>
					<option value="1" selected="selected"><?php echo $text_enabled; ?></option>
					<option value="0"><?php echo $text_disabled; ?></option>
				<?php } else { ?>
					<option value="1"><?php echo $text_enabled; ?></option>
					<option value="0" selected="selected"><?php echo $text_disabled; ?></option>
				<?php } ?>
			</select></td>
		</tr>
		<tr>
			<td><?php echo $entry_total; ?></td>
			<td><input type="text" name="web_payment_software_total" value="<?php echo $web_payment_software_total; ?>" /></td>
		</tr>
		<tr>
			<td><?php echo $entry_sort_order; ?></td>
			<td><input type="text" name="web_payment_software_sort_order" value="<?php echo $web_payment_software_sort_order; ?>" size="1" /></td>
		</tr>
		</table>
	</form>
	</div>
	</div>
</div>
<?php echo $footer; ?>