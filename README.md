# Script per la conservazione presso l'agenzia delle entrate

Attraverso questo semplice script vengono creati dei file zip contentente all'interno 10 fatture per poter essere inviati all'agenzia delle entrate per la conservazione
E' necessario avere la WindowsPowerShell installata nel PC. 
https://docs.microsoft.com/it-it/powershell/scripting/install/installing-powershell-core-on-windows?view=powershell-7.1

## Passo nr.1
Crea la cartella vuota C:\fatturezip

## Passo nr.2
All'interno della cartella appena creata, crea una sottocartella chiamata  "fatture" 

## Passo nr.3 
Scarica il file "crea_zip_10.ps1" e salvalo nella cartella C:\fatturezip
Avrai una situazione come raffigurata sotto

![image](https://user-images.githubusercontent.com/2527138/109398789-38561c00-793f-11eb-8d08-02db408395ca.png)

## Passo nr.4 
Dal menu Esegui digita: **powershell.exe -ExecutionPolicy RemoteSigned** e premi INVIO

![image](https://user-images.githubusercontent.com/2527138/109398707-aa7a3100-793e-11eb-90e2-2e6cbf3f7eb8.png)

![image](https://user-images.githubusercontent.com/2527138/109398721-c67dd280-793e-11eb-9a2b-844efa10084f.png)

## Passo nr.5
All'interno della power shell digita: **cd C:\fatturezip** e premi INVIO
![image](https://user-images.githubusercontent.com/2527138/109398742-f6c57100-793e-11eb-81b2-c236c84b5462.png)

## Passo nr.6
Copia le fatture (in formato xml o p7m) nella cartella "fatture"

## Passo nr.7
scrivi nella schermata: **.\crea_zip_10.ps1 -partitaIVA IT01234567890 -cartella ./fatture** e premi invio
![image](https://user-images.githubusercontent.com/2527138/109398812-689dba80-793f-11eb-85d7-49290556aa91.png)

## Passo nr.8
Troverai nella cartella **C:\fatturezip** tanti file zip chiamati **IT01234567890_00001**, **IT01234567890_00002**, ecc. ognuno con all'interno 10 fatture. Questi file possono essere inviati in conservazione
