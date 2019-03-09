# Exemplum

Dummy plugin for the development of civ plugins which does a lot of the normal setup for you

---

## How to use

Copy this, replace pluginName and paste it into a console:

```
pluginName=Exemplum
mkdir "$pluginName"
cd "$pluginName"
git init
git checkout master
git pull git@github.com:Maxopoly/Exemplum.git
```

Alternatively you can manually create a folder and get a copy of Exemplum. Note that I don't recommend cloning the repo, because that sets Maxopoly/Exemplum as upstream of your project, which you definitely don't want. It also names the folder wrong, which you will have to fix manually.


Once you have Exemplum ready, open up `setup.sh` with a text editor of your choice and set the parameter at the top to fit your project

Then run `./setup.sh` to setup your project
