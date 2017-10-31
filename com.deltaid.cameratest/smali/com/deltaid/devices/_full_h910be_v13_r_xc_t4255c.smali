.class public Lcom/deltaid/devices/_full_h910be_v13_r_xc_t4255c;
.super Lcom/deltaid/iris_demo/IrisMobileDevice;


# static fields
.field public static final cameraResolution:I = 0xef6

.field public static final height:I = 0x438

.field public static final nominalResolution:I = 0x96

.field public static final rotation:I

.field public static final whiteBalance:I = 0x1

.field public static final width:I = 0x780


# instance fields
.field countAeSkip:I

.field private m_exposure:I

.field final max_int_time:I

.field private o_exposure:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "rotated"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb4

    :goto_0
    sput v0, Lcom/deltaid/devices/_full_h910be_v13_r_xc_t4255c;->rotation:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2

    const/16 v1, 0xbb8

    invoke-direct {p0, p1}, Lcom/deltaid/iris_demo/IrisMobileDevice;-><init>(Landroid/hardware/Camera$PreviewCallback;)V

    iput v1, p0, Lcom/deltaid/devices/_full_h910be_v13_r_xc_t4255c;->m_exposure:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/deltaid/devices/_full_h910be_v13_r_xc_t4255c;->o_exposure:I

    iput v1, p0, Lcom/deltaid/devices/_full_h910be_v13_r_xc_t4255c;->max_int_time:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/deltaid/devices/_full_h910be_v13_r_xc_t4255c;->countAeSkip:I

    return-void
.end method

