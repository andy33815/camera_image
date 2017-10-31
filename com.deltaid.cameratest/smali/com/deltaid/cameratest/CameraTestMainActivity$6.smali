.class Lcom/deltaid/cameratest/CameraTestMainActivity$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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

    iput-object p1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$6;->a:Lcom/deltaid/cameratest/CameraTestMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$6;->a:Lcom/deltaid/cameratest/CameraTestMainActivity;

    iget-object v0, v0, Lcom/deltaid/cameratest/CameraTestMainActivity;->H:[I

    iget-object v1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$6;->a:Lcom/deltaid/cameratest/CameraTestMainActivity;

    invoke-virtual {v1, p2}, Lcom/deltaid/cameratest/CameraTestMainActivity;->b(I)I

    move-result v1

    aput v1, v0, v3

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$6;->a:Lcom/deltaid/cameratest/CameraTestMainActivity;

    iget-object v0, v0, Lcom/deltaid/cameratest/CameraTestMainActivity;->r:Lcom/deltaid/iris_demo/IrisMobileDevice;

    iget-object v1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$6;->a:Lcom/deltaid/cameratest/CameraTestMainActivity;

    iget-object v1, v1, Lcom/deltaid/cameratest/CameraTestMainActivity;->H:[I

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/deltaid/iris_demo/IrisMobileDevice;->testGain(I)V

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$6;->a:Lcom/deltaid/cameratest/CameraTestMainActivity;

    iget-object v0, v0, Lcom/deltaid/cameratest/CameraTestMainActivity;->f:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$6;->a:Lcom/deltaid/cameratest/CameraTestMainActivity;

    iget-object v2, v2, Lcom/deltaid/cameratest/CameraTestMainActivity;->H:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$6;->a:Lcom/deltaid/cameratest/CameraTestMainActivity;

    iget-object v0, v0, Lcom/deltaid/cameratest/CameraTestMainActivity;->f:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$6;->a:Lcom/deltaid/cameratest/CameraTestMainActivity;

    iget-object v1, v1, Lcom/deltaid/cameratest/CameraTestMainActivity;->h:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$6;->a:Lcom/deltaid/cameratest/CameraTestMainActivity;

    iget-object v0, v0, Lcom/deltaid/cameratest/CameraTestMainActivity;->f:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$6;->a:Lcom/deltaid/cameratest/CameraTestMainActivity;

    iget-object v1, v1, Lcom/deltaid/cameratest/CameraTestMainActivity;->h:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method
