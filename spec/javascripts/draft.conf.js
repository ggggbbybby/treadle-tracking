// spec/javascripts/draft.conf.js

module.exports = function(config) {
  config.set({
    basePath: '../..',

    frameworks: ['jasmine'],

    autoWatch: true,

    preprocessors: {
      '**/*.coffee': 'coffee'
    }, 

    files: [
      'app/assets/javascripts/lib/angular.js',
      'app/assets/javascripts/lib/angular-*.js',
      'app/assets/javascripts/main.js.coffee',
      'app/assets/javascripts/controllers/*.js.coffee',
      'spec/javascripts/*_spec.js.coffee'
    ]  
  });
};