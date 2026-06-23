# Dan Smith Consulting Website

Static one-page website for Dan Smith Consulting.

## Files

- `index.html` - page markup
- `styles.css` - responsive styling
- `assets/` - site images
- `design/site-concept.png` - visual concept reference

## Run Locally

From this folder:

```bash
python3 -m http.server 4173
```

Then open:

```text
http://127.0.0.1:4173/
```

If port `4173` is already in use, choose another port:

```bash
python3 -m http.server 8080
```

Then open `http://127.0.0.1:8080/`.

You can also open `index.html` directly in a browser, but using a local server is closer to how the site will behave when hosted.
