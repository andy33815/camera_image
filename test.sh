adb=/media/E/mtk6737_n_alps/alps/out/host/linux-x86/bin/adb
out=/media/E/camera_image/test
test_index=1
while [ "$test_index" -lt "100" ]
do
	$adb preview_capture > ${out}/${test_index}.jpg
	test_index=$(($test_index+1))
done
