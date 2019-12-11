module.exports = {
  config: {
    updateChannel: "canary",
    scrollback: "3000",
    fontSize: 12,
    fontFamily:
      '"DejaVuSansMono Nerd Font", "Consolas", "Lucida Console", monospace',
    fontWeight: "normal",
    fontWeightBold: "bold",
    lineHeight: 1,
    letterSpacing: 0,
    cursorColor: "rgba(248,28,229,0.8)",
    cursorAccentColor: "#000",
    cursorShape: "BLOCK",
    cursorBlink: true,
    foregroundColor: "#fff",
    backgroundColor: "#000",
    selectionColor: "rgba(248,28,229,0.3)",
    borderColor: "#333",
    css: "",
    termCSS: "",
    showHamburgerMenu: true,
    showWindowControls: false,
    padding: "4px 4px",
    colors: {
      black: "#000000",
      red: "#C51E14",
      green: "#1DC121",
      yellow: "#C7C329",
      blue: "#0A2FC4",
      magenta: "#C839C5",
      cyan: "#20C5C6",
      white: "#C7C7C7",
      lightBlack: "#686868",
      lightRed: "#FD6F6B",
      lightGreen: "#67F86F",
      lightYellow: "#FFFA72",
      lightBlue: "#6A76FB",
      lightMagenta: "#FD7CFC",
      lightCyan: "#68FDFE",
      lightWhite: "#FFFFFF"
    },

    shell: "zsh",
    shellArgs: ["--login"],
    env: {},
    bell: "false",
    copyOnSelect: true,
    defaultSSHApp: true,
    quickEdit: false,
    macOptionSelectionMode: "vertical",
    webGLRenderer: true
  },

  plugins: [
    //"hyperfull",
    //"hyperline",
    //"hyperpower"
    "hyper-snazzy",
    "hyperborder",
    "hyper-font-smoothing"
  ],
  localPlugins: [],
  modifierKeys: { altIsMeta: true },
  keymaps: {
    "window:devtools": "cmd+alt+o"
  }
};
