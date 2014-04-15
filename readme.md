Yii2 DbManager class for Oracle databases
==========================================

Oracle required that a table column name to be uppercase. I updated the original \yii\rbac\DbManager class's every attributes name, and included the missing classes because of the new namespace.

+ schema with uppercase letters and Oracle specific syntax for generating the required tables

Installation
------------

1.) Download via `packagist` by adding the following line to your `composer.json`
```
	"require": {
		"albertborsos/yii2dbmanageroracle": "*"
	},
```
2.) Add or update the following component to your config file:
```
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
```
3.) Create the tables by the `schema-oracle.sql` script

