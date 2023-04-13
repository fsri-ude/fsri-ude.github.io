# FSR Informatik UDE

URLs

- <https://fsri-ude.github.io>
<!-- - <https://fachschaftsrat.info> -->

## How-to

Die Seite ist mit dem static site generator [Hugo](https://gohugo.io/) gebaut. Die Dokumentation kann [hier](https://gohugo.io/documentation/) gefunden werden. Einfach ausgedrückt konvertieren wir text aus dem [Markdown](https://markdown.de/) format in statische HTML Seiten. Das ganze ist soweit automatisiert, dass man nur einen neue Seite erstellen muss, die Überschrift und ein paar andere Metadaten ändert und seinen Text hinzufügt. Das erscheinen auf der Website wird dann komplett von GitHub Actions übernommen.

### Wie baue ich eine neue Seite?

Wenn das Repository noch nicht geklont ist:

```shell
git clone git@github.com:fsri-ude/fsri-ude.github.io.git
cd fsri-ude.github.io
```

Mit `hugo` via

- `hugo new <subsection>/<title>.md` i.e. `hugo new posts/my-first-post.md`

Mit `docker` und `make` via

- `make new "posts/sitzung-2023-10-11.md"`

oder ohne Hugo, indem du die `template.md` Datei aus dem `content` Ordner kopierst, und die parameter anpasst. Die Datei kann allerdings veraltet sein, was darin resultiert, dass die Seite nicht gebaut wird!

### Wie veröffentliche ich eine Seite?

Damit die Seite gebaut ist, muss der Wert des Attributs `Draft` von `True` auf `False` gesetzt werden. Im Anschluss muss die Seite noch in GitHub gepusht werden. Als kleine Aufrischung zum Beispiel (der Name des Files muss angepasst werden, bitte gebe auch eine möglichst Aussagekräftige Commit Message an)

```git
git add content/posts/news.md
git commit -m "add new post: news"
git push
```

Im Anschluss startet Github die Action, und wenig später sollte der Post da sein.

## Lokale Ausführung

### Theme

Themes werden als git submodules gezogen, also musst du folgendes ausführen, wenn du die Website lokal ausführen willst

```shell
git submodule update --init --recursive
```

oder via `docker` und `make`
```shell
make setup
```

### Seiten bauen

```shell
hugo
```

oder via `docker` und `make`
```shell
make build
```

## Ausführung

```shell
hugo server
```

oder via `docker` und `make`
```shell
make run
```