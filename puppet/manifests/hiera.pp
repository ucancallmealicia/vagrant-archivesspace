
node default {
    notify {"Installing /etc/hiera.yaml ":}
    include hiera
}
