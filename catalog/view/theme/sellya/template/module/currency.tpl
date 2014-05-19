<?php if (count($currencies) > 1) { ?>
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
  <div id="currency" class="dropdown_l"><div class="arrow">&nbsp;</div><div class="selected_l"><?php echo $text_currency; ?>: <?php echo $this->currency->getCode(); ?></div>
    <ul class="options_l"><?php foreach ($currencies as $currency) { ?>
      <li>
      <a title="<?php echo $currency['title']; ?>" onclick="$('input[name=\'currency_code\']').attr('value', '<?php echo $currency['code']; ?>').submit(); $(this).parent().parent().parent().parent().submit();">      <?php echo $currency['title']; ?></a>
      </li><?php } ?>
    </ul>
    <input type="hidden" name="currency_code" value="" />
    <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
  </div>
</form>

<?php } ?>
