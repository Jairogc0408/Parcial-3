<?php
ob_start(); // Evitar salidas antes del PDF

require('fpdf/fpdf.php');

// Datos estáticos de los productos
$productos = [
    ['id' => 1, 'producto' => 'Cuaderno Profesional', 'categoria' => 'Escolar', 'precio' => 45.00, 'cantidad' => 50],
    ['id' => 2, 'producto' => 'Lápiz HB', 'categoria' => 'Útiles', 'precio' => 5.00, 'cantidad' => 200],
    ['id' => 3, 'producto' => 'Borrador', 'categoria' => 'Útiles', 'precio' => 8.00, 'cantidad' => 100],
    ['id' => 4, 'producto' => 'Marcador Permanente', 'categoria' => 'Oficina', 'precio' => 20.00, 'cantidad' => 30],
    ['id' => 5, 'producto' => 'Regla 30 cm', 'categoria' => 'Escolar', 'precio' => 12.50, 'cantidad' => 40],
];

// Iniciar FPDF
$pdf = new FPDF();
$pdf->AddPage();
$pdf->SetFont('Arial', 'B', 14);

// Título del PDF
$pdf->Cell(190, 10, 'Papeleria CETIS - Inventario', 0, 1, 'C');
$pdf->Ln(5);

// Encabezados de la tabla
$pdf->SetFont('Arial', 'B', 12);
$pdf->Cell(10, 10, 'ID', 1);
$pdf->Cell(70, 10, 'Producto', 1);
$pdf->Cell(50, 10, 'Categoria', 1);
$pdf->Cell(30, 10, 'Precio', 1);
$pdf->Cell(30, 10, 'Cantidad', 1);
$pdf->Ln();

// Agregar datos de los productos a la tabla
$pdf->SetFont('Arial', '', 12);

if (!empty($productos)) {
    foreach ($productos as $producto) {
        $pdf->Cell(10, 10, $producto['id'], 1);
        $pdf->Cell(70, 10, $producto['producto'], 1);
        $pdf->Cell(50, 10, $producto['categoria'], 1);
        $pdf->Cell(30, 10, '$' . number_format($producto['precio'], 2, '.', ''), 1);
        $pdf->Cell(30, 10, $producto['cantidad'], 1);
        $pdf->Ln();
    }
} else {
    $pdf->Cell(190, 10, 'No hay datos disponibles', 1, 0, 'C');
}

ob_end_clean(); // Limpia el búfer antes de generar el PDF
$pdf->Output();
?>
