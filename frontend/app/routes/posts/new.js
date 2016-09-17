// app/routes/posts/new.js
import Ember from 'ember';

export default Ember.Route.extend({

  model() {
    return this.store.createRecord('post');
  },

  actions: {

    savepost(newpost) {
      newpost.save().then(() => this.transitionTo('posts.index'));
    },

    willTransition() {
      // rollbackAttributes() removes the record from the store
      // if the model 'isNew'
      this.controller.get('model').rollbackAttributes();
    }
  }
});
