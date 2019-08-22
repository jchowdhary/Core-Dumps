#!/bin/sh
echo "INOTIFY SCRIPT"

gcloud auth activate-service-account --key-file=/secrets/projects-jayant-82544f23332b.json &&
inotifywait -m /mnt -e close_write | while read path action file; do gsutil cp "$path$file" "gs://micollab-storage/$file"; done;


echo "INOTIFY SCRIPT ENDS"
