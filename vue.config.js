const { defineConfig } = require('@vue/cli-service')
const ip = require('ip');

module.exports = defineConfig({
  transpileDependencies: true,
  devServer: {
    host: ip.address(),
    port: 9000
  }
})
