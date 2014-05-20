// Karma configuration
// http://karma-runner.github.io/0.10/config/configuration-file.html

module.exports = function(config) {
  config.set({
    // base path, that will be used to resolve files and exclude
    basePath: '..',

    // testing framework to use (jasmine/mocha/qunit/...)
    frameworks: ['mocha', 'chai'],

    // list of files / patterns to load in the browser
    files: [
      APPLICATION_SPEC,
      'app/assets/javascripts/application.js',
      //  'app/assets/javascripts/mortgage_calculator/mortgage_calculator_app.js.erb',
      //  'app/assets/javascripts/mortgage_calculator/angular/**/*.js',
      'spec/javascripts/unit/**/*.js'
      //  { pattern: 'app/assets/javascripts/mortgage_calculator/angular/**/*.js',
      //     watched: true,
      //     included: false,
      //     served: false },
      // { pattern: 'app/assets/javascripts/mortgage_calculator/*.js.erb',
      //     watched: true,
      //     included: false,
      //     served: false }
    ],

    client: {
      mocha: {
        ui: 'tdd'
      }
    },

    plugins: [
      // these plugins will be require() by Karma
      'karma-mocha',
      'karma-chai',
      'karma-chrome-launcher',
      'karma-phantomjs-launcher'
    ],

    // list of files / patterns to exclude
    exclude: [],

    reporters: ['progress'],

    // web server port
    port: 9876,

    colors: true,

    // level of logging
    // possible values: LOG_DISABLE || LOG_ERROR || LOG_WARN || LOG_INFO || LOG_DEBUG
    logLevel: config.LOG_INFO,


    // enable / disable watching file and executing tests whenever any file changes
    autoWatch: true,


    // Start these browsers, currently available:
    // - Chrome
    // - ChromeCanary
    // - Firefox
    // - Opera
    // - Safari (only Mac)
    // - PhantomJS
    // - IE (only Windows)
    browsers: ['PhantomJS'],

    captureTimeout: 60000,


    // Continuous Integration mode
    // if true, it capture browsers, run tests and exit
    singleRun: false
  });
};
