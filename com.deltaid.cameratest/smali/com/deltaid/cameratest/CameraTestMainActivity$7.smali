.class Lcom/deltaid/cameratest/CameraTestMainActivity$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deltaid/cameratest/CameraTestMainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/deltaid/cameratest/CameraTestMainActivity;


# direct methods
.method constructor <init>(Lcom/deltaid/cameratest/CameraTestMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$7;->a:Lcom/deltaid/cameratest/CameraTestMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$7;->a:Lcom/deltaid/cameratest/CameraTestMainActivity;

    iget-object v0, v0, Lcom/deltaid/cameratest/CameraTestMainActivity;->r:Lcom/deltaid/iris_demo/IrisMobileDevice;

    invoke-virtual {v0, v2}, Lcom/deltaid/iris_demo/IrisMobileDevice;->testGain(I)V

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$7;->a:Lcom/deltaid/cameratest/CameraTestMainActivity;

    iget-object v0, v0, Lcom/deltaid/cameratest/CameraTestMainActivity;->d:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$7;->a:Lcom/deltaid/cameratest/CameraTestMainActivity;

    iget-object v0, v0, Lcom/deltaid/cameratest/CameraTestMainActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$7;->a:Lcom/deltaid/cameratest/CameraTestMainActivity;

    iget-object v0, v0, Lcom/deltaid/cameratest/CameraTestMainActivity;->r:Lcom/deltaid/iris_demo/IrisMobileDevice;

    iget-object v1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$7;->a:Lcom/deltaid/cameratest/CameraTestMainActivity;

    iget-object v1, v1, Lcom/deltaid/cameratest/CameraTestMainActivity;->F:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/deltaid/iris_demo/IrisMobileDevice;->testGain(I)V

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$7;->a:Lcom/deltaid/cameratest/CameraTestMainActivity;

    iget-object v0, v0, Lcom/deltaid/cameratest/CameraTestMainActivity;->d:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$7;->a:Lcom/deltaid/cameratest/CameraTestMainActivity;

    iget-object v0, v0, Lcom/deltaid/cameratest/CameraTestMainActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_0
.end method
