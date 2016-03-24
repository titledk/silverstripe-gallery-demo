ROOT = $(PWD)
SS_ROOT = $(PWD)/public

# Development
composer:
	cd "$(SS_ROOT)" && composer update
db:
	cd "$(SS_ROOT)" && php ./framework/cli-script.php dev/build flush=1


# SS Cleanup
flush:
	rm -rf "$(SS_ROOT)/silverstripe-cache" && mkdir "$(SS_ROOT)/silverstripe-cache"
cleantables:
	cd "$(SS_ROOT)" && php ./framework/cli-script.php dev/tasks/ArtefactCleanTask '' dropping=1
cleantempdbs:
	cd "$(SS_ROOT)" && php ./framework/cli-script.php dev/tests/cleanupdb
