# Script per la conservazione presso l'agenzia delle entrate

Attraverso questo semplice script vengono creati dei file zip contentente all'interno 10 fatture per poter essere inviati all'agenzia delle entrate per la conservazione
E' necessario avere la WindowsPowerShell installata nel PC. 
https://docs.microsoft.com/it-it/powershell/scripting/install/installing-powershell-core-on-windows?view=powershell-7.1

Apri la powershell dal menu Apri (nel mio PC ho la versione 1.0)
%SystemRoot%\system32\WindowsPowerShell\v1.0\powershell.exe -ExecutionPolicy RemoteSigned

Copia le fatture (in formato xml o p7m) nella cartella "fatture"

Esegui lo script
.\crea_zip_10.ps1 -partitaIVA IT01234567890 -cartella ./fatture
