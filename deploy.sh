#!/bin/bash

# Replace <repository_url> with your GitHub repository URL
REPO_URL="https://github.com/maneeshkush/ms.git"

# Navigate to the directory containing your pages
cd "D:/cm zip/output_files1/new" || exit

# Initialize a Git repository if not already initialized
if [ ! -d ".git" ]; then
  git init
  git remote add origin "$REPO_URL"
  git checkout -b gh-pages
fi

# Add all files, commit, and push to gh-pages branch
git add .
git commit -m "Update pages"
git push origin gh-pages

