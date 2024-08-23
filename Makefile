# Makefile for ZiMuProject
default:
	@ echo 'Building ZiMuProject...'
	@ mkdir build/
	@ echo 'Building ZMP Tool...'
	@ cd zmp_tool; cargo build --release
	@ echo 'Coping files...'
	@ cp zmp_tool/target/release/zmp_tool build/
	@ cp institute_list.conf build/
	@ cp institute_list.csv build/
	@ cp institute_list.json build/
	@ cp institute_list.schema.json build/
	@ cp README.md build/
	@ cp LICENSE build/
	@ echo 'Making an compressed tarball...'
	@ cd build; tar -caf ../zmp-with-tool-`uname -m`-`uname -s | tr A-Z a-z`-`date +%Y-%m-%d`.tar.zst *
	@ echo 'Done!'

text-only:
	@ echo 'Building ZiMuProject...'
	@ mkdir build/
	@ echo 'Coping files...'
	@ cp institute_list.conf build/
	@ cp institute_list.csv build/
	@ cp institute_list.json build/
	@ cp institute_list.schema.json build/
	@ cp README.md build/
	@ cp LICENSE build/
	@ echo 'Making an compressed tarball...'
	@ cd build; tar -caf ../zmp-text-only-`date +%Y-%m-%d`.tar.zst *
	@ echo 'Done!'

clean:
	@ echo 'Do some cargo clean...'
	@ cd zmp_tool; cargo clean
	@ echo 'Will exec "rm build/ -rIv" next...'
	@ rm build/ -rIv
	@ echo 'Tarballs built before will not be removed.'
