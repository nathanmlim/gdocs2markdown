# Mobley Lab Google Drive Docs

This repository contains google docs that have been converted to Markdown

## Requirements
[rclone](rclone.org)
[pandoc](pandoc.org)

Configure rclone to gain access to Google Drive.
See [docs](https://rclone.org/drive/) for more details.

## Converting gdocs to markdown

To convert google docs into markdown, copy the gdocs to your a local directory via:

```
rclone copy --drive-export-formats=docx --include='*.docx' \
gdrive:'Mobley Group/Teaching_and_Training/Coding_Tutorials' Coding_Tutorials
```

Use the provided script to convert the docx files via pandoc:
```
./gdocs2markdown.sh Coding_Tutorials
```

You should now see all the gdocs converted into markdown.

```
↳ tree -P '*.md'
.
├── Coding_Tutorials/
│   ├── GitHub_Tutorials/
│   │   ├── Code_Coverage.md
│   │   ├── Encrypting_on_Travis.md
│   │   ├── GitHub_Cloning.md
│   │   ├── GitHub_Creating_a_Repository.md
│   │   ├── GitHub_Forking.md
│   │   ├── GitHub_Getting_Started.md
│   │   ├── GitHub_Issues.md
│   │   ├── GitHub_Pull_Requests.md
│   │   ├── GitHub_Working_Locally.md
│   │   ├── Integrated_Testing.md
│   │   ├── README.md
│   │   └── ReadTheDocs_and_Sphinx.md
│   ├── Anaconda.md
│   ├── IDE.md
│   ├── Jupyter_Notebooks.md
│   ├── MarkDown.md
│   └── README.md
└── README.md
```
