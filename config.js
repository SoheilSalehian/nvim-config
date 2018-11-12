"use strict";
exports.__esModule = true;
exports.activate = function (oni) {
    console.log("config activated");
    // Input
    //
    // Add input bindings here:
    //
    oni.input.bind("<c-enter>", function () { return console.log("Control+Enter was pressed"); });
    //
    // Or remove the default bindings here by uncommenting the below line:
    //
    // oni.input.unbind("<c-p>")
};
exports.deactivate = function (oni) {
    console.log("config deactivated");
};
exports.configuration = {
    activate: exports.activate,
    "oni.hideMenu": "hidden",
    "oni.loadInitVim": true,
    "oni.useDefaultConfig": false,
    "ui.colorscheme": "solarized8_dark",
    "autoClosingPairs.enabled": true,
    "commandline.mode": true,
    "wildmenu.mode": false,
    // "tabs.mode"                : "native", // Use vim's tabline, need completely quit Oni and restart a few times
    "statusbar.enabled": false,
    "sidebar.enabled": true,
    "sidebar.default.open": false,
    "learning.enabled": false,
    "achievements.enabled": false,
    "editor.typingPrediction": false,
    "editor.textMateHighlighting.enabled": false,
    "ui.animations.enabled": true,
    "ui.fontSmoothing": "auto",
    "language.go.languageServer.command": ""
};
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
