# Docker Gitea

## Config

```bash
vi /data/gitea/conf/app.ini
```

```ini
[service]
REGISTER_EMAIL_CONFIRM            = false
ENABLE_NOTIFY_MAIL                = false
DISABLE_REGISTRATION              = true
SHOW_REGISTRATION_BUTTON          = false
ENABLE_CAPTCHA                    = true
REQUIRE_SIGNIN_VIEW               = true
DEFAULT_KEEP_EMAIL_PRIVATE        = true
DEFAULT_ALLOW_CREATE_ORGANIZATION = true
NO_REPLY_ADDRESS                  = noreply.example.org
```

```bash
# s6-svscanctl -t /etc/s6
docker restart gitea
```
