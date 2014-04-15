Yii2 DbManager class for Oracle databases
==========================================

Installation
------------

1.) Add or update the following component to your config file:

'components' => [
	...
	'authManager' => [
		'class' => 'vendor\albertborsos\yii2dbmanageroracle\DbManager',
		'itemTable' => 'TBL_AUTH_ITEM',
		'itemChildTable' => 'TBL_AUTH_ITEM_CHILD',
		'assignmentTable' => 'TBL_AUTH_ASSIGNMENT',
		'ruleTable' => 'TBL_AUTH_RULE',
	],
	...
],

2.) Create the tables by the [schema-oracle.sql] script

