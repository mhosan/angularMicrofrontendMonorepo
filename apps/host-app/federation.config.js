const { withNativeFederation, shareAll } = require('@angular-architects/native-federation/config');

module.exports = withNativeFederation({
  name: 'host-app',
  
  remotes: {
    'micro-frontend-1': 'http://localhost:4201/remoteEntry.js',
    'micro-frontend-2': 'http://localhost:4202/remoteEntry.js'
  },
  // El host no expone nada, solo consume
  shared: {
    ...shareAll({ singleton: true, strictVersion: true, requiredVersion: 'auto' }),
  },

  skip: [
    'rxjs/ajax',
    'rxjs/fetch',
    'rxjs/testing',
    'rxjs/webSocket',
  ],

  features: {
    ignoreUnusedDeps: true
  }

});