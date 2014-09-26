#!/bin/bash
# wipes untagged dangling images and defunct containers
# I think it alse wipes volume containers, so be careful
docker rm $(docker ps -a -q)
docker rmi $(docker images -q --filter "dangling=true")
