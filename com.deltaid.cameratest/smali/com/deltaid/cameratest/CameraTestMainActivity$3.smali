.class Lcom/deltaid/cameratest/CameraTestMainActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deltaid/cameratest/CameraTestMainActivity;->a(Landroid/widget/RadioGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:[I

.field final synthetic b:Lcom/deltaid/cameratest/CameraTestMainActivity;


# direct methods
.method constructor <init>(Lcom/deltaid/cameratest/CameraTestMainActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$3;->b:Lcom/deltaid/cameratest/CameraTestMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$3;->b:Lcom/deltaid/cameratest/CameraTestMainActivity;

    iget-object v0, v0, Lcom/deltaid/cameratest/CameraTestMainActivity;->r:Lcom/deltaid/iris_demo/IrisMobileDevice;

    invoke-virtual {v0}, Lcom/deltaid/iris_demo/IrisMobileDevice;->getCameraIds()[I

    move-result-object v0

    iput-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$3;->a:[I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$3;->b:Lcom/deltaid/cameratest/CameraTestMainActivity;

    iget-boolean v0, v0, Lcom/deltaid/cameratest/CameraTestMainActivity;->I:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$3;->b:Lcom/deltaid/cameratest/CameraTestMainActivity;

    invoke-virtual {v0}, Lcom/deltaid/cameratest/CameraTestMainActivity;->b()V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$3;->a:[I

    aget v0, v1, v0

    iget-object v1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$3;->b:Lcom/deltaid/cameratest/CameraTestMainActivity;

    iget-object v1, v1, Lcom/deltaid/cameratest/CameraTestMainActivity;->r:Lcom/deltaid/iris_demo/IrisMobileDevice;

    invoke-virtual {v1, v0}, Lcom/deltaid/iris_demo/IrisMobileDevice;->setCameraIdToOpen(I)V

    check-cast p1, Landroid/widget/RadioButton;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$3;->b:Lcom/deltaid/cameratest/CameraTestMainActivity;

    invoke-virtual {v0}, Lcom/deltaid/cameratest/CameraTestMainActivity;->b()V

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity$3;->b:Lcom/deltaid/cameratest/CameraTestMainActivity;

    invoke-virtual {v0}, Lcom/deltaid/cameratest/CameraTestMainActivity;->a()V

    return-void
.end method
