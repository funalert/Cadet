# Cadet

A space-themed screen for [Admiral](https://github.com/jbuffin/admiral).

Your coding agents show up as rockets flying through space. Click one to see what it's doing.

> Cadet is an independent project. It is not made by or endorsed by Admiral's authors.

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
- It only runs on your own Mac. Nothing is shared with the internet.
- Cadet stores nothing itself. Admiral keeps all your data.
- Something wrong? Run `cadet status`, and make sure Admiral is running with `admiral service status`.

## For the curious

- Updates are checked against this repo's `origin` remote, which Cadet reads when you install. To use a different repo, set `CADET_REPO=owner/name`. The repo must be public.
- Other settings: `CADET_LISTEN` (where Cadet listens, default `127.0.0.1:7421`) and `CADET_ADMIRAL` (where Admiral is, default `127.0.0.1:7420`).
