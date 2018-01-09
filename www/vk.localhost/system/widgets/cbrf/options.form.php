<?php

class formWidgetCbrfOptions extends cmsForm {

  public function init() {
    $res = array(
      array(
        'type'   => 'fieldset',
        'title'  => LANG_OPTIONS,
        'childs' => array(
          new fieldNumber('options:cache_interval', array(
            'title'   => LANG_CBRF_CACHE_INT,
            'default' => '240',
            'units'   => 'мин',
            'rules'   => array(
              array('digits'),
              array('min', 10),
              array('max', 1440)
            )
              )),
          new fieldCheckbox('options:view_date', array(
            'title' => LANG_CBRF_VIEW_DATE
              )),
          new fieldCheckbox('options:view_nominal', array(
            'title' => LANG_CBRF_VIEW_NOMINAL
              )),
        )
      ),
      array(
        'type'   => 'fieldset',
        'title'  => LANG_CBRF_VALUTES,
        'childs' => $this->valutes(),
    ));
    return $res;
  }

  private function valutes() {
    $model  = new cmsModel();
    $result = $model->getItemById('cbrf', 1, function($item, $model) {
      $item['currency'] = $model->yamlToArray($item['currency']);
      return $item;
    });
    foreach ($result as $massiv) {
      foreach ($massiv as $key => $val) {
        $a[$key] = new fieldCheckbox('options:' . $val['charcode'], array(
          'title' => $val['charcode'] . ' - ' . $val['nominal'] . ' ' . $val['name']
        ));
        //print $val['charcode'];
        //if($this->options[$key]){$result['res'][$key] = [$val];}
      }
    }
    return $a;
  }

}
