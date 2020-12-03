<!--
*** Thanks for checking out the Best-README-Template. If you have a suggestion
*** that would make this better, please fork the repo and create a pull request
*** or simply open an issue with the tag "enhancement".
*** Thanks again! Now go create something AMAZING! :D
-->



<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->

<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="">
    <img src="https://www.flaticon.com/svg/static/icons/svg/1320/1320547.svg" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">Admin System</h3>
</p>



<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#how-to-install">How to Install</a>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#config">Config</a></li>
        <li><a href="#usage">Usage</a></li>
      </ul>
    </li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## How to Install

![Product Name Screen Shot][product-screenshot]

After downloading the ZIP, you will want to extract it onto your desktop. Once done, navigate to your server addons (use the above reference image) and drop the extracted folder into there. Restart your server and it is ready for use!

<!-- GETTING STARTED -->
## Getting Started

This is how to both config the addon, as well as use it and its features.

### Config

The configuration for the addon is as follows;
  ```lua
  adminSys = adminSys or {}

  adminSys.consoleCommand = "adminmode" -- The console command for the admin system. Requires server restart or map reload.

  adminSys.groupsAllowed = { -- Usergroups allowed to use the console command. Follow the format below.
    ["superadmin"] = true,
  -- ["admin"] = true,
  -- ["mod"] = true,
  -- ["tmod"] = true,
}

  ```
```lua
adminSys.consoleCommand = "adminmode"
```
The above line is what you want the player to type into their console to activate the admin mode.

```lua
adminSys.groupsAllowed = { -- Usergroups allowed to use the console command. Follow the format below.
  ["superadmin"] = true,
  -- ["admin"] = true,
  -- ["mod"] = true,
  -- ["tmod"] = true,
}
```
The above lines are a table, which are holding the usergroups that are allowed to use the command. For example, in the table above it says;
```lua
["superadmin"] = true,
```
Which means that the superadmin usergroup can use the command.
### Usage
Once you are in the server, go to your console and type the command that is set in the config file.
![console-screenshot]
After typing in the command, you will receive a notification in your chatbox when you have gone on / off duty.
![chat-screenshot]

Once you type in the command and you have gone on duty, the following happens:
<li class="rich-diff-level-one">You are godded.</li>
<li class="rich-diff-level-one">You are cloaked.</li>
<li class="rich-diff-level-one">Your weapon is cloaked.</li>
<li class="rich-diff-level-one">Noclip is enabled for you.</li>

Noclip is disabled for everyone if they are not in adminmode.

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[product-screenshot]: https://i.imgur.com/4zyAz2n.png
[console-screenshot]: https://i.imgur.com/8jCUZ6y.png
[chat-screenshot]: https://i.imgur.com/BsDAacU.png
