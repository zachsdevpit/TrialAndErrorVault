# The Problem
Old Build process has been depreciated

# Here's the new way 
After navigating to the directory with the desired dockerfile run
```
docker buildx build -t {DesiredName} .
```
Verify completion with
```
docker images
```
Tag the local image with the desired remote **works similar to mv command**
```
docker tag {local} {onlineAccount}/{desiredRepo}:{onlineImageTag}
```
Now you can Push
```
docker push {onlineAccount}/{desiredRepo}:{onlineImageTag}
```

