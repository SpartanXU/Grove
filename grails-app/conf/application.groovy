

// Added by the Spring Security Core plugin:
grails.plugin.springsecurity.userLookup.userDomainClassName = 'com.Grove.User'
grails.plugin.springsecurity.userLookup.authorityJoinClassName = 'com.Grove.UserRole'
grails.plugin.springsecurity.authority.className = 'com.Grove.Role'
grails.plugin.springsecurity.logout.postOnly = false //allows delete user to also logout
grails.plugin.springsecurity.successHandler.alwaysUseDefault = true
grails.plugin.springsecurity.successHandler.defaultTargetUrl = '/trunk/index'
grails.plugin.springsecurity.logout.afterLogoutUrl = '/trunk/index'
grails.plugin.springsecurity.controllerAnnotations.staticRules = [
	[pattern: '/',               access: ['permitAll']],
	[pattern: '/error',          access: ['permitAll']],
	[pattern: '/index',          access: ['permitAll']],
	[pattern: '/index.gsp',      access: ['permitAll']],
	[pattern: '/shutdown',       access: ['permitAll']],
	[pattern: '/assets/**',      access: ['permitAll']],
	[pattern: '/**/js/**',       access: ['permitAll']],
	[pattern: '/**/css/**',      access: ['permitAll']],
	[pattern: '/**/images/**',   access: ['permitAll']],
	[pattern: '/trunk/**',       access: ['permitAll']],
	[pattern: '/user/**',        access: ['permitAll']],
	[pattern: '/branch/**', access: ['permitAll']],
	[pattern: '/leaf/**', access: ['permitAll']],
	[pattern:  '/user/userModeration', access: ['ROLE_ADMIN']],
]

grails.plugin.springsecurity.filterChain.chainMap = [
	[pattern: '/assets/**',      filters: 'none'],
	[pattern: '/**/js/**',       filters: 'none'],
	[pattern: '/**/css/**',      filters: 'none'],
	[pattern: '/**/images/**',   filters: 'none'],
	[pattern: '/**/favicon.ico', filters: 'none'],
	[pattern: '/**',             filters: 'JOINED_FILTERS']
]

