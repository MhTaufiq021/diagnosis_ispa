<?php
$koneksi = mysqli_connect("localhost", "satu9351_iseplutpi", "satu9351_iseplutpi", "satu9351_diagnosis_ispa");

// Check connection
if (mysqli_connect_errno()) {
  echo "Koneksi database gagal : " . mysqli_connect_error();
}
