<?php echo $header; ?>
<div id="content">
  <div class="breadcrumb">
  <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
  <?php } ?>
  </div>
  <?php if ($success) { ?>
    <div class="success"><?php echo $success; ?></div>
  <?php } ?>
  <?php if ($error) { ?>
    <div class="warning"><?php echo $error; ?></div>
  <?php } ?>
  <div class="box">
    <div class="heading">
      <h1><img src="view/image/feed.png" alt="" /> <?php echo $heading_title; ?></h1>
      <div class="buttons">
        <a onclick="location = '<?php echo $close; ?>';" class="button-cancel"><?php echo $button_close; ?></a>
      </div>
    </div>
    <div class="content-body">
      <table class="list">
        <thead>
          <tr>
            <td class="left"><?php echo $column_name; ?></td>
            <td class="left"><?php echo $column_status; ?></td>
            <td class="right"><?php echo $column_action; ?></td>
          </tr>
        </thead>
        <tbody>
        <?php if ($extensions) { ?>
          <?php foreach ($extensions as $extension) { ?>
          <tr>
            <td class="left"><?php echo $extension['name']; ?></td>
            <?php if ($extension['status'] == 1) { ?>
              <td class="center"><span class="enabled"><?php echo $text_enabled; ?></span></td>
            <?php } else { ?>
              <td class="center"><span class="disabled"><?php echo $text_disabled; ?></span></td>
            <?php } ?>
            <td class="right"><?php foreach ($extension['action'] as $action) { ?>
              <?php if ($action['type'] == 'uninstall') { ?>
                <a class="button-form-<?php echo $action['type']; ?>" data-title="<?php echo $action['text']; ?>" href="<?php echo $action['href']; ?>"><?php echo $action['text']; ?></a>
              <?php } else { ?>
                <a href="<?php echo $action['href']; ?>" class="button-form-<?php echo $action['type']; ?>"><?php echo $action['text']; ?></a>
              <?php } ?>
            <?php } ?></td>
          </tr>
          <?php } ?>
        <?php } else { ?>
          <tr>
            <td class="center" colspan="3"><?php echo $text_no_results; ?></td>
          </tr>
        <?php } ?>
        </tbody>
      </table>
    </div>
  </div>
</div>

<script type="text/javascript"><!--
$('a.button-form-uninstall').confirm({
	content: '',
	icon: 'fa fa-question-circle',
	theme: 'light',
	useBootstrap: false,
	boxWidth: 580,
	animation: 'zoom',
	closeAnimation: 'scale',
	opacity: 0.1
});
$('a.button-form-uninstall').on('click', function() {
	$.dialog({
		title: '<?php echo $text_confirm_uninstall; ?>',
		content: '<?php echo $text_confirm; ?>',
		icon: 'fa fa-exclamation-circle',
		theme: 'light',
		useBootstrap: false,
		boxWidth: 580,
		animation: 'zoom',
		closeAnimation: 'scale',
		opacity: 0.1,
		buttons: {
			confirm: function() {
				location.href = this.$target.attr('href');
			},
			cancel: function() { }
		}
	});
});
//--></script>

<?php echo $footer; ?>