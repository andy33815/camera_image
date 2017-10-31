.class public Lcom/deltaid/cameratest/CameraView;
.super Landroid/view/SurfaceView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/deltaid/cameratest/CameraView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/deltaid/cameratest/CameraView;->a()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/deltaid/cameratest/CameraView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    :cond_0
    return-void
.end method

.method public setCallback(Landroid/view/SurfaceHolder$Callback;)V
    .locals 1

    invoke-virtual {p0}, Lcom/deltaid/cameratest/CameraView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method
