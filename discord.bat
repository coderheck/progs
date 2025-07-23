:: batch script to open discord from commandline or the run window (Win + R)
@echo off
setlocal EnableDelayedExpansion
set LookDir=%localappdata%\Discord
for /d %%d in (%LookDir%\*) do pushd %%d & (for %%z in (*.exe) do start %%z) & popd
