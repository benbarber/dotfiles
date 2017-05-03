# Add Yarn to path https://yarnpkg.com
if (( $+commands[yarn] ))
then
  export PATH="$PATH:`yarn global bin`"
fi
