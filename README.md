# Cadet

A space-themed screen for [Admiral](https://github.com/jbuffin/admiral).

Your coding agents show up as rockets flying through space. Click one to see what it's doing.


## Install

You need a Mac with Admiral set up first. If you don't have it yet:

```sh
brew install jbuffin/admiral/admiral
admiral setup
admiral service install
```

Then install Cadet:

```sh
git clone https://github.com/funalert/Cadet
cd Cadet
./install.sh
```

Done. Open **http://127.0.0.1:7421** (or run `cadet open`).

Cadet now runs in the background and starts by itself when you log in.

## What you can do

- **Launch an agent:** pick a fleet on the left, press its button, then choose the task and the folder.
- **Watch your agents:** each one is a rocket. An amber ring means it needs you.
- **Open its terminal:** click a rocket.
- **Rearrange:** drag rockets anywhere you like.
- **Add things on the fly:** new order sources and new folders, right from the launch window.

## Use it from your phone

Click **Remote** at the top, set a password, and turn it on. Cadet opens a Cloudflare tunnel and shows you the address. Open it on your phone, sign in, then use **Share → Add to Home Screen** to make it an app. The terminal has an on-screen Esc, Tab, Ctrl-C and arrow bar.

You need `brew install cloudflared`. Two ways to get an address:

- **Quick link:** a random `trycloudflare.com` address, no account. It changes each time you turn it on.
- **Your own domain:** a fixed address on a domain in your Cloudflare account. Cadet opens the Cloudflare sign-in, then creates the tunnel and DNS record itself.

**Zero trust (optional, own domain only).** In Cloudflare Zero Trust, add a self-hosted *Access* application for your domain that allows only you. Paste its team domain and AUD tag into the Remote window. From then on Cadet refuses any request that doesn't carry Cloudflare's signed proof that you signed in, on top of the password.

How it stays safe: the tunnel only reaches a second port (`7422`) that always asks for the password. Settings can't be changed through the tunnel, only from the Mac. Logins are rate-limited and sessions last 30 days. Changing the password signs every device out. Anyone who gets in can run commands as you, so use a long password and consider zero trust.

## Commands

| Command | What it does |
| --- | --- |
| `cadet open` | Open Cadet in your browser |
| `cadet status` | Check that it's running |
| `cadet uninstall` | Stop and remove Cadet |
| `cadet` | Run in this terminal instead of the background |

## Updates

When there's a newer version on GitHub, an **Update available** tag appears at the top. Click it, then click **Update & restart**.

## Remove it

```sh
cadet uninstall
```

## Good to know

- Cadet is one small Python file and needs nothing else installed.
- Nothing is shared with the internet unless you turn on Remote.
- Cadet stores nothing itself. Admiral keeps all your data.
- Something wrong? Run `cadet status`, and make sure Admiral is running with `admiral service status`.

## For the curious

- Updates are checked against this repo's `origin` remote, which Cadet reads when you install. To use a different repo, set `CADET_REPO=owner/name`. The repo must be public.
- Other settings: `CADET_LISTEN` (where Cadet listens, default `127.0.0.1:7421`), `CADET_REMOTE_LISTEN` (the password-protected port the tunnel uses, default `127.0.0.1:7422`) and `CADET_ADMIRAL` (where Admiral is, default `127.0.0.1:7420`).
