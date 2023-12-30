#!/bin/bash

local__lxqt_config=$(cat <<EOF
[General]
__userfile__=true
icon_follow_color_scheme=true
icon_theme=breeze
theme=Clearlooks
tool_button_style=ToolButtonTextBesideIcon

[Palette]
base_color=#ffffff
highlight_color=#3c8ce6
highlighted_text_color=#ffffff
link_color=#0000ff
link_visited_color=#ff00ff
text_color=#000000
window_color=#efefef
window_text_color=#000000

[Qt]
font="Sans Serif,11,-1,5,50,0,0,0,0,0"
style=Fusion
EOF
)

local__panel_config=$(cat <<EOF
[General]
__userfile__=true
iconTheme=

[mainmenu]
alignment=Left
customFont=false
ownIcon=false
type=mainmenu

[panel1]
alignment=-1
animation-duration=0
background-color=@Variant(\0\0\0\x43\x1\xff\xff\xee\xee\xee\xee\xee\xee\0\0)
background-image=
desktop=0
font-color=@Variant(\0\0\0\x43\0\xff\xff\0\0\0\0\0\0\0\0)
hidable=false
hide-on-overlap=false
iconSize=24
lineCount=1
lockPanel=false
opacity=100
panelSize=40
plugins=spacer3, mainmenu, spacer2, taskbar, spacer
position=Bottom
reserve-space=true
show-delay=0
visible-margin=true
width=100
width-percent=true

[spacer]
alignment=Left
type=spacer

[spacer2]
alignment=Left
type=spacer

[spacer3]
alignment=Left
type=spacer

[taskbar]
alignment=Left
type=taskbar
EOF
)

local__qterminal_config=$(cat <<EOF
[General]
AskOnExit=true
BoldIntense=true
BookmarksFile=/home/private/.config/qterminal.org/qterminal_bookmarks.xml
BookmarksVisible=true
Borderless=false
ChangeWindowIcon=true
ChangeWindowTitle=true
CloseTabOnMiddleClick=true
ConfirmMultilinePaste=false
DisableBracketedPasteMode=false
FixedTabWidth=false
FixedTabWidthValue=500
HandleHistory=
HideTabBarWithOneTab=false
HistoryLimited=false
HistoryLimitedTo=1000
KeyboardCursorShape=2
LastWindowMaximized=false
MenuVisible=true
MotionAfterPaste=2
NoMenubarAccel=true
OpenNewTabRightToActiveTab=false
PrefDialogSize=@Size(700 555)
SavePosOnExit=true
SaveSizeOnExit=true
ScrollbarPosition=2
ShowCloseTabButton=true
TabBarless=false
TabsPosition=0
Term=xterm-256color
TerminalBackgroundImage=
TerminalBackgroundMode=0
TerminalMargin=6
TerminalTransparency=0
TerminalsPreset=0
TrimPastedTrailingNewlines=false
UseBookmarks=false
UseCWD=false
UseFontBoxDrawingChars=false
colorScheme=BlackOnWhite
emulation=default
enabledBidiSupport=true
fontFamily=DejaVu Sans Mono
fontSize=11
guiStyle=
highlightCurrentTerminal=true
showTerminalSizeHint=true
version=1.1.0

[DropMode]
Height=45
KeepOpen=false
ShortCut=F12
ShowOnStart=true
Width=70

[MainWindow]
ApplicationTransparency=0
fixedSize=@Size(600 400)
pos=@Point(475 130)
size=@Size(600 407)
state=@ByteArray()

[Sessions]
size=0
EOF
)

