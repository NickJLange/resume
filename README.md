# NickJLange.github.io

Personal website and CV for Nick J. Lange.

## Structure

```
├── .github/workflows/    # GitHub Actions for auto-rendering CV
├── cv/                   # CV source (YAML) and rendered output
├── blog/_posts/          # Future blog posts
├── index.html            # Landing page
├── resume.pdf            # Rendered CV (PDF)
├── resume.html           # Rendered CV (HTML)
└── .nojekyll             # Bypass Jekyll processing
```

## How It Works

1. Edit `cv/Nick_J._Lange_CV.yaml` with your CV content
2. Push to `main` branch
3. GitHub Actions automatically renders the CV and deploys to GitHub Pages

## Local Development

```bash
# Render CV locally
cd cv
rendercv render Nick_J._Lange_CV.yaml

# Copy to root for local testing
cp rendercv_output/Nick_J_Lange_CV.pdf ../resume.pdf
cp rendercv_output/Nick_J_Lange_CV.html ../resume.html
```

## Publishing

Site is auto-published to https://NickJLange.github.io on every push to `main`.
