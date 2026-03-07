{ config, ... }: {
  programs.waybar.style = ''
    * {
      font-family: DepartureMono Nerd Font Mono;
      font-size: 10pt;
    }

    #custom-openbracket,
#custom-closebracket {
  margin: 0 5px;
}

/* idk what all this does */
window#waybar {
  background-color: transparent;
  border-bottom: 0;
  color: #${config.lib.stylix.colors.base05};
  transition: background-color 0.5s;
}

window#waybar.hidden {
  opacity: 0.2;
}

window#waybar.empty #window {
  background-color: transparent;
}


/* configuring the modules */
.modules-left {
  margin: 10px 0 0 10px;
  padding: 0 0 0 7px;
  background-color: #${config.lib.stylix.colors.base00};
  border: 2px solid #${config.lib.stylix.colors.base0D};
}

.modules-center {
  margin: 10px 0 0 0;
  padding: 0 10px 0 10px;
  background-color: #${config.lib.stylix.colors.base00};
  border: 2px solid #${config.lib.stylix.colors.base0D};
}

.modules-right {
  margin: 10px 10px 0 0;
  padding: 0 10px 0 10px;
  background-color: #${config.lib.stylix.colors.base00};
  border: 2px solid #${config.lib.stylix.colors.base0D};
}


/* whats this?? */
button {
  border: none;
}


/* left island */

/* menu pannel */
#custom-arch,
#custom-powerprofile,
#custom-themeswitcher {
  padding-right: 10px;
  padding-left: 5px;
  font-size: 15px;
  border-radius: 8px;
}

#custom-arch:hover {
  color: #${config.lib.stylix.colors.base05};
}

#custom-powerprofile:hover {
  color: #${config.lib.stylix.colors.base05};
}

#custom-themeswitcher:hover {
  color: #${config.lib.stylix.colors.base05};
}

/* workspace pannel */
#workspaces button {
  min-width: 0;
  padding: 0 8px 0 8px;
  background-color: transparent;
  color: #${config.lib.stylix.colors.base05};
  border-radius: 0;
}

#workspaces button:hover {
  background-color: #${config.lib.stylix.colors.base00};
}

#workspaces button.active {
  color: @secondary;
  background-color: #${config.lib.stylix.colors.base00};
}

#workspaces button.urgent {
  background-color: #${config.lib.stylix.colors.base08};
}

/* no idea what this does */
.modules-left>widget:first-child>#workspaces {
  margin-left: 0;
}

.modules-right>widget:last-child>#workspaces {
  margin-right: 0;
}

/* media player */
#mpris {
  margin: 0 0 0 5px;
  padding: 0 9px;
  background-color: #${config.lib.stylix.colors.base00};
  color: #${config.lib.stylix.colors.base05};
}

#mpris.playing {
  background-color: #${config.lib.stylix.colors.base00};
  border-radius: 2px;
  color: #${config.lib.stylix.colors.base05};
}


/* center module  */
#window {
  padding: 0 5px;
}

/* Right Island */

/* module general styles */
#clock,
#battery,
#cpu,
#memory,
#custom-clipboard,
#custom-bluetooth,
#network {
  padding: 0 10px;
}

#clock:hover,
#battery:hover,
#custom-cpu:hover,
#custom-clipboard:hover,
#custom-bluetooth:hover,
#network:hover,
#idle_inhibitor:hover,
#custom-swaync:hover,
#backlight:hover,
#wireplumber:hover {
  color: #${config.lib.stylix.colors.base05};
}

#idle_inhibitor {
  padding: 0 10px 0 0;
}

#custom-powerprofile {
  padding: 0 8px 0 4px;
}

/* Remaining Modules */
#backlight,
#wireplumber {
  padding: 0 5px;
}

#wireplumber.muted {
  background-color: #${config.lib.stylix.colors.base00};
}

#battery.charging,
#battery.plugged {
  background-color: #${config.lib.stylix.colors.base00};
  color: #${config.lib.stylix.colors.base05};
}

#battery.critical:not(.charging) {
  background-color: #${config.lib.stylix.colors.base00};
  color: #${config.lib.stylix.colors.base08};
  animation: blink 0.5s steps(12) infinite alternate;
}

@keyframes blink {
  to {
    background-color: #${config.lib.stylix.colors.base00};
    color: #${config.lib.stylix.colors.base05};
  }
}


    '';
}