local__pcmanfm_config=$(cat <<EOF
[Behavior]
AutoSelectionDelay=600
BookmarkOpenMethod=current_tab
ConfirmDelete=true
ConfirmTrash=true
CtrlRightClick=false
NoUsbTrash=false
QuickExec=false
RecentFilesNumber=0
SelectNewFiles=false
SingleClick=false
SingleWindowMode=false
UseTrash=true

[Desktop]
AllSticky=false
BgColor=#b9decf
DesktopCellMargins=@Size(3 1)
DesktopIconSize=48
DesktopShortcuts=@Invalid()
FgColor=#ffffff
Font="Sans Serif,12,-1,5,50,0,0,0,0,0"
HideItems=false
LastSlide=
OpenWithDefaultFileManager=false
PerScreenWallpaper=false
ShadowColor=#000000
ShowHidden=false
SlideShowInterval=0
SortColumn=name
SortFolderFirst=true
SortHiddenLast=false
SortOrder=ascending
TransformWallpaper=false
Wallpaper=
WallpaperDialogSize=@Size(700 500)
WallpaperDialogSplitterPos=200
WallpaperDirectory=
WallpaperMode=stretch
WallpaperRandomize=false

[FolderView]
BackupAsHidden=false
BigIconSize=48
CustomColumnWidths=@Invalid()
FolderViewCellMargins=@Size(3 3)
HiddenColumns=3, 4, 6, 7
Mode=detailed
NoItemTooltip=false
ScrollPerPixel=false
ShadowHidden=true
ShowFilter=false
ShowFullNames=true
ShowHidden=false
SidePaneIconSize=24
SmallIconSize=24
SortCaseSensitive=false
SortColumn=name
SortFolderFirst=true
SortHiddenLast=false
SortOrder=ascending
ThumbnailIconSize=128

[Places]
HiddenPlaces=network:///, menu://applications/, computer:///

[Search]
searchContentCaseInsensitive=false
searchContentRegexp=true
searchNameCaseInsensitive=false
searchNameRegexp=true
searchRecursive=false
searchhHidden=false

[System]
Archiver=lxqt-archiver
FallbackIconThemeName=breeze
OnlyUserTemplates=false
SIUnit=false
SuCommand=lxqt-sudo dbus-run-session -- %s
TemplateRunApp=false
TemplateTypeOnce=false
Terminal=qterminal

[Thumbnail]
MaxExternalThumbnailFileSize=-1
MaxThumbnailFileSize=4096
ShowThumbnails=true
ThumbnailLocalFilesOnly=true

[Volume]
AutoRun=true
CloseOnUnmount=true
MountOnStartup=true
MountRemovable=true

[Window]
AlwaysShowTabs=false
FixedHeight=600
FixedWidth=800
LastWindowHeight=429
LastWindowMaximized=false
LastWindowWidth=615
PathBarButtons=true
RememberWindowSize=true
ReopenLastTabs=false
ShowMenuBar=true
ShowTabClose=true
SidePaneMode=places
SidePaneVisible=true
SplitView=false
SplitterPos=142
SwitchToNewTab=false
TabPaths=@Invalid()
EOF
)

local__menu_config=$(cat <<EOF
<!DOCTYPE Menu PUBLIC "-//freedesktop//DTD Menu 1.0//EN"
 "http://www.freedesktop.org/standards/menu-spec/1.0/menu.dtd">

<Menu>

	<Name>Applications</Name>
	<Directory>lxde-menu-applications.directory</Directory>

	<DefaultAppDirs/>
	<DefaultDirectoryDirs/>

	<DefaultMergeDirs/>

	<Menu>
		<Name>Accessories</Name>
		<Directory>lxde-utility.directory</Directory>
		<Include>
			<And>
				<Category>Utility</Category>
				<Not><Category>Accessibility</Category></Not>
				<Not><Category>System</Category></Not>
			</And>
		</Include>
	</Menu>

	<Menu>
		<Name>Universal Access</Name>
		<Directory>lxde-utility-accessibility.directory</Directory>
		<Include>
			<And>
				<Category>Accessibility</Category>
				<Not><Category>Settings</Category></Not>
			</And>
		</Include>
	</Menu>

	<Menu>
		<Name>Development</Name>
		<Directory>lxde-development.directory</Directory>
		<Include>
			<And>
				<Category>Development</Category>
			</And>
			<Filename>emacs.desktop</Filename>
		</Include>
	</Menu>

	<Menu>
		<Name>Education</Name>
		<Directory>lxde-education.directory</Directory>
		<Include>
			<And>
				<Category>Education</Category>
			</And>
		</Include>
	</Menu>

	<Menu>
		<Name>Games</Name>
		<Directory>lxde-game.directory</Directory>
		<Include>
			<And>
				<Category>Game</Category>
			</And>
		</Include>
	</Menu>

	<Menu>
		<Name>Graphics</Name>
		<Directory>lxde-graphics.directory</Directory>
		<Include>
			<And>
				<Category>Graphics</Category>
				<Not><Category>Utility</Category></Not>
			</And>
		</Include>
	</Menu>

	<Menu>
		<Name>Internet</Name>
		<Directory>lxde-network.directory</Directory>
		<Include>
			<And>
				<Category>Network</Category>
			</And>
		</Include>
	</Menu>

	<Menu>
		<Name>LXQt-About</Name>
		<Include>
		<Filename>lxqt-about.desktop</Filename>
		</Include>
	</Menu> <!-- End LXQt-About -->

	<Menu>
		<Name>Multimedia</Name>
		<Directory>lxde-audio-video.directory</Directory>
		<Include>
			<And>
				<Category>AudioVideo</Category>
			</And>
		</Include>
	</Menu>

	<Menu>
		<Name>Office</Name>
		<Directory>lxde-office.directory</Directory>
		<Include>
			<And>
				<Category>Office</Category>
			</And>
		</Include>
	</Menu>

	<Layout>
		<Merge type="files"/>
		<Merge type="menus"/>
		<Separator/>
		<Menuname show_empty="false" inline="true">LXQt-About</Menuname>
		<Separator/>
		<Menuname show_empty="false">X-Leave</Menuname>
		<Menuname show_empty="false" inline="true">Screensaver</Menuname>
	</Layout>

</Menu>
EOF
)

