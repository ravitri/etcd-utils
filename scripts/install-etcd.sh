#!/bin/bash

ETCD_VER=v3.4.14

# choose either URL
#GOOGLE_URL=https://storage.googleapis.com/etcd
GITHUB_URL=https://github.com/etcd-io/etcd/releases/download
DOWNLOAD_URL=${GITHUB_URL}

rm -f etcd-${ETCD_VER}-linux-amd64.tar.gz
rm -rf etcd-download-test && mkdir -p etcd-download-test

curl -L ${DOWNLOAD_URL}/${ETCD_VER}/etcd-${ETCD_VER}-linux-amd64.tar.gz -o etcd-${ETCD_VER}-linux-amd64.tar.gz
tar xzvf etcd-${ETCD_VER}-linux-amd64.tar.gz -C etcd-download-test --strip-components=1
rm -f etcd-${ETCD_VER}-linux-amd64.tar.gz

etcd-download-test/etcd --version
etcd-download-test/etcdctl version
