.class public abstract Lcom/deltaid/iris_demo/IrisMobileDevice;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field static final refreshIntervalFPS:J = 0x7d0L


# instance fields
.field protected camera:Landroid/hardware/Camera;

.field private cameraIdToOpen:I

.field cbPreview:Landroid/hardware/Camera$PreviewCallback;

.field countFPS:J

.field timeFPS:J


# direct methods
.method public constructor <init>(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/deltaid/iris_demo/IrisMobileDevice;->getCameraId()I

    move-result v0

    iput v0, p0, Lcom/deltaid/iris_demo/IrisMobileDevice;->cameraIdToOpen:I

    iput-object p1, p0, Lcom/deltaid/iris_demo/IrisMobileDevice;->cbPreview:Landroid/hardware/Camera$PreviewCallback;

    return-void
.end method


# virtual methods
.method public abstract autoExposure(II)V
.end method

.method protected closeCamera()V
    .locals 1

    iget-object v0, p0, Lcom/deltaid/iris_demo/IrisMobileDevice;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/deltaid/iris_demo/IrisMobileDevice;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    iget-object v0, p0, Lcom/deltaid/iris_demo/IrisMobileDevice;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->lock()V

    iget-object v0, p0, Lcom/deltaid/iris_demo/IrisMobileDevice;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deltaid/iris_demo/IrisMobileDevice;->camera:Landroid/hardware/Camera;

    goto :goto_0
.end method

.method public abstract getCameraId()I
.end method

.method public abstract getCameraIds()[I
.end method

.method public abstract getCameraResolution()I
.end method

.method public getExposureSetting([I[I[I)V
    .locals 0

    return-void
.end method

.method public getGainSetting([I[I[I)V
    .locals 0

    return-void
.end method

.method public abstract getHeight()I
.end method

.method public abstract getNominalResolution()I
.end method

.method public abstract getRotation()I
.end method

.method public abstract getWhiteBalance()I
.end method

.method public abstract getWidth()I
.end method

.method protected abstract initParam(Landroid/hardware/Camera$Parameters;)V
.end method

.method protected isCameraFrontFacing()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isPortrait()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isPreviewMirrorImage()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public lockExposure(I)V
    .locals 0

    return-void
.end method

.method public newFrameBuffer()[B
    .locals 2

    invoke-virtual {p0}, Lcom/deltaid/iris_demo/IrisMobileDevice;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/deltaid/iris_demo/IrisMobileDevice;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    return-object v0
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 1

    iget-object v0, p0, Lcom/deltaid/iris_demo/IrisMobileDevice;->cbPreview:Landroid/hardware/Camera$PreviewCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/deltaid/iris_demo/IrisMobileDevice;->cbPreview:Landroid/hardware/Camera$PreviewCallback;

    invoke-interface {v0, p1, p2}, Landroid/hardware/Camera$PreviewCallback;->onPreviewFrame([BLandroid/hardware/Camera;)V

    :cond_0
    return-void
.end method

.method protected openCamera()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/deltaid/iris_demo/IrisMobileDevice;->camera:Landroid/hardware/Camera;

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/deltaid/iris_demo/IrisMobileDevice;->getCameraId()I

    move-result v2

    if-gez v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-static {v2}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v2

    iput-object v2, p0, Lcom/deltaid/iris_demo/IrisMobileDevice;->camera:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/deltaid/iris_demo/IrisMobileDevice;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {p0}, Lcom/deltaid/iris_demo/IrisMobileDevice;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/deltaid/iris_demo/IrisMobileDevice;->getHeight()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    invoke-virtual {p0, v2}, Lcom/deltaid/iris_demo/IrisMobileDevice;->initParam(Landroid/hardware/Camera$Parameters;)V

    iget-object v3, p0, Lcom/deltaid/iris_demo/IrisMobileDevice;->camera:Landroid/hardware/Camera;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :goto_1
    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/deltaid/iris_demo/IrisMobileDevice;->camera:Landroid/hardware/Camera;

    invoke-virtual {p0}, Lcom/deltaid/iris_demo/IrisMobileDevice;->newFrameBuffer()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/deltaid/iris_demo/IrisMobileDevice;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1, p0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    iget-object v1, p0, Lcom/deltaid/iris_demo/IrisMobileDevice;->camera:Landroid/hardware/Camera;

    invoke-virtual {p0}, Lcom/deltaid/iris_demo/IrisMobileDevice;->getRotation()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    goto :goto_0
.end method

.method protected openCamera(I)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/deltaid/iris_demo/IrisMobileDevice;->camera:Landroid/hardware/Camera;

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    if-gez p1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v2

    iput-object v2, p0, Lcom/deltaid/iris_demo/IrisMobileDevice;->camera:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/deltaid/iris_demo/IrisMobileDevice;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {p0}, Lcom/deltaid/iris_demo/IrisMobileDevice;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/deltaid/iris_demo/IrisMobileDevice;->getHeight()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    invoke-virtual {p0, v2}, Lcom/deltaid/iris_demo/IrisMobileDevice;->initParam(Landroid/hardware/Camera$Parameters;)V

    iget-object v3, p0, Lcom/deltaid/iris_demo/IrisMobileDevice;->camera:Landroid/hardware/Camera;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :goto_1
    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/deltaid/iris_demo/IrisMobileDevice;->camera:Landroid/hardware/Camera;

    invoke-virtual {p0}, Lcom/deltaid/iris_demo/IrisMobileDevice;->newFrameBuffer()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/deltaid/iris_demo/IrisMobileDevice;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1, p0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    iget-object v1, p0, Lcom/deltaid/iris_demo/IrisMobileDevice;->camera:Landroid/hardware/Camera;

    invoke-virtual {p0}, Lcom/deltaid/iris_demo/IrisMobileDevice;->getRotation()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    goto :goto_0
.end method

.method printFPS()V
    .locals 10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/deltaid/iris_demo/IrisMobileDevice;->countFPS:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/deltaid/iris_demo/IrisMobileDevice;->countFPS:J

    iget-wide v2, p0, Lcom/deltaid/iris_demo/IrisMobileDevice;->timeFPS:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Camera Preview Frame rate : %2.1f [FPS]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-wide v6, p0, Lcom/deltaid/iris_demo/IrisMobileDevice;->countFPS:J

    long-to-double v6, v6

    const-wide v8, 0x408f400000000000L    # 1000.0

    mul-double/2addr v6, v8

    iget-wide v8, p0, Lcom/deltaid/iris_demo/IrisMobileDevice;->timeFPS:J

    sub-long v8, v0, v8

    long-to-double v8, v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/deltaid/iris_demo/IrisMobileDevice;->countFPS:J

    iput-wide v0, p0, Lcom/deltaid/iris_demo/IrisMobileDevice;->timeFPS:J

    :cond_0
    return-void
.end method

.method public setCameraIdToOpen(I)V
    .locals 0

    iput p1, p0, Lcom/deltaid/iris_demo/IrisMobileDevice;->cameraIdToOpen:I

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    iget-object v0, p0, Lcom/deltaid/iris_demo/IrisMobileDevice;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget v0, p0, Lcom/deltaid/iris_demo/IrisMobileDevice;->cameraIdToOpen:I

    invoke-virtual {p0, v0}, Lcom/deltaid/iris_demo/IrisMobileDevice;->openCamera(I)Z

    :try_start_0
    iget-object v0, p0, Lcom/deltaid/iris_demo/IrisMobileDevice;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    invoke-virtual {p0}, Lcom/deltaid/iris_demo/IrisMobileDevice;->closeCamera()V

    return-void
.end method

.method public testExposure(I)V
    .locals 0

    return-void
.end method

.method public testGain(I)V
    .locals 0

    return-void
.end method
