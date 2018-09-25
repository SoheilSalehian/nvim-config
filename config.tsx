
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
    //add custom config here, such as

    "ui.colorscheme": "solarized8_dark",
    "oni.useDefaultConfig": false,
    "editor.fontFamily": "Consolas",
    "editor.fontSize": "13px",
     "oni.loadInitVim": true,

   "editor.textMateHighlighting.enabled": false,
   "environment.additionalPaths": ["/usr/local/go/bin"],
    "oni.loadInitVim": true,
    "editor.renderer": "webgl",

    // UI customizations
    "ui.animations.enabled": true,
    "ui.fontSmoothing": "auto",
    "language.go.languageServer.command": "",
}
