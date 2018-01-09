<?php
//dump($ERROR);
print '<table class="valutes">';
foreach ($res as $key => $val) {
  $val[0]['value'] = str_replace(',', '.', $val[0]['value']);
  $val[0]['value']  = strval(round((float)$val[0]['value'], 2));
  $val[0]['value'] = number_format($val[0]['value'], 2, '.', '');
  print '<tr><td class="valutesname"><span class="tooltip">' . nominal($val, $NOM) . ' ' . $val[0]['charcode'] . '<span>' . $val[0]['nominal'] . ' ' . $val[0]['name'] . '</span></span></td><td class="valutesname">' . $val[0]['value'] . ' руб.</td></tr>';
}
print '</table>';
if ($ERROR == 2) {
  print '<div class="valuteerr">' . $OLD . '</div>';
}
if ($ERROR == 1) {
  print '<div class="valuteerr">' . $NOTDATA . '</div>';
}

function nominal($val, $nom) {
  //return '';
  if ($nom == true) {
    return $val[0]['nominal'];
  }
  else {
    return '';
  }
}
