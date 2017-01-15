
import { truncateText } from 'frontend/helpers/truncate-text';
import { module, test } from 'qunit';

module('Unit | Helper | truncate text');

// Replace this with your real tests.
test('it works', function(assert) {
  let result = truncateText("this is my text", 10);
  assert.ok(result);
});
