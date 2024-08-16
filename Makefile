# Makefile for TransDefenseProject
default:
	@ echo 'Building TransDefenseProject...'
	@ mkdir build/
	@ echo 'Building TDP Tool...'
	@ cd tdp_tool; cargo build --release
	@ echo 'Coping files...'
	@ cp tdp_tool/target/release/tdp_tool build/
	@ cp institute_list.conf build/
	@ cp institute_list.csv build/
	@ cp institute_list.json build/
	@ cp institute_list.schema.json build/
	@ cp README.md build/
	@ cp LICENSE build/
	@ echo 'Making an compressed tarball...'
	@ cd build; tar -caf ../tdp-with-tool-`uname -m`-`uname -s | tr A-Z a-z`-`date +%Y-%m-%d`.tar.zst *
	@ echo 'Done!'

text-only:
	@ echo 'Building TransDefenseProject...'
	@ mkdir build/
	@ echo 'Coping files...'
	@ cp institute_list.conf build/
	@ cp institute_list.csv build/
	@ cp institute_list.json build/
	@ cp institute_list.schema.json build/
	@ cp README.md build/
	@ cp LICENSE build/
	@ echo 'Making an compressed tarball...'
	@ cd build; tar -caf ../tdp-text-only-`date +%Y-%m-%d`.tar.zst *
	@ echo 'Done!'

clean:
	@ echo 'Do some cargo clean...'
	@ cd tdp_tool; cargo clean
	@ echo 'Will exec "rm build/ -rIv" next...'
	@ rm build/ -rIv
	@ echo 'Tarballs built before will not be removed.'
