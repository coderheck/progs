@echo off
setlocal EnableDelayedExpansion
set LookDir=%localappdata%\Discord
for /d %%d in (%LookDir%\*) do pushd %%d & (for %%z in (*.exe) do start %%z) & popd