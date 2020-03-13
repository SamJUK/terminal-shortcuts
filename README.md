# Sam Terminal Aliases

## Recommended Install

```bash
sudo mkdir -p /opt/sam;
sudo chown -R $(id -u):$(id -g) /opt/sam;
git clone git@github.com:SamJUK/terminal-shortcuts.git /opt/sam;
sh /opt/sam/terminal/install_aliases.sh;

crontab -e \
"0 0 */7 * * sh /opt/sam/terminal/updates/update.sh >> /opt/sam/terminal/updates/update.log";
```

## Setting up terminal aliases
```bash
sh /opt/sam/terminal/install_aliases.sh;
```

## Enabling terminal aliases
```bash
ln -s /opt/sam/terminal/available/ssh.conf /opt/sam/enabled/;
```

## Removing terminal aliases
```bash
rm /opt/sam/terminal/enabled/ssh.conf;
```

## Updating the scripts
```bash
sh /opt/sam/terminal/updates/update.sh;
```

## Setting up autoupdate for the scripts
```bash
crontab -e
"0 0 */7 * * sh /opt/sam/terminal/updates/update.sh >> /opt/sam/terminal/updates/update.log"
```
