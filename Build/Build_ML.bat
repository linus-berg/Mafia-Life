@echo off
for /d %%G in (*) do MakePbo -U -P %%G ..\Release\@ML_Addons\Addons
Echo Mafia Life build completed.
pause