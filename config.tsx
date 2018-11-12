
import * as React from "react"
import * as Oni from "oni-api"

export const activate = (oni: Oni.Plugin.Api) => {
    console.log("config activated");

    // Input
    //
    // Add input bindings here:
    //
    oni.input.bind("<c-enter>", () => console.log("Control+Enter was pressed"))

    //
    // Or remove the default bindings here by uncommenting the below line:
    //
    // oni.input.unbind("<c-p>")

}

export const deactivate = (oni: Oni.Plugin.Api) => {
    console.log("config deactivated")
}

export const configuration = {
    activate,
    "oni.hideMenu"             : "hidden", // Hide top bar menu
    "oni.loadInitVim"          : true, // Load user's init.vim
    "oni.useDefaultConfig"     : false, // Do not load Oni's init.vim
    "ui.colorscheme"           : "solarized8_dark", // Load init.vim colorscheme, remove this line if wants Oni's default
    "autoClosingPairs.enabled" : true, // disable autoclosing pairs
    "commandline.mode"         : true, // Do not override commandline UI
    "wildmenu.mode"            : false, // Do not override wildmenu UI,
    // "tabs.mode"                : "native", // Use vim's tabline, need completely quit Oni and restart a few times
    "statusbar.enabled"        : false, // use vim's default statusline
    "sidebar.enabled"          : true, // sidebar ui is gone
    "sidebar.default.open"     : false, // the side bar collapse 
    "learning.enabled"         : false, // Turn off learning pane
    "achievements.enabled"     : false, // Turn off achievements tracking / UX
    "editor.typingPrediction"  : false, // Wait for vim's confirmed typed characters, avoid edge cases
    "editor.textMateHighlighting.enabled" : false, // Use vim syntax highlighting
    "ui.animations.enabled": true,
    "ui.fontSmoothing": "auto",
    "language.go.languageServer.command": "",
}

//export const configuration = {
//    //add custom config here, such as

//    "ui.colorscheme": "solarized8_dark",
//    "oni.useDefaultConfig": false,
//    "editor.fontFamily": "Consolas",
//    "editor.fontSize": "13px",
//     "oni.loadInitVim": true,

//   "editor.textMateHighlighting.enabled": false,
//   "environment.additionalPaths": ["/usr/local/go/bin"],
//    "oni.loadInitVim": true,
//    "editor.renderer": "webgl",

//    // UI customizations
//    "ui.animations.enabled": true,
//    "ui.fontSmoothing": "auto",
//    "language.go.languageServer.command": "",
//}
