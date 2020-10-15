# Maintenance Mode Display

Just bring this container up and point your Load Balancer to it.

## Running

Copy this docker-compose.yml

```yml
version: "3"

services:
  www:
    image: tiagostutz/maintenance-mode-display
    build: .
    environment:
      - FAVICON_URL=https://avatars0.githubusercontent.com/u/17803331?s=200&v=4
      - PAGE_TITLE=Maintenance, sorry
      - LOGO_URL=https://avatars0.githubusercontent.com/u/17803331?s=200&v=4
      - H1=Sorry, we are down for maintenance
      - H2=We'll be back by 6 A.M.
    ports:
      - 8777:80
```

And then run:

```
$ docker-compose up
```

Open `http://localhost:8777/` and voilà:

## Configuration using ENV vars:

- `FAVICON_URL`: the URL of favicon
- `PAGE_TITLE`: the Title of the page
- `LOGO_URL`: the url of the logo you want to be presented
- `H1`: the main title
- `H2`: the secondary info
