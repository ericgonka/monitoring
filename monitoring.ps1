if ($args.Length -lt 1) {
    echo "Uso: monitorig.ps1 <nombre_servicio>"
    return
}

$service = $args[0]
$ruta = "log.txt"

while ($true) {
   
    # VERIFICO EL ESTADO DEL SERVICO (RUNNING|STOPPED)
    $estado = Get-Service -Name $service

    if ($estado.Status -ne 'Running') {
        echo "[!x!] SERVICIO PARADO [!X!]"

        # OBTENER LA FECHA PARA EL LOG.TXT
        $fecha = Get-Date

        # REGISTRAR LA CAÍDA DEL SEVICIO 
        $mensaje = "$service ha caído en la fecha $fecha"
        Add-Content -Path $ruta -Value $mensaje

        # REINICIAR E INTENTAR REABRIR EL SERVICIO PARADO
        Start-Service -Name $service
    }

    # PAUSA 
    Start-Sleep -Seconds 5
}
