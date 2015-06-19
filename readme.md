# WDI InstallFest Script

This repo holds the scripts used in the installation, setup, and creation of 
"dotfiles" (ie, application settings) for the development environments of 
students in General Assembly's Web Development Immersive program.

## How do I run an Installfest Script?

The script comes in three basic flavors: the default full install for Mac OS, 
the default full install for Ubuntu Linux, and smaller scripts that ensure a 
current and standardized install of Ruby is being used.

**Warning**: in their default form, these scripts are very invasive, 
overwriting settings and versions for applications and tools used in the 
course. If you have dearly loved dotfiles, ensure that you back them up before 
running the script.

## Step 1

##### For Mac OS

Paste this script into a Terminal prompt:

```
bash <(curl -sL https://raw.githubusercontent.com/ga-instructors/installfest_script/master/builds/mac)
```

##### For Ubuntu Linux

Paste this script into a Terminal prompt:

```
bash <(wget -qO- https://raw.githubusercontent.com/ga-instructors/installfest_script/master/builds/ubuntu)
```

##### Run the script

Follow the instructions. It is helpful to increase the size of the terminal
while running the script.

## Step 2

##### Reload the terminal screen

The new environment **will not work** with the current, open, terminal. Use 
`⌘+N` in Mac OS, or `Shift+Ctrl+N` in Ubuntu, to open a new terminal
window.

Make sure that there are no errors (on the load page)!

## Step 3

##### Final Set-up

1. **Spectacle** (for Macs): open Spectacle using Spotlight, by pressing `⌘-Space`
   and typing `spec`, and then pressing `Return`. It will direct you to change
   your Accessibility settings to allow it to control windowing.
2. **Terminal**: open Terminal using Spotlight (`⌘-Space`, and type `term`),
   and then open the Preferences pane (`⌘-,`), choose Profiles, and then import
   the profile "Tomorrow Night.terminal" from the Desktop by clicking on the
   gear symbol at the bottom of the list of themes and choosing `Import...`.
3. **Sublime Text**: open the terminal as above, and then open Sublime Text
   by typing `subl .` Make sure that Sublime Text opens.
4. **Slack**: ensure that you can open Slack (`⌘-Space`, and type `sla`) and 
   communicate with your classmates!
