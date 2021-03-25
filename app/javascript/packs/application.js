require("@rails/ujs").start()
require("packs/html.sortable")
require("turbolinks").start()
require("@rails/activestorage").start()
require("jquery")
require("channels")
require("@nathanvda/cocoon")
require("gritter/js/jquery.gritter.js")


//= require_tree


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


import "controllers"

require('lib/following');
