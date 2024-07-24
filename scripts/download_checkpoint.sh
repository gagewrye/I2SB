
NAME=$1

echo "Note: available models are blur-gauss, blur-uni, sr4x-pool, and sr4x-bicubic"
echo "Specified [$NAME]"

mkdir -p results && cd results

if [ "$NAME" == blur-gauss ]; then
    gdown --folder 1vatmaOiEgO_Z9JQiFhHdcjiSNgnS9lBY
fi
if [ "$NAME" == blur-uni ]; then
    gdown --folder 1_U9IhgH7CxNp0_8o9F3D86sihflPGKDZ
fi
if [ "$NAME" == sr4x-pool ]; then
    gdown --folder 1VIA8haw3Oy0OqL-CeEM2Rekk92tL0gD0
fi
if [ "$NAME" == sr4x-bicubic ]; then
    gdown --folder 1QfpggccSV9llWMBrklZ6OPdlGR7qRd6F
fi