# Project
## App_Data/
Holds files related to using a Database. This is better done in another class library.

## App_Start/
Holds all files ralated to start up configurations and procedures.

## Content/
Holds all non-scrit, non-font static files, like styles or images.

## fonts/
Holds all static font files.

## Scripts/
Holds all static script files.

## Global.asax
Application starting point, can be used set up configutaions.

## Site.Master
Used to define the common layout of the Web Application. Similar to a layout.jade file.

## *.aspx
The markup of the page, describing a single web page, may also contain in-line code.

## *.aspx.cs
The code behind file. This is where the code running and changing the page, which is defined in an *.aspx file, is contained.
The code behind knows about the state of the page and updates it using post-back (constant post requests to the server, containing the state of the page).

## *.aspx.designer.cs
Files auto generated by VS, used to connect \*.aspx files to \*.aspx.cs files. They mustn't be edited.

## Web.config
Contains application settings, like connection strings.