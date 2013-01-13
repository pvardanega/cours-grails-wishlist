package com.pvardanega

import grails.plugins.springsecurity.Secured

@Secured("IS_AUTHENTICATED_FULLY")
class HomeController {

    def springSecurityService

    def index() {
        def currentUser = springSecurityService.currentUser as User
        render "Hello $currentUser.username"
    }
}