.method private setExposure(I)V
    .locals 10

    const v9, 0xbb800

    const/16 v0, 0x28

    const/4 v8, 0x1

    const/16 v1, 0xbb8

    const/4 v7, 0x0

    if-ge p1, v0, :cond_3

    :goto_0
    if-le v0, v1, :cond_0

    move v0, v1

    :cond_0
    iput v0, p0, Lcom/deltaid/devices/_full_h910be_v13_r_xc_t4255c;->m_exposure:I

    iget-object v2, p0, Lcom/deltaid/devices/_full_h910be_v13_r_xc_t4255c;->camera:Landroid/hardware/Camera;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/deltaid/devices/_full_h910be_v13_r_xc_t4255c;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    if-le v0, v1, :cond_2

    const-string v3, "shutter-speed"

    invoke-virtual {v2, v3, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    const-string v3, "analog-gain"

    div-int v4, v9, v0

    rsub-int v4, v4, 0x100

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    const-string v3, "Mike"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setExposure shutter-speed= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%d"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Mike"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setExposure analog-gain= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%d"

    new-array v5, v8, [Ljava/lang/Object;

    div-int v0, v9, v0

    rsub-int v0, v0, 0x100

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v0, p0, Lcom/deltaid/devices/_full_h910be_v13_r_xc_t4255c;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_1
    return-void

    :cond_2
    const-string v1, "shutter-speed"

    invoke-virtual {v2, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    const-string v1, "analog-gain"

    invoke-virtual {v2, v1, v7}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    const-string v1, "Mike"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " setExposure shutter-speed= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%d"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Mike"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " setExposure analog-gain= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "%d"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    move v0, p1

    goto/16 :goto_0
.end method


# virtual methods
.method public autoExposure(II)V
    .locals 7

    const/4 v6, 0x3

    const-string v0, "Mike"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AutoExposure ShutterSpeed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%d, p90 = %d, median = %d"

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/deltaid/devices/_full_h910be_v13_r_xc_t4255c;->m_exposure:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/deltaid/devices/_full_h910be_v13_r_xc_t4255c;->getSetting()V

    iget v0, p0, Lcom/deltaid/devices/_full_h910be_v13_r_xc_t4255c;->countAeSkip:I

    if-lez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0xfa

    if-ge p1, v0, :cond_2

    const/16 v0, 0xb4

    if-lt p2, v0, :cond_3

    :cond_2
    iget v0, p0, Lcom/deltaid/devices/_full_h910be_v13_r_xc_t4255c;->m_exposure:I

    mul-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    invoke-direct {p0, v0}, Lcom/deltaid/devices/_full_h910be_v13_r_xc_t4255c;->setExposure(I)V

    iput v6, p0, Lcom/deltaid/devices/_full_h910be_v13_r_xc_t4255c;->countAeSkip:I

    goto :goto_0

    :cond_3
    const/16 v0, 0xa0

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/deltaid/devices/_full_h910be_v13_r_xc_t4255c;->m_exposure:I

    mul-int/lit8 v0, v0, 0x6

    div-int/lit8 v0, v0, 0x5

    invoke-direct {p0, v0}, Lcom/deltaid/devices/_full_h910be_v13_r_xc_t4255c;->setExposure(I)V

    iput v6, p0, Lcom/deltaid/devices/_full_h910be_v13_r_xc_t4255c;->countAeSkip:I

    goto :goto_0
.end method

.method protected closeCamera()V
    .locals 0

    invoke-super {p0}, Lcom/deltaid/iris_demo/IrisMobileDevice;->closeCamera()V

    return-void
.end method

.method public getCameraId()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getCameraIds()[I
    .locals 3

    const/4 v2, 0x1

    new-array v0, v2, [I

    const/4 v1, 0x0

    aput v2, v0, v1

    return-object v0
.end method

.method public getCameraResolution()I
    .locals 1

    const/16 v0, 0xef6

    return v0
.end method

.method public getExposureSetting([I[I[I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lt v0, v3, :cond_0

    const/16 v0, 0x28

    aput v0, p1, v2

    :cond_0
    if-eqz p2, :cond_1

    array-length v0, p2

    if-lt v0, v3, :cond_1

    const/16 v0, 0xbb8

    aput v0, p2, v2

    :cond_1
    aget v0, p1, v2

    iget-object v1, p0, Lcom/deltaid/devices/_full_h910be_v13_r_xc_t4255c;->camera:Landroid/hardware/Camera;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/deltaid/devices/_full_h910be_v13_r_xc_t4255c;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "shutter-speed"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v0

    :cond_2
    if-eqz p3, :cond_3

    array-length v1, p3

    if-lt v1, v3, :cond_3

    aput v0, p3, v2

    :cond_3
    return-void
.end method

.method public getGainSetting([I[I[I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lt v0, v3, :cond_0

    aput v2, p1, v2

    :cond_0
    if-eqz p2, :cond_1

    array-length v0, p2

    if-lt v0, v3, :cond_1

    const/16 v0, 0x64

    aput v0, p2, v2

    :cond_1
    aget v0, p1, v2

    iget-object v1, p0, Lcom/deltaid/devices/_full_h910be_v13_r_xc_t4255c;->camera:Landroid/hardware/Camera;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/deltaid/devices/_full_h910be_v13_r_xc_t4255c;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "analog-gain"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v0

    :cond_2
    if-eqz p3, :cond_3

    array-length v1, p3

    if-lt v1, v3, :cond_3

    aput v0, p3, v2

    :cond_3
    return-void
.end method

.method public getHeight()I
    .locals 1

    const/16 v0, 0x438

    return v0
.end method

.method public getNominalResolution()I
    .locals 1

    const/16 v0, 0x96

    return v0
.end method

.method public getRotation()I
    .locals 1

    sget v0, Lcom/deltaid/devices/_full_h910be_v13_r_xc_t4255c;->rotation:I

    return v0
.end method

.method public getSetting()V
    .locals 2

    iget-object v0, p0, Lcom/deltaid/devices/_full_h910be_v13_r_xc_t4255c;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/deltaid/devices/_full_h910be_v13_r_xc_t4255c;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "analog-gain"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    const-string v1, "shutter-speed"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public getWhiteBalance()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getWidth()I
    .locals 1

    const/16 v0, 0x780

    return v0
.end method

.method protected initParam(Landroid/hardware/Camera$Parameters;)V
    .locals 2

    const/16 v0, 0x780

    const/16 v1, 0x438

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    const-string v0, "on"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    const-string v0, "torch"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    return-void
.end method

.method public isPortrait()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isPreviewMirrorImage()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public lockExposure(I)V
    .locals 2

    const/4 v1, -0x1

    if-nez p1, :cond_1

    iget v0, p0, Lcom/deltaid/devices/_full_h910be_v13_r_xc_t4255c;->o_exposure:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/deltaid/devices/_full_h910be_v13_r_xc_t4255c;->o_exposure:I

    invoke-direct {p0, v0}, Lcom/deltaid/devices/_full_h910be_v13_r_xc_t4255c;->setExposure(I)V

    iput v1, p0, Lcom/deltaid/devices/_full_h910be_v13_r_xc_t4255c;->o_exposure:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/deltaid/devices/_full_h910be_v13_r_xc_t4255c;->o_exposure:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/deltaid/devices/_full_h910be_v13_r_xc_t4255c;->m_exposure:I

    iput v0, p0, Lcom/deltaid/devices/_full_h910be_v13_r_xc_t4255c;->o_exposure:I

    :cond_2
    iget v0, p0, Lcom/deltaid/devices/_full_h910be_v13_r_xc_t4255c;->m_exposure:I

    mul-int/2addr v0, p1

    shr-int/lit8 v0, v0, 0x7

    invoke-direct {p0, v0}, Lcom/deltaid/devices/_full_h910be_v13_r_xc_t4255c;->setExposure(I)V

    goto :goto_0
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 1

    iget v0, p0, Lcom/deltaid/devices/_full_h910be_v13_r_xc_t4255c;->countAeSkip:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/deltaid/devices/_full_h910be_v13_r_xc_t4255c;->countAeSkip:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/deltaid/devices/_full_h910be_v13_r_xc_t4255c;->countAeSkip:I

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/deltaid/iris_demo/IrisMobileDevice;->onPreviewFrame([BLandroid/hardware/Camera;)V

    return-void
.end method

.method protected openCamera()Z
    .locals 1

    invoke-super {p0}, Lcom/deltaid/iris_demo/IrisMobileDevice;->openCamera()Z

    const/16 v0, 0x5dc

    iput v0, p0, Lcom/deltaid/devices/_full_h910be_v13_r_xc_t4255c;->m_exposure:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/deltaid/devices/_full_h910be_v13_r_xc_t4255c;->o_exposure:I

    iget v0, p0, Lcom/deltaid/devices/_full_h910be_v13_r_xc_t4255c;->m_exposure:I

    invoke-direct {p0, v0}, Lcom/deltaid/devices/_full_h910be_v13_r_xc_t4255c;->setExposure(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public testExposure(I)V
    .locals 3

    const/16 v0, 0x28

    const/16 v1, 0xbb8

    if-ge p1, v0, :cond_3

    :goto_0
    if-le v0, v1, :cond_0

    move v0, v1

    :cond_0
    iput v0, p0, Lcom/deltaid/devices/_full_h910be_v13_r_xc_t4255c;->m_exposure:I

    iget-object v2, p0, Lcom/deltaid/devices/_full_h910be_v13_r_xc_t4255c;->camera:Landroid/hardware/Camera;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/deltaid/devices/_full_h910be_v13_r_xc_t4255c;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    if-le v0, v1, :cond_2

    const-string v0, "shutter-speed"

    invoke-virtual {v2, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    :goto_1
    iget-object v0, p0, Lcom/deltaid/devices/_full_h910be_v13_r_xc_t4255c;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_1
    return-void

    :cond_2
    const-string v1, "shutter-speed"

    invoke-virtual {v2, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    goto :goto_1

    :cond_3
    move v0, p1

    goto :goto_0
.end method

.method public testGain(I)V
    .locals 3

    const/16 v0, 0x64

    if-gez p1, :cond_2

    const/4 v1, 0x0

    :goto_0
    if-le v1, v0, :cond_1

    :goto_1
    iget-object v1, p0, Lcom/deltaid/devices/_full_h910be_v13_r_xc_t4255c;->camera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/deltaid/devices/_full_h910be_v13_r_xc_t4255c;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "analog-gain"

    invoke-virtual {v1, v2, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/deltaid/devices/_full_h910be_v13_r_xc_t4255c;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v1, p1

    goto :goto_0
.end method
