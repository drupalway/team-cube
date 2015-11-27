# Team Cube

[TOC]

## Inputs

## Dev scenarios

### Install from scratch
1. Fix vagrant host vars for your taste inside `env/local/drupal-vm-config.yml`:
- `vagrant_ip` to avoid conflict with other vm's
- `vagrant_synced_folders:`  just because you have another project dir
  - `local_path` and/or `type`
- `vagrant_memory & cpu` more resources - more power)

2. Run `make vm`, it will do:
- Clone DrupalVM
- Symlink project based vagrant config to the drupal-vm cloned dir
- Start Vagrant
- Build Drupal 8 using kraftwagen on the guest machine.

### Tasks with already installed drupal
> where: **on guest** -> /var/www/tc.dw

#### Project: Rebuild
> Creates a new folder inside *./builds* folder
```bash
  kw-b
  cd build
  # We need to rewrite to the native kw-id command
  drush si kwd8 
```

#### Project: Remake
> Redownload all dependencies inside *./build* folder
```bash
  cd build
  composer install 
```

#### Download library/module
> via Composer. It will add also a record to the composer.json file
```bash
  cd build
  composer require vendor-name/library-name
```

## TODO's
1. Use [EditorConfig](http://editorconfig.org/)
2. Move & fix copying *src/profile/[profile_name]* to  *src/* (as default kraftwagen behavior)
3. Use https://github.com/cweagans/composer-patches instead netresearch/composer-patches-plugin
