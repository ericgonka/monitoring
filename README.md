# Monitor de Servicios - PowerShell Script

## Descripción

Este script de PowerShell permite monitorear el estado de un servicio en una máquina con Windows. Su función principal es verificar periódicamente si el servicio está en ejecución. En caso de que el servicio se detenga, el script lo reinicia automáticamente y registra el evento en un archivo de log.

## Requisitos

- PowerShell 5.1 o superior.
- Permisos de administrador para poder gestionar servicios.
  
## Uso

1. **Clona o descarga este archivo de script (`monitoring.ps1`) en tu equipo.**
2. **Ejecuta el script desde PowerShell pasando como argumento el nombre del servicio que deseas monitorear.**

### Ejemplo de ejecución:

```powershell
.\monitoring.ps1 <nombre_servicio>
