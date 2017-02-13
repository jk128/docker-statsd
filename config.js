{
 backends: [
  "./backends/console",
  "./backends/graphite"
 ],
 deleteIdleStats: true,
 graphite: {
    legacyNamespace: false
 },
 graphiteHost: "localhost",
 graphiteProtocol: "",
 graphitePort: "2003",
 // graphitePicklePort: "2004",
 debug: false,
 dumpMessages: false
}
