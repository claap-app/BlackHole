driverName="ClaapBlackHole"
bundleID="io.claap.BlackHole"
executableName="ClaapBackHole"
deviceName="Claap"
icon="Claap.icns"
channels="2"

xcodebuild \
    -project BlackHole.xcodeproj \
    -configuration Release \
    -target BlackHole CONFIGURATION_BUILD_DIR=build \
    PRODUCT_BUNDLE_IDENTIFIER=$bundleID \
    EXECUTABLE_NAME=$executableName \
    GCC_PREPROCESSOR_DEFINITIONS='$GCC_PREPROCESSOR_DEFINITIONS 
    kNumber_Of_Channels='$channels'
    kDevice_Name=\"'$deviceName'\" 
    kPlugIn_BundleID=\"'$bundleID'\" 
    kDriver_Name=\"'$driverName'\"
    kPlugIn_Icon=\"'$icon'\"'