local__kwrite_config=$(cat <<EOF
[General]
Allow Tab Scrolling=true
Auto Hide Tabs=true
Close After Last=true
Close documents with window=true
Days Meta Infos=30
Diff Show Style=0
Elide Tab Text=false
Expand Tabs=false
Modified Notification=false
Mouse back button action=0
Mouse forward button action=0
Recent File List Entry Count=10
Restore Window Configuration=true
SDI Mode=false
Save Meta Infos=true
Show Full Path in Title=false
Show Menu Bar=true
Show Status Bar=true
Show Symbol In Navigation Bar=true
Show Tab Bar=true
Show Tabs Close Button=true
Show Url Nav Bar=false
Show welcome view for new window=true
Startup Session=manual
Stash new unsaved files=true
Stash unsaved file changes=false
Tab Double Click New Document=true
Tab Middle Click Close Document=true
Tabbar Tab Limit=0

[KTextEditor Document]
Allow End of Line Detection=true
Auto Detect Indent=true
Auto Reload If State Is In Version Control=true
Auto Save=false
Auto Save Interval=0
Auto Save On Focus Out=false
BOM=false
Backup Local=false
Backup Prefix=
Backup Remote=false
Backup Suffix=~
Camel Cursor=true
Encoding=UTF-8
End of Line=0
Indent On Backspace=true
Indent On Tab=true
Indent On Text Paste=false
Indentation Mode=normal
Indentation Width=4
Keep Extra Spaces=false
Line Length Limit=10000
Newline at End of File=true
On-The-Fly Spellcheck=false
Overwrite Mode=false
PageUp/PageDown Moves Cursor=false
Remove Spaces=1
ReplaceTabsDyn=true
Show Spaces=0
Show Tabs=true
Smart Home=true
Swap Directory=
Swap File Mode=1
Swap Sync Interval=15
Tab Handling=2
Tab Width=4
Trailing Marker Size=1
Word Wrap=false
Word Wrap Column=80

[KTextEditor Editor]
Encoding Prober Type=1
Fallback Encoding=ISO 8859-15

[KTextEditor Renderer]
Animate Bracket Matching=false
Auto Color Theme Selection=true
Color Theme=Breeze Light
Font=DejaVu Sans Mono,11,-1,5,50,0,0,0,0,0
Line Height Multiplier=1.375
Show Indentation Lines=false
Show Whole Bracket Expression=false
Word Wrap Marker=false

[KTextEditor View]
Allow Mark Menu=true
Auto Brackets=true
Auto Center Lines=0
Auto Completion=true
Auto Completion Preselect First Entry=true
Backspace Remove Composed Characters=false
Bookmark Menu Sorting=0
Bracket Match Preview=false
Default Mark Type=1
Dynamic Word Wrap=true
Dynamic Word Wrap Align Indent=80
Dynamic Word Wrap At Static Marker=false
Dynamic Word Wrap Indicators=1
Dynamic Wrap not at word boundaries=false
Enable Tab completion=false
Fold First Line=false
Folding Bar=true
Folding Preview=true
Icon Bar=false
Input Mode=0
Keyword Completion=true
Line Modification=true
Line Numbers=true
Max Clipboard History Entries=20
Maximum Search History Size=100
Mouse Paste At Cursor Position=false
Multiple Cursor Modifier=134217728
Persistent Selection=false
Scroll Bar Marks=false
Scroll Bar Mini Map All=true
Scroll Bar Mini Map Width=60
Scroll Bar MiniMap=false
Scroll Bar Preview=true
Scroll Past End=false
Search/Replace Flags=140
Shoe Line Ending Type in Statusbar=false
Show Documentation With Completion=true
Show File Encoding=true
Show Focus Frame Around Editor=true
Show Folding Icons On Hover Only=true
Show Line Count=false
Show Scrollbars=0
Show Statusbar Dictionary=true
Show Statusbar Highlighting Mode=true
Show Statusbar Input Mode=true
Show Statusbar Line Column=true
Show Statusbar Tab Settings=true
Show Word Count=false
Smart Copy Cut=true
Statusbar Line Column Compact Mode=true
Text Drag And Drop=true
User Sets Of Chars To Enclose Selection=
Vi Input Mode Steal Keys=false
Vi Relative Line Numbers=false
Word Completion=true
Word Completion Minimal Word Length=3
Word Completion Remove Tail=true

[UiSettings]
ColorScheme=Breeze Light
EOF
)

