<?php
ob_start(); // Evitar salidas antes del PDF

require('fpdf/fpdf.php');

// Iniciar FPDF
$pdf = new FPDF();
$pdf->AddPage();
$pdf->SetFont('Arial', 'B', 14);

// Título del PDF con separación de líneas
$pdf->SetFont('Arial', 'B', 14); // Estilo del título
$pdf->MultiCell(190, 10, "Centro de Estudios Tecnologicos Industrial y de Servicios No. 84\n John Jairo Gamino Canseco", 0, 'C');
$pdf->Ln(5);



// Agregar datos de los productos a la tabla
$pdf->SetFont('Arial', '', 12);


ob_end_clean(); // Limpia el búfer antes de generar el PDF
$pdf->Output();
?>
