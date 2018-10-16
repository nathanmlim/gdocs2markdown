I’ll put this in the github help google drive eventually

Upgrading ruby:

<span class="underline">https://stackoverflow.com/questions/38194032/how-to-update-ruby-version-2-0-0-to-the-latest-version-in-mac-osx-yosemite</span>

- If you don’t already have curl:

  - sudo apt-get update

  - sudo apt install curl

- \\curl -sSL [<span class="underline">https://get.rvm.io</span>](https://get.rvm.io/) \| bash -s stable

- source \~/.bash\_profile

- rvm list known

  - long list of possible ruby installations

- rvm install ruby-2.4.2

  - long list about what is being installed/configured

- ruby -v

  - ruby 2.4.2p198 (2017-09-14 revision 59899) \[x86\_64-darwin16\]

- sudo gem install travis

  - Fetching and successfully installing a bunch of stuff

  - shoot, I forgot about the extra options, uninstalled

  - sudo gem uninstall travis

- VTL had gem not found so had to: sudo apt-get install rubygems (<span class="underline">source</span>)

- sudo gem install travis -v 1.8.8 --no-rdoc --no-ri

  - Fetching: travis-1.8.8.gem (100%)

  - Successfully installed travis-1.8.8

  - 1 gem installed

  - MUCH shorter than the first time…

  - VTL got error: ERROR: Error installing travis: ERROR: Failed to build gem native extension.

    - Solved with “sudo apt-get install ruby-dev” beforehand

  - If you forget the options of --no-rdoc and --no-ri you can remove this manually with “sudo rm -rf \`gem env gemdir\`/doc”

- travis version

  - 1.8.8

  - VTL got error: Traceback (most recent call last):

> 2: from /usr/local/bin/travis:23:in \`&lt;main&gt;'
>
> 1: from /usr/lib/ruby/2.5.0/rubygems.rb:308:in \`activate\_bin\_path'
>
> /usr/lib/ruby/2.5.0/rubygems.rb:289:in \`find\_spec\_for\_exe': can't find gem travis (&gt;= 0.a) with executable travis (Gem::GemNotFoundException)

- But it seemed the installer needed to finish when I tried this command again in a NEW terminal.

<!-- -->

- travis login --auto

  - Successfully logged in as bannanc!

- cp \~/anaconda3/licenses/oe\_license.txt .

- travis encrypt-file oe\_license.txt

  - Note, if you’ve changed names at any point you might have set the repository with the -R option, for example

    - travis encrypt-file oe\_license.txt -R MobleyLab/chemper

  - Run this command *inside* the git repository.

  - VTL decided to not add the --add command and chose to update .travis.yml file manually. The automatic addition removes commented descriptions in the existing .travis.yml file.

Detected repository as MobleyLab/off\_nitrogens, is this correct? \|yes\|

encrypting oe\_license.txt for MobleyLab/off\_nitrogens

storing result as oe\_license.txt.enc

storing secure env variables for decryption

Please add the following to your build script (before\_install stage in your .travis.yml, for instance):

openssl aes-256-cbc -K $encrypted\_ff9126da2177\_key -iv $encrypted\_ff9126da2177\_iv -in oe\_license.txt.enc -out oe\_license.txt -d

Pro Tip: You can add it automatically by running with --add.

Make sure to add oe\_license.txt.enc to the git repository.

Make sure not to add oe\_license.txt to the git repository.

Commit all changes to your .travis.yml

When things don’t work try adding the options —debug and —explode to the encrypt line so the first command would be

travis encrypt-file oe\_license.txt -R MobleyLab/chemper --debug --explode
