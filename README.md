# My Vim Config

I'm using the setup as defined in this blog for creating the config.

[Blog Post](http://www.terminally-incoherent.com/blog/2012/03/12/putting-your-vim-files-under-version-control)

```bash
# Clone this lovely repo
git clone https://github.com/clem109/vim.git

# Remove any vim stuff before hand
mv /vim ~/.vim
ln -s ~/.vim/.vimrc ~/.vimrc
```

All the Pathogen files have been added as submodules. So after cloning you need to run the following command:

```bash
git submodule init
git submodule update
```

I've also added some custom snippets that use UltiSnip. These can be found in the /UltiSnip folder. 

For adding new custom plugins, this project uses pathogen. You can add more submodules for example vim-autoclose:
```bash
cd .vim
git submodule add https://github.com/Townk/vim-autoclose.git bundle/vim-autocose
git submodule init
git submodule update
```
