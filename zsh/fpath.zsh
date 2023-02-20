# Add each .config sub-directory to fpath so that they can add functions and completion scripts
for config_dir ($XDG_CONFIG_HOME/*) if [ -d $config_dir ]; then  fpath=($config_dir $fpath); fi;