<?php

function get_files($dir = ".") {
  $files  = array();
  if ($handle = opendir($dir)) {
    while (false !== ($item = readdir($handle))) {
      if (is_file("$dir/$item")) {
        $files[] = "$dir/$item";
      } elseif (is_dir("$dir/$item") && ($item != ".") && ($item != "..")) {
        $files = array_merge($files, get_files("$dir/$item"));
      }
    }
    closedir($handle);
  }
  return $files;
}

function del_from_array($needle, &$array, $all = true) {
  if (!$all) {
    if (FALSE !== $key = array_search($needle, $array)) {
      unset($array[$key]);
    }
    return;
  }
  foreach (array_keys($array, $needle) as $key) {
    unset($array[$key]);
  }
}

define('VALID_RUN', true);
header('Content-type:text/html; charset=utf-8');
require_once 'bootstrap.php';
$user = cmsUser::getInstance();
if ($user->is_logged && ($user->id == 2 || $user->id == 1)) {
  //Подготавливаем список файлов
  $needle_array = [
      0 => '.git',
      1 => 'nbproject',
      2 => 'backups',
  ];
  $f            = get_files();
  $fi           = str_replace('./', '', $f);
  foreach ($needle_array as $value) {
    foreach ($fi as $ne) {
      $fil = strpos($ne, $value);
      if ($fil !== false) {
        if ($fil == 0) {
          del_from_array($ne, $fi);
        }
      }
    }
  }
//Backup файлов
  $path = './backups/' . $config->current_domain . '-' . date('Y-m-d-H-i');
  mkdir($path, 0755);
  $zip  = new ZipArchive(); //Создаём объект для работы с ZIP-архивами
  $zip->open($path . '/files' . '.zip', ZIPARCHIVE::CREATE); //Открываем (создаём) архив
  foreach ($fi as $value) {
    $file = './' . $value;
    $zip->addFile($file); //Добавляем в архив файл
  }
  $zip->close(); //Завершаем работу с архивом
  print date('j F Y') . '<br/>';
  print 'BackUp файлов создан.<br/>';
//Backup базы данных
  $filename = $path . '/db.sql';
  $cmd      = 'mysqldump -u' . $config->db_user . ' -p' . $config->db_pass . ' ' . $config->db_base . ' > ' . $filename;
  system($cmd);
  print 'BackUp базы данных создан.<br/>OK.';
} else {
  cmsCore::error404();
}

  /* $cmd = 'mysql -u'.$params['db_user'].' -p'.$params['db_pass'].' '.$params['db_base'].' < '.$filename;
    system($cmd);
    print 'БД восстановлена.'; */
