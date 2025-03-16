# Monitoring Script: Monitoreo y Reinicio Automático de Servicios en PowerShell

## 📜 Descripción

**Monitoring.ps1** es un script de PowerShell diseñado para monitorear el estado de un servicio específico en tu máquina Windows. Si el servicio se detiene, el script no solo lo reinicia automáticamente, sino que también registra la caída del servicio en un archivo de log, brindándote un control total sobre el estado de tus servicios esenciales.

Este script es perfecto para asegurarte de que los servicios críticos de tu sistema siempre estén activos y funcionando sin interrupciones.

## 🛠 Requisitos

- **PowerShell 5.1 o superior**.
- **Permisos de administrador** para gestionar servicios.
- Conexión a Internet (si deseas realizar notificaciones o alertas externas).

## 🚀 Uso

Para ejecutar el script, simplemente pasa el nombre del servicio que deseas monitorear como argumento.

### Ejemplo:

```powershell
.\monitoring.ps1 <nombre_servicio>
