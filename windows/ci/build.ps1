$ErrorActionPreference = "Stop"

$ContainerBase = ":$(./windows/ci/winver.ps1)"

docker build                                    `
    -t "$env:PUSH_IMAGE"                        `
    --build-arg "BASE_IMAGE_VER=$ContainerBase" `
    windows
