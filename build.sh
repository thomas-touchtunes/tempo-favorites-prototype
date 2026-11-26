#!/bin/bash
# Rebuilds index.html from the prototype: proper <head>, Maze snippet first, noindex.
cd "$(dirname "$0")"
{ printf '<!doctype html>\n<html lang="en">\n<head>\n'; cat maze-snippet.html; printf '<meta name="robots" content="noindex, nofollow">\n'; cat ~/Desktop/Claude/proto/tempo-favorites-v2.html; } > index.html
