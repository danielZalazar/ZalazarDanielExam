# Zalazar Daniel
for ($i = 1; $i -le 3; $i++) {
    
    Write-Host ""

    Write-Host "Verificacion numero: $i"

    Write-Host "Fecha y hora:"
    Get-Date -Format "dd/MM/yyyy HH:mm:ss"

    Write-Host "Adaptadores de red activos:"
    Get-NetAdapter | Where-Object {$_.Status -eq "Up"}

    if ($i % 2 -eq 0) {
        Write-Host "La iteracion $i es PAR."
    }
    else {
        Write-Host "La iteracion $i es IMPAR."
    }

    Write-Host ""
}

Write-Host "Monitoreo de red concludo con exito."
