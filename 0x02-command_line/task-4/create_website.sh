#!/usr/bin/env bash

set -u

DEFAULT_DIR="$HOME/radius-projects/website-project"
TARGET_DIR="${1:-$DEFAULT_DIR}"

if [ -e "$TARGET_DIR" ]; then
    echo "Error: Destination '$TARGET_DIR' already exists. Aborting to protect existing files." >&2
    exit 1
fi

mkdir -p "$TARGET_DIR/css" "$TARGET_DIR/js" "$TARGET_DIR/images"

cat << 'HTML_EOF' > "$TARGET_DIR/index.html"
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Welcome to Website Project</title>
  <link rel="stylesheet" href="css/style.css">
</head>
<body>
  <main>
    <h1>Welcome to Website Project</h1>
    <p>Generated automatically using create_website.sh.</p>
  </main>
  <script src="js/script.js"></script>
</body>
</html>
HTML_EOF

cat << 'CSS_EOF' > "$TARGET_DIR/css/style.css"
body {
  font-family: Arial, sans-serif;
  margin: 0;
  padding: 2rem;
  line-height: 1.6;
}

h1 {
  color: #1f2937;
}
CSS_EOF

cat << 'JS_EOF' > "$TARGET_DIR/js/script.js"
console.log("Website project initialized successfully.");
JS_EOF

cat << 'ROOT_README_EOF' > "$TARGET_DIR/README.md"
# Website Project

This starter website project was generated automatically using create_website.sh, including HTML markup, CSS styling, JavaScript behavior, and organized asset folders.
ROOT_README_EOF

cat << 'CSS_README_EOF' > "$TARGET_DIR/css/README.md"
# CSS Directory

This directory holds stylesheet files (such as style.css) responsible for layout, typography, colors, and visual presentation.
CSS_README_EOF

cat << 'JS_README_EOF' > "$TARGET_DIR/js/README.md"
# JavaScript Directory

This directory holds client-side JavaScript files (such as script.js) that add interactivity and dynamic behavior to web pages.
JS_README_EOF

cat << 'IMG_README_EOF' > "$TARGET_DIR/images/README.md"
# Images Directory

This directory stores image assets used by the website, such as .png, .jpg, .jpeg, .webp, and .svg files.
IMG_README_EOF

echo "Website project created successfully at: $TARGET_DIR"
