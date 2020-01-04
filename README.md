# Developer Install Script

## What does this do?

Installs a bunch of things, namely:

- Nodejs (with npm) 
- Yarn
- pyenv
- SDKman

The above are managers that help you download and install various language enviroments.

## Why?

It was created at as a one stop solution for installing most things, rather than having 300 different things to be typed into the terminal.

## How do I use it?

Download the Thing!
```bash
$ curl -sL https://raw.githubusercontent.com/XavierSchiller/Dev-Install-Script/master/InstallScript.sh -o InstallScript.sh
```

Then do the following~ 
```
$ bash InstallScript.sh arg1 [arg2 [arg3...]]
```
Where arg coresponds to any of the following:

- all
- Node
- Yarn
- Python
- SDKman

(Note that if you're using all, the others aren't really required. It installs everything.)

---

I am not responsible for anything that goes wrong with your system, I have tested this on a Docker container and it was unlikely that there was anything that went wrong. 

## What else will I be adding in the near future?

- rbenv (ruby)
- cmake
- boost


## Why will I not be supporting Editors.

There is simply no end to the amount of editors out there. Do that yourself.

