#!/usr/bin/bash
rm "*.pyc"
find backend -name "*.pyc" -delete
find frontend -name "*.pyc" -delete