local__xscreensaver_config=$(cat <<EOF
mode: off
EOF
)

# General process
## Vars
local__container_name_lowercase="${local__container_name,,}"
##
## Setup packages
inside 1 root $local__container_name_lowercase "dnf --setopt=install_weak_deps=false install -y lxqt-about lxqt-common lxqt-config lxqt-panel lxqt-qtplugin lxqt-runner lxqt-session dejavu-sans-mono-fonts pcmanfm-qt kwrite kolourpaint qterminal"
inside 1 root $local__container_name_lowercase "mkdir -p /etc/xdg/menus"
inside 1 root $local__container_name_lowercase "echo -n '$local__menu_config' > /etc/xdg/menus/lxqt-applications.menu"
inside 1 private $local__container_name_lowercase "echo -n '$local__xscreensaver_config' > /home/private/.xscreensaver"
inside 1 private $local__container_name_lowercase "chmod 600 /home/private/.xscreensaver"
inside 1 private $local__container_name_lowercase "mkdir /home/private/.config/lxqt"
inside 1 private $local__container_name_lowercase "chmod 700 /home/private/.config/lxqt"
inside 1 private $local__container_name_lowercase "echo -n '$local__lxqt_config' > /home/private/.config/lxqt/lxqt.conf"
inside 1 private $local__container_name_lowercase "chmod 600 /home/private/.config/lxqt/lxqt.conf"
inside 1 private $local__container_name_lowercase "echo -n '$local__panel_config' > /home/private/.config/lxqt/panel.conf"
inside 1 private $local__container_name_lowercase "chmod 600 /home/private/.config/lxqt/panel.conf"
inside 1 private $local__container_name_lowercase "echo -n '$local__kwrite_config' > /home/private/.config/kwriterc"
inside 1 private $local__container_name_lowercase "chmod 600 /home/private/.config/kwriterc"
inside 1 private $local__container_name_lowercase "mkdir /home/private/.config/qterminal.org"
inside 1 private $local__container_name_lowercase "chmod 700 /home/private/.config/qterminal.org"
inside 1 private $local__container_name_lowercase "echo -n '$local__qterminal_config' > /home/private/.config/qterminal.org/qterminal.ini"
inside 1 private $local__container_name_lowercase "chmod 600 /home/private/.config/qterminal.org/qterminal.ini"
inside 1 private $local__container_name_lowercase "mkdir /home/private/.config/pcmanfm-qt"
inside 1 private $local__container_name_lowercase "chmod 700 /home/private/.config/pcmanfm-qt"
inside 1 private $local__container_name_lowercase "mkdir /home/private/.config/pcmanfm-qt/lxqt"
inside 1 private $local__container_name_lowercase "chmod 700 /home/private/.config/pcmanfm-qt/lxqt"
inside 1 private $local__container_name_lowercase "echo -n '$local__pcmanfm_config' > /home/private/.config/pcmanfm-qt/lxqt/settings.conf"
inside 1 private $local__container_name_lowercase "chmod 600 /home/private/.config/pcmanfm-qt/lxqt/settings.conf"
##
## Configure launch
inside 1 private $local__container_name_lowercase "echo 'alias vncserver=\"cpulimit --limit=\$global__project_power --lazy --include-children vncserver\"' >> /home/private/.zsh_alias"
##
info "В контейнере '$local__container_name' настроен пакет 'lxqt'"
##
## Unset local vars
unset local__container_name_lowercase
##
## Information about the packages sources (license, tutorial and other)
## https://packages.fedoraproject.org/pkgs/lxqt-about/lxqt-about/, https://packages.fedoraproject.org/pkgs/lxqt-common/lxqt-common/, https://packages.fedoraproject.org/pkgs/lxqt-config/lxqt-config/, https://packages.fedoraproject.org/pkgs/lxqt-panel/lxqt-panel/, https://packages.fedoraproject.org/pkgs/lxqt-qtplugin/lxqt-qtplugin/, https://packages.fedoraproject.org/pkgs/lxqt-runner/lxqt-runner/, https://packages.fedoraproject.org/pkgs/lxqt-session/lxqt-session/, https://packages.fedoraproject.org/pkgs/dejavu-fonts/dejavu-sans-mono-fonts/, https://packages.fedoraproject.org/pkgs/pcmanfm-qt/pcmanfm-qt/, https://packages.fedoraproject.org/pkgs/kate/kwrite/, https://packages.fedoraproject.org/pkgs/kolourpaint/kolourpaint/, https://packages.fedoraproject.org/pkgs/qterminal/qterminal/
