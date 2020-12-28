# goreman commands

Reference: https://etcd.io/docs/v3.4.0/dev-guide/local_cluster/

```bash
go get github.com/mattn/goreman
git clone git@github.com:etcd-io/etcd.git
cd etcd
./build
```

## Start all
```bash
goreman -f Procfile start
etcdctl --write-out=table --endpoints=localhost:2379 member list
etcdctl put foo bar
```

## Stop single instance
```bash
goreman run stop etcd2
etcdctl put key hello
etcdctl get key
etcdctl --endpoints=localhost:22379 get key
```

## Start single instance
```bash
goreman run restart etcd2
etcdctl --endpoints=localhost:22379 get key
```
