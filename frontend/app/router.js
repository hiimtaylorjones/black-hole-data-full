import Ember from 'ember';
import config from './config/environment';

const Router = Ember.Router.extend({
  location: config.locationType,
  rootURL: config.rootURL
});

Router.map(function() {
  this.route('posts', function() {
    this.route('index', { path: '/' });
    this.route('new');
  });
  this.route('about');
  this.route('projects');
  this.route('login', { path: '/admin/login' });
});

export default Router;
