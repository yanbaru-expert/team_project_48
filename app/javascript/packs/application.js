import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import "bootstrap/dist/js/bootstrap"
<<<<<<< HEAD
import '@fortawesome/fontawesome-free/js/all';
=======
import '@fortawesome/fontawesome-free/js/all'
>>>>>>> origin/develop

Rails.start()
Turbolinks.start()
ActiveStorage.start()

require ('jquery')
require('custom.js